# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: gnuradio.eclass
# @MAINTAINER:
# hololeap <hololeap@gmail.com>
# @BLURB: Eclass for GNURadio packages/addons
# @DESCRIPTION:
# Abstracts away a few common motifs when writing ebuilds
# for GNURadio packages/addons.

inherit cmake-utils python-single-r1

case "${EAPI:-0}" in
	5|6)
		;;
	*)
		die "Unsupported EAPI=${EAPI} (unknown) for ${ECLASS}"
		;;
esac

EXPORT_FUNCTIONS src_prepare src_configure

PYTHON_COMPAT=( python2_7 )
LICENSE="GPL-3"
SLOT="0/${PV}"

RDEPEND=">=net-wireless/gnuradio-3.7_rc:0=[${PYTHON_USEDEP}]
	dev-libs/boost:=[${PYTHON_USEDEP}]
	${PYTHON_DEPS}"

DEPEND="${RDEPEND}
	dev-lang/swig:0"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

gnuradio_src_prepare() {
	if [[ ${EAPI:-0} -eq 6 ]]; then default; fi

	cmake-utils_src_prepare

	#although cppunit is not used, it fails if it isn't there, fix it
	sed -i 's#FATAL_ERROR "CppUnit#MESSAGE "CppUnit#' CMakeLists.txt
	sed -i '/${CPPUNIT_INCLUDE_DIRS}/d' CMakeLists.txt
	sed -i '/${CPPUNIT_LIBRARY_DIRS}/d' CMakeLists.txt
	
}

gnuradio_src_configure() {
	mycmakeargs=( -DPYTHON_EXECUTABLE="${PYTHON}" )
	cmake-utils_src_configure
}

