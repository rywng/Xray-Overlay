# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Experimental terminal mail client"
HOMEPAGE="https://meli.delivery/"
SRC_URI="https://github.com/meli/meli/releases/download/alpha-0.6.2/meli-0.6.2-linux-amd64.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	if [[ -n ${A} ]]; then
		unpack ${A}
	fi
	S=${WORKDIR}
}


src_install(){
	dobin meli
}
