# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Open source ACARS decoder and ACARS Parser"
HOMEPAGE="https://github.com/mmmaaaxxx/SUPACARS"

EGIT_REPO_URI="https://github.com/mmmaaaxxx/SUPACARS"
KEYWORDS=""

RDEPEND="net-wireless/rtl-sdr"

inherit gnuradio git-r3
