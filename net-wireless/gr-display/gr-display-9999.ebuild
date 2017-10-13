# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 )

inherit gnuradio git-r3

DESCRIPTION="QT based PNG display sink for gnuradio"
HOMEPAGE="https://github.com/dl1ksv/gr-display"

EGIT_REPO_URI="https://github.com/dl1ksv/gr-display"
KEYWORDS=""

DEPEND=">=net-wireless/gnuradio-3.7_rc:0=[qt4,${PYTHON_USEDEP}]"
