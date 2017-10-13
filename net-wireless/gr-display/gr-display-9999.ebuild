# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 )

inherit cmake-utils python-single-r1 git-r3

DESCRIPTION="Some GNU Radio blocks that bastianbl uses"
HOMEPAGE="https://github.com/rftap/gr-rftap"

EGIT_REPO_URI="https://github.com/bastibl/gr-foo.git"
KEYWORDS=""

LICENSE="GPL-3"
SLOT="0/${PV}"

RDEPEND=">=net-wireless/gnuradio-3.7_rc:0=[qt4,${PYTHON_USEDEP}]
	${PYTHON_DEPS}"
	#dev-libs/boost:=[${PYTHON_USEDEP}]
	#net-wireless/uhd:=[${PYTHON_USEDEP}]
DEPEND="${RDEPEND}"
#	dev-lang/swig:0"
#cppunit is listed in cmake, but only needed for tests and there are no tests
#	dev-util/cppunit"

#REQUIRED_USE="${PYTHON_REQUIRED_USE}"

#src_prepare() {
	#although cppunit is not used, it fails if it isn't there, fix it
#	sed -i 's#FATAL_ERROR "CppUnit#MESSAGE "CppUnit#' CMakeLists.txt
#	sed -i '/${CPPUNIT_INCLUDE_DIRS}/d' CMakeLists.txt
#	sed -i '/${CPPUNIT_LIBRARY_DIRS}/d' CMakeLists.txt
#}

#src_configure() {
#	mycmakeargs=( -DPYTHON_EXECUTABLE="${PYTHON}" )
#	cmake-utils_src_configure
#}
