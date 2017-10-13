# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: gnuradio.eclass
# @MAINTAINER:
# hololeap <hololeap@gmail.com>
# @BLURB: Eclass for GNURadio packages/addons
# @DESCRIPTION:
# Abstracts away a few common motifs when writing ebuilds
# for GNURadio packages/addons.

case "${EAPI:-0}" in
	5|6)
		;;
	*)
		die "Unsupported EAPI=${EAPI} (unknown) for ${ECLASS}"
		;;
esac

PYTHON_COMPAT=( python2_7 )

inherit cmake-utils python-single-r1

EXPORT_FUNCTIONS src_prepare src_configure

LICENSE="GPL-3"
SLOT="0/${PV}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

# @ECLASS-VARIABLE: GNURADIO_USE_DEPS
# @DEFAULT_UNSET
# @DESCRIPTION:
# An array of USE flags dependencies that need to be enabled for 
# net-wireless/gnuradio. WARNING: If you want this variable to work, 
# you MUST define it before inheriting this eclass.

# @FUNCTION: _gnuradio_join_use_deps
# @USAGE: _gnuradio_join_use_deps
# @RETURN: A comma-seperated USE dependency value
# @INTERNAL
# @DESCRIPTION:
# Join any custom USE dependencies (set using $GNURADIO_USE_DEPS) and
# $PYTHON_USEDEP.

_gnuradio_join_use_deps() {
	local use_deps=${GNURADIO_USE_DEPS[@]}
    use_deps+=( "${PYTHON_USEDEP}" )

	# Join the elements of the array with commas
	use_deps="$(printf ",%s" "${use_deps[@]}")"
	echo -n "${use_deps:1}"
}

RDEPEND=">=net-wireless/gnuradio-3.7_rc:0=[$(_gnuradio_join_use_deps)]
	dev-libs/boost:=[${PYTHON_USEDEP}]
	${PYTHON_DEPS}"

DEPEND="${RDEPEND}
	dev-lang/swig:0"

gnuradio_src_prepare() {
    debug-print-function ${FUNCNAME} "$@"

	[[ ${EAPI:-0} -eq 6 ]] && default

	cmake-utils_src_prepare

	#although cppunit is not used, it fails if it isn't there, fix it
	sed -i 's#FATAL_ERROR "CppUnit#MESSAGE "CppUnit#' CMakeLists.txt || die
	sed -i '/${CPPUNIT_INCLUDE_DIRS}/d' CMakeLists.txt || die
	sed -i '/${CPPUNIT_LIBRARY_DIRS}/d' CMakeLists.txt || die
	
}

gnuradio_src_configure() {
    debug-print-function ${FUNCNAME} "$@"

	local mycmakeargs=( -DPYTHON_EXECUTABLE="${PYTHON}" )
	cmake-utils_src_configure
}

