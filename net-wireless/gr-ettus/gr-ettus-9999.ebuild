# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Out-of-tree Module for Experimental Ettus Research Features"
HOMEPAGE="https://github.com/EttusResearch/gr-ettus"

EGIT_REPO_URI="https://github.com/EttusResearch/gr-ettus"
KEYWORDS=""

RDEPEND="net-wireless/uhd"

inherit gnuradio git-r3
