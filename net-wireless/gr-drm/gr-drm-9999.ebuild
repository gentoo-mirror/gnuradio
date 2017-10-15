# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="DRM transmitter using GNU Radio"
HOMEPAGE="https://github.com/kit-cel/gr-drm"

EGIT_REPO_URI="https://github.com/kit-cel/gr-drm"
KEYWORDS=""

RDEPEND="net-wireless/uhd media-libs/faac media-libs/faad2 net-wireless/gr-compat"

inherit gnuradio git-r3
