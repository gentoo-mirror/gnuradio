# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Implementation of the APCO Project 25 digital radio standard"
HOMEPAGE="git://git.osmocom.org/op25"

EGIT_REPO_URI="git://git.osmocom.org/op25"
KEYWORDS=""

RDEPEND="net-libs/libpcap net-wireless/gr-osmosdr sci-libs/itpp"

inherit gnuradio git-r3
