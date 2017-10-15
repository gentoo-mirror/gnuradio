# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="GNU Radio message based burst FSK Transmitter and Receiver"
HOMEPAGE="https://github.com/osh/gr-fsk-burst"

EGIT_REPO_URI="https://github.com/osh/gr-fsk-burst"
KEYWORDS=""

RDEPEND="net-wireless/gr-burst net-wireless/gr-mapper net-wireless/gr-eventstream net-wireless/gr-pyqt"

inherit gnuradio git-r3
