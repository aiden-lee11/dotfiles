#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Check if Homebrew is installed.
if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew is not installed. Please install Homebrew first: https://brew.sh"
    exit 1
fi

echo "Updating Homebrew..."
brew update

# List of Homebrew formulae to install.
formulae=(
    act
    gsettings-desktop-schemas
    liblqr
    luajit
    railway
    adwaita-icon-theme
    gtk+3
    libmagic
    luv
    raylib
    aom
    gtk-mac-integration
    libnghttp2
    lz4
    readline
    at-spi2-core
    harfbuzz
    libnotify
    lzo
    ripgrep
    awscli
    heroku
    libomp
    m4
    screenresolution
    bat
    hicolor-icon-theme
    libpng
    meson
    shared-mime-info
    brotli
    highway
    libpthread-stubs
    mpdecimal
    sphinx-doc
    c-ares
    icu4c@76
    libraw
    ncurses
    tesseract
    ca-certificates
    imagemagick
    librsvg
    tmux
    cairo
    imath
    libsm
    neofetch
    tokei
    certifi
    intltool
    libsodium
    neovim
    tree
    cffi
    jasper
    libssh2
    neovim-remote
    tree-sitter
    cmake
    jbig2dec
    libtiff
    ninja
    cryptography
    jpeg-turbo
    libtool
    node
    unibilium
    dbus
    jpeg-xl
    libunistring
    oniguruma
    utf8proc
    desktop-file-utils
    jq
    libuv
    openexr
    virtualenv
    expat
    json-c
    libvmaf
    openjdk
    viu
    flyctl
    json-glib
    libvterm
    openjdk@17
    webp
    fontconfig
    jupyterlab
    libx11
    openjpeg
    wget
    freetype
    krb5
    libxau
    openssl@3
    x265
    fribidi
    leptonica
    libxcb
    pandoc
    xclip
    fzf
    libarchive
    libxdmcp
    pandoc-plot
    xorgproto
    gdk-pixbuf
    libb2
    libxext
    pango
    xz
    geckodriver
    libde265
    libxfixes
    pcre2
    z3
    gettext
    libdeflate
    libxi
    pixman
    zathura
    ghostscript
    libepoxy
    libxmu
    pkgconf
    zeromq
    giflib
    libevent
    libxrender
    postgresql@14
    zig
    girara
    libgit2@1.7
    libxt
    pycparser
    zls
    git
    libheif
    libxtst
    python-packaging
    zsh-autocomplete
    glib
    libice
    libyaml
    python@3.11
    zstd
    graphite2
    libidn
    little-cms2
    python@3.12
    grip
    libidn2
    lpeg
    python@3.13
)

echo "Installing Homebrew formulae..."
for formula in "${formulae[@]}"; do
    echo "Installing ${formula}..."
    brew install "$formula" || echo "${formula} might already be installed."
done

# List of Homebrew casks to install.
casks=(
    betterdisplay
    docker
    font-iosevka
    mactex
    skim
    unnaturalscrollwheels
)

echo "Installing Homebrew casks..."
for cask in "${casks[@]}"; do
    echo "Installing ${cask}..."
    brew install --cask "$cask" || echo "${cask} might already be installed."
done

echo "All installations complete!"
