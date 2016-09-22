FROM vcatechnology/fedora-c:24
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN dnf install -y \
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
  opencv-devel
