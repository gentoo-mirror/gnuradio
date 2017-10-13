# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Set of tools for receiving information transmitted by GSM equipment/devices"
HOMEPAGE="https://github.com/ptrkrysik/gr-gsm"
EGIT_REPO_URI="https://github.com/ptrkrysik/gr-gsm"

KEYWORDS=""

DEPEND="net-libs/libosmocore:=
	net-wireless/gr-osmosdr:="

inherit gnuradio git-r3
