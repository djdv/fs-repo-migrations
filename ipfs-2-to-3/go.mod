module github.com/ipfs/fs-repo-migrations/ipfs-2-to-3

go 1.12

replace github.com/ipfs/fs-repo-migrations => ./..

require (
	github.com/Sirupsen/logrus v0.7.1
	github.com/briantigerchow/pubsub v0.0.0-20141124064230-39ce5f556423
	github.com/chuckpreslar/inflect v0.0.0-20140910190242-2734b686192b
	github.com/coreos/go-semver v0.0.0-20140704231441-6fe83ccda8fb
	github.com/fd/go-nat v0.0.0-20141105120422-50e7633d5f27
	github.com/gogo/protobuf v0.0.0-20150203141210-bc946d07d101
	github.com/h2so5/utp v0.0.0-20141118033049-654d875bb65e
	github.com/hashicorp/golang-lru v0.0.0-20141106234903-253b2dc1ca8b
	github.com/hashicorp/yamux v0.0.0-20140910215746-9feabe6854fa
	github.com/huin/goupnp v0.0.0-20141211211549-223008361153
	github.com/ipfs/go-datastore v0.0.0-20150501082316-751a1b4ad40b
	github.com/ipfs/go-ipfs v0.0.0-20160112162113-72753e54606f
	github.com/jackpal/go-nat-pmp v0.0.0-20140822041029-a45aa3d54aef
	github.com/jbenet/go-base58 v0.0.0-20140705234214-568a28d73fd9
	github.com/jbenet/go-ctxgroup v0.0.0-20150223215126-c14598396fa3
	github.com/jbenet/go-msgio v0.0.0-20141229153302-dbae89193876
	github.com/jbenet/go-os-rename v0.0.0-20150428075126-3ac97f61ef67
	github.com/jbenet/go-peerstream v0.0.0-20150124141623-bbe2a6461aa8
	github.com/jbenet/go-temp-err-catcher v0.0.0-20150111203318-c531232018e6
	github.com/jbenet/goprocess v0.0.0-20150126214018-060ad098994e
	github.com/libp2p/go-reuseport v0.0.0-20150124001615-096958438ae3
	github.com/libp2p/go-sockaddr v0.0.0-20150120000437-da304f94eea1
	github.com/mitchellh/go-homedir v0.0.0-20140913165950-7d2d8c8a4e07
	github.com/mtchavez/jenkins v0.0.0-20140131062605-5a816af6ef21
	github.com/multiformats/go-multiaddr v0.0.0-20150120221649-c13f11bbfe64
	github.com/multiformats/go-multiaddr-net v0.0.0-20150119062046-eae26b653a87
	github.com/multiformats/go-multihash v0.0.0-20150120195812-4e09420ceb2d
	github.com/pborman/uuid v0.0.0-20140414200731-bd9fbafc7a90
	github.com/steakknife/hamming v0.0.0-20150417194207-8bad99011016
	github.com/syndtr/goleveldb v0.0.0-20141201005259-871eee0a7546
	github.com/syndtr/gosnappy v0.0.0-20130220111603-ce8acff4829e
	github.com/whyrusleeping/go-logging v0.0.0-20150422220237-128b9855511a
	github.com/whyrusleeping/go-metrics v0.0.0-20150328213920-1cd8009604ec
	golang.org/x/crypto v0.0.0-20150318170425-b7d6bf2c6154
	golang.org/x/net v0.0.0-20150304225813-6dc0abcce256
	gopkg.in/natefinch/lumberjack.v2 v2.0.0-20140725205133-d28785c2f27c
)
