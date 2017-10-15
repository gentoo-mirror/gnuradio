# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Outernet decoder"
HOMEPAGE="https://github.com/daniestevez/gr-outernet"

EGIT_REPO_URI="https://github.com/daniestevez/gr-outernet"
KEYWORDS=""

RDEPEND="net-wireless/gr-kiss"

inherit gnuradio git-r3
