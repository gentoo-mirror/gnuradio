# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="GNU Radio pager encoder"
HOMEPAGE="https://github.com/unsynchronized/gr-mixalot"

EGIT_REPO_URI="https://github.com/unsynchronized/gr-mixalot"
KEYWORDS=""

RDEPEND="net-wireless/gr-osmosdr sci-libs/itpp"

inherit gnuradio git-r3
