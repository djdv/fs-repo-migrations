module github.com/ipfs/fs-repo-migrations/ipfs-2-to-3/migration

go 1.12

replace github.com/ipfs/fs-repo-migrations => ./../..

require (
	github.com/ipfs/fs-repo-migrations v0.0.0-00010101000000-000000000000
	github.com/ipfs/go-datastore v0.0.3
	github.com/ipfs/go-ipfs v0.4.19
	golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3
)
