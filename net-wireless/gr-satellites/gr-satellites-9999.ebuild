# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="GNU Radio decoders for several Amateur satellites"
HOMEPAGE="https://github.com/daniestevez/gr-satellites"

EGIT_REPO_URI="https://github.com/daniestevez/gr-satellites"
KEYWORDS=""

RDEPEND="virtual/libfec virtual/pyconstruct"

inherit gnuradio git-r3
