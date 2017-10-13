# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )

DESCRIPTION="GNU Radio block for ACARS transmissions"
HOMEPAGE="https://github.com/antoinet/gr-acars2"

EGIT_REPO_URI="https://github.com/antoinet/gr-acars2"
KEYWORDS=""

inherit gnuradio git-r3

#src_configure() {
#	sed -i '0,/include\/acars2/s/include\/acars2/include\/gnuradio\/acars2/' ${WORKDIR}/${P}/CMakeLists.txt || die 'sed failed'
#	cmake-utils_src_configure
#}
