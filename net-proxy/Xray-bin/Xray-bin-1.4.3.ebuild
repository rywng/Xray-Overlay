# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Xray, Penetrates Everything."
HOMEPAGE="https://github.com/XTLS/Xray-core"
SRC_URI="https://github.com/XTLS/Xray-core/releases/download/v${PV}/Xray-linux-64.zip"

LICENSE="MPL-2.0 CC-BY-SA-4.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="app-arch/unzip"

src_unpack() {
	if [ -n ${A} ]; then
		unpack ${A}
	fi
	S=${WORKDIR}
}

src_install(){
	dobin xray

	insinto /usr/share/xray
	doins *.dat

	insinto /etc/xray
	newins "${FILESDIR}/config.json" config.json

	newinitd "${FILESDIR}/xray.initd" xray
}
