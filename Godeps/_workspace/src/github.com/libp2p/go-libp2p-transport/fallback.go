package transport

import (
	"context"
	"fmt"

	ma "github.com/ipfs/fs-repo-migrations/Godeps/_workspace/src/github.com/multiformats/go-multiaddr"
	manet "github.com/ipfs/fs-repo-migrations/Godeps/_workspace/src/github.com/multiformats/go-multiaddr-net"
	mafmt "github.com/ipfs/fs-repo-migrations/Godeps/_workspace/src/github.com/whyrusleeping/mafmt"
)

type FallbackDialer struct {
	madialer manet.Dialer
}

func (fbd *FallbackDialer) Matches(a ma.Multiaddr) bool {
	return mafmt.TCP.Matches(a)
}

func (fbd *FallbackDialer) Dial(a ma.Multiaddr) (Conn, error) {
	return fbd.DialContext(context.Background(), a)
}

func (fbd *FallbackDialer) DialContext(ctx context.Context, a ma.Multiaddr) (Conn, error) {
	if mafmt.TCP.Matches(a) {
		return fbd.tcpDial(ctx, a)
	}
	return nil, fmt.Errorf("cannot dial %s with fallback dialer", a)
}

func (fbd *FallbackDialer) tcpDial(ctx context.Context, raddr ma.Multiaddr) (Conn, error) {
	var c manet.Conn
	var err error
	c, err = fbd.madialer.DialContext(ctx, raddr)

	if err != nil {
		return nil, err
	}

	return &ConnWrap{
		Conn: c,
	}, nil
}

var _ Dialer = (*FallbackDialer)(nil)
