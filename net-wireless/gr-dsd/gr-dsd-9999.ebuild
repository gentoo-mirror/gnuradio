# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="GNU Radio block for Digital Speech Decoder"
HOMEPAGE="https://github.com/argilo/gr-dsd"

EGIT_REPO_URI="https://github.com/argilo/gr-dsd"
KEYWORDS=""

DEPEND="media-libs/libsndfile:=
	sci-libs/itpp:=
	>=dev-libs/log4cpp-1.1:="

inherit gnuradio git-r3
