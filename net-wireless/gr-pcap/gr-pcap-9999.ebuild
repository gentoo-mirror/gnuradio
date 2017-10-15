# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="PCAP recording and playback"
HOMEPAGE="https://github.com/osh/gr-pcap"

EGIT_REPO_URI="https://github.com/osh/gr-pcap"
KEYWORDS=""

RDEPEND="net-analyzer/scapy:="

inherit gnuradio git-r3
