# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Direction of arrival Algorithms - Intended to be used with TwinRX"
HOMEPAGE="https://github.com/EttusResearch/gr-doa"

EGIT_REPO_URI="https://github.com/EttusResearch/gr-doa"
KEYWORDS=""

RDEPEND="net-wireless/uhd sci-libs/armadillo sci-libs/scipy"

inherit gnuradio git-r3
