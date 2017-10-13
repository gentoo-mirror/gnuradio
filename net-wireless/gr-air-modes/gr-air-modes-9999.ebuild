# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A complete Mode S and ADS-B receiver for GNURadio"
HOMEPAGE="https://github.com/bistromath/gr-air-modes"

EGIT_REPO_URI="https://github.com/bistromath/gr-air-modes"
KEYWORDS=""

IUSE="flightgear gui uhd"
RDEPEND="net-wireless/gr-osmosdr:=
	dev-python/pyzmq:=
	>=dev-db/sqlite-3.5.0_alpha:3=
	flightgear? ( sci-libs/scipy:= dev-python/numpy:= )
	uhd? ( >=net-wireless/uhd-3.4.0_alpha:= )
	gui? ( dev-python/PyQt4:=[webkit] dev-python/pyqwt:= )"

inherit gnuradio git-r3

src_install() {
	cmake-utils_src_install

	rm -v "${D}/usr/bin/uhd_modes.py"
	use gui || rm -v "${D}/usr/bin/modes_gui"
}
