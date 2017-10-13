# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Gnuradio baz"
HOMEPAGE="https://github.com/balint256/gr-baz.git"
EGIT_REPO_URI="https://github.com/balint256/gr-baz.git"

IUSE="armadillo rtlsdr uhd"

RDEPEND="armadillo? ( sci-libs/armadillo:= )
	rtlsdr? ( virtual/libusb:1= )
	uhd? ( net-wireless/uhd:= )"

inherit gnuradio git-r3

#src_install() {
#	cmake-utils_src_install
#	insinto /usr/share/${PN}
#	doins -r samples/*
#}
