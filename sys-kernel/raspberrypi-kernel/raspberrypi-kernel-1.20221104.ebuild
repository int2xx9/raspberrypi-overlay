# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Kernel for Raspberry Pi"
HOMEPAGE="https://github.com/raspberrypi/linux"
SRC_URI="https://github.com/raspberrypi/linux/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="${PV}"
KEYWORDS="~arm64"
IUSE=""

DEPEND="sys-devel/bc"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	destdir="${D}/usr/src/raspberrypi-kernel-${PV}"
	mkdir -p "$destdir"
	cp -r "${WORKDIR}/linux-${PV}/." "$destdir"
}

