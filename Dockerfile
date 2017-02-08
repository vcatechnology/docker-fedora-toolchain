FROM vcatechnology/fedora-ci
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Echo the PATH
RUN echo "PATH=${PATH}"

# Build-time metadata as defined at http://label-schema.org
ARG PROJECT_NAME
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="$PROJECT_NAME" \
      org.label-schema.description="An up-to-date Fedora image that has VCA tool chain packages installed" \
      org.label-schema.url="https://getfedora.org/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/vcatechnology/docker-fedora-toolchain" \
      org.label-schema.vendor="VCA Technology" \
      org.label-schema.version=$VERSION \
      org.label-schema.license=MIT \
      org.label-schema.schema-version="1.0"

# Install useful packages
RUN sudo vca-install-package \
  gcc \
  gcc-c++ \
  libtool \
  procps-ng \
  make \
  rpm-build \
  rpmlint \
  p7zip \
  libitm-devel \
  doxygen \
  graphviz \
  mscgen \
  check-devel \
  valgrind \
  cppcheck \
  cppunit-devel \
  cmake \
  pcre-devel \
  zlib-devel \
  protobuf-devel \
  pandoc \
  qt-devel \
  yasm \
  libjpeg-turbo-devel \
  opencv-devel \
  libicu-devel \
  boost-devel \
  jansson-devel \
  openssl-devel \
  flex \
  bison \
  libntlm-devel \
  tinyxml-devel \
  libffi-devel \
  xz-devel \
  xz-lzma-compat \
  libxml2-devel \
  gettext-devel \
  glib2-devel \
  sqlite-devel \
  intltool \
  libsoup-devel \
  gmp-devel \
  nettle-devel \
  orc-compiler \
  orc-devel \
  gstreamer1-devel \
  gstreamer1-plugins-base-devel \
  gstreamer1-plugins-good \
  gstreamer1-rtsp-server-devel \
  libsigc++20-devel \
  libidn-devel \
  gnutls-devel \
  libcurl-devel \
  libattr-devel \
  libcap-devel \
  libuuid-devel \
  libblkid-devel \
  libmount-devel \
  systemd-devel \
  libgudev-devel \
  dbus-devel \
  ncurses-devel \
  ncurses-term \
  dialog-devel \
  popt-devel \
  libgpg-error-devel \
  libgcrypt-devel \
  alsa-lib-devel \
  alsa-utils \
  libuv-devel \
  libndp-devel \
  nodejs \
  npm \
  nspr-devel \
  python-devel \
  nasm \
  pixman-devel \
  pam-devel \
  libnl3-devel \
  pystache \
  python-requests \
  pytz \
  clang \
  llvm \
  llvm-devel \
  gperf \
  python-coverage

RUN pip install --user sseclient cpplint backports.functools_lru_cache
