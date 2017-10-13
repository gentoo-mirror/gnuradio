# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Set of tools for receiving information transmitted by GSM equipment/devices"
HOMEPAGE="https://github.com/ptrkrysik/gr-gsm"
EGIT_REPO_URI="https://github.com/ptrkrysik/gr-gsm"

KEYWORDS=""

DEPEND="net-libs/libosmocore
	net-wireless/gr-osmosdr"

inherit gnuradio git-r3

#src_prepare() {
#	sed -i "s|gr-grgsm|gr-gsm|g" CMakeLists.txt
#fixme below
#	sed -i "s|\${GR_DOC_DIR}\/\${CMAKE_PROJECT_NAME}|${EPREFIX}/usr/share/doc/${PF}|g" CMakeLists.txt
#}

#Fixme: GR_PKG_DOC_DIR is not getting set
#		-DGR_PKG_DOC_DIR="${EPREFIX}/usr/share/doc/${PF}"
#src_configure() {
#	mycmakeargs=(
#		$(cmake-utils_use_enable doc DOXYGEN)
#		#fix wierd GrPython.cmake
#		-DPYTHON_EXECUTABLE=${PYTHON}
#	)
#	cmake-utils_src_configure
#}
