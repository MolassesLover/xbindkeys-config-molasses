FROM fedora:latest
WORKDIR /opt/workdir

RUN dnf install -y cmake clang gtk2-devel ninja-build
CMD cmake \
    -B target/release \
    -D CMAKE_BUILD_TYPE=Release \
    -G 'Ninja' && \
    cmake --build target/release -j$(nproc) 
