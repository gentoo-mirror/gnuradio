# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="OpenCL/GPU-enabled common blocks for GNURadio"
HOMEPAGE="https://github.com/ghostop14/gr-clenabled"

EGIT_REPO_URI="https://github.com/ghostop14/gr-clenabled"
KEYWORDS=""

RDEPEND="virtual/opencl"

inherit gnuradio git-r3
