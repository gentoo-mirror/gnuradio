# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Multichannel POCSAG receiver for gnuradio"
HOMEPAGE="https://github.com/bafe/gr-pocsag"

EGIT_REPO_URI="https://github.com/bafe/gr-pocsag"
KEYWORDS=""

RDEPEND="net-wireless/gr-compat"

inherit gnuradio git-r3
