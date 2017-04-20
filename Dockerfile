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
  aalib \
  aalib-devel \
  alsa-lib-devel \
  alsa-utils \
  bc \
  bison \
  boost-devel \
  bzip2-devel \
  check-devel \
  clang \
  cmake \
  cppcheck \
  cppunit-devel \
  dbus-devel \
  dialog-devel \
  doxygen \
  eigen3 \
  flex \
  gcc \
  gcc-c++ \
  gdisk \
  gettext-devel \
  glib2-devel \
  gmp-devel \
  gnutls-devel \
  gnu-efi-devel \
  gperf \
  graphviz \
  gsoap-devel \
  gstreamer1-devel \
  gstreamer1-plugins-base-devel \
  gstreamer1-plugins-good \
  gstreamer1-rtsp-server-devel \
  intltool \
  isl-devel \
  jansson-devel \
  libatomic \
  libattr-devel \
  libasan \
  libblkid-devel \
  libcap-devel \
  libcap-ng-devel \
  libcurl-devel \
  libffi-devel \
  libgcrypt-devel \
  libgpg-error-devel \
  libgudev-devel \
  libicu-devel \
  libidn-devel \
  libitm-devel \
  libjpeg-turbo-devel \
  libmount-devel \
  libmpc-devel \
  libndp-devel \
  libnl3-devel \
  libntlm-devel \
  libpciaccess-devel \
  libsigc++20-devel \
  libsoup-devel \
  libtool \
  libubsan \
  libusbx-devel \
  libuuid-devel \
  libuv-devel \
  libxml2-devel \
  llvm \
  llvm-devel \
  make \
  mpfr-devel \
  mscgen \
  nasm \
  ncurses-devel \
  ncurses-term \
  nettle-devel \
  nodejs \
  npm \
  nspr-devel \
  opencv-devel \
  openssl-devel \
  orc-compiler \
  orc-devel \
  p7zip \
  pam-devel \
  pandoc \
  pcre-devel \
  pixman-devel \
  pkgconfig \
  popt-devel \
  procps-ng \
  protobuf-devel \
  pystache \
  python-coverage \
  python-devel \
  python-requests \
  pytz \
  qemu \
  qt-devel \
  rapidjson-devel \
  rapidxml-devel \
  rpm-build \
  rpmlint \
  sqlite-devel \
  stress \
  subunit-filters \
  systemd-devel \
  systemd-udev \
  tinyxml-devel \
  uuid \
  uuidd \
  valgrind \
  xz-devel \
  xz-lzma-compat \
  yasm \
  zlib-devel

RUN pip install --user sseclient cpplint backports.functools_lru_cache
