# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="RTSA-like spectrum visualization using OpenCL and OpenGL"
HOMEPAGE="git://git.osmocom.org/gr-fosphor"

EGIT_REPO_URI="git://git.osmocom.org/gr-fosphor"
KEYWORDS=""

RDEPEND="media-libs/glfw"

inherit gnuradio git-r3
