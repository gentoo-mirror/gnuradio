# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="FFmpeg and gnu radio integration"
HOMEPAGE="https://github.com/osh/gr-mediatools"

EGIT_REPO_URI="https://github.com/osh/gr-mediatools"
KEYWORDS=""

RDEPEND="media-video/libav"

inherit gnuradio git-r3
