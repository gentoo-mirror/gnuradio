# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="gnuradio fosphor block (GPU spectrum display)"
HOMEPAGE="https://sdr.osmocom.org/trac/wiki/fosphor"

SRC_URI=""
EGIT_REPO_URI="https://github.com/osmocom/gr-fosphor"
KEYWORDS=""

IUSE="+glfw qt4"

RDEPEND="qt4? (
		dev-qt/qtcore:4
		dev-qt/qtgui:4
		dev-qt/qtopengl:4
	)
	media-libs/freetype
	glfw? ( >=media-libs/glfw-3 )
	virtual/opencl
	virtual/opengl"

inherit gnuradio git-r3

src_configure() {
	## tries to run OpenCL test program, but failing doesn't hurt
	#addpredict /dev/dri

	local mycmakeargs=(
		-DENABLE_GLFW=$(usex glfw)
		-DENABLE_QT=$(usex qt4)
		-DENABLE_WX=OFF
	)
	cmake-utils_src_configure
}
