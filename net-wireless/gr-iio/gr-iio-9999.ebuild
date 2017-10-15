# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="GNU Radio IIO Blocks"
HOMEPAGE="https://github.com/analogdevicesinc/gr-iio"

EGIT_REPO_URI="https://github.com/analogdevicesinc/gr-iio"
KEYWORDS=""

RDEPEND="net-libs/libiio:=
	net-libs/libad9361:="

DEPEND="${RDEPEND}
	sys-devel/flex:=
	sys-devel/bison:="

inherit gnuradio git-r3
