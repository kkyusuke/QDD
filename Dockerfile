
# Use the official Ubuntu base image
FROM ubuntu:latest

# Avoid warnings by switching to noninteractive
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies required for compiling Python
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    libbz2-dev \
    liblzma-dev \
    libsqlite3-dev \
    libncurses5-dev \
    libgdbm-dev \
    zlib1g-dev \
    libreadline-dev \
    libncursesw5-dev \
    tk-dev \
    libgdbm-compat-dev \
    libnss3-dev \
    wget \
    curl \
    ca-certificates \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*



# Download Python 3.10 source
RUN curl -O https://www.python.org/ftp/python/3.10.13/Python-3.10.13.tgz

# Extract the downloaded tarball
RUN tar -xf Python-3.10.13.tgz

# Compile Python from source
RUN cd Python-3.10.13 && \
    ./configure --enable-optimizations && \
    make -j `nproc` && \
    make altinstall

# Set Python 3.10 as the default python version
RUN update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.10 1
RUN apt-get install python-is-python3

# Verify Python version
RUN python3 --version

RUN python3 -m pip install cibuildwheel

# Mount the Docker socket (This needs to be done at runtime, not in Dockerfile)
# VOLUME /var/run/docker.sock

RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh && \
    apt-get install -y docker-ce-cli

RUN update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.10 1


# Download and execute the Kitware archive script
RUN wget https://apt.kitware.com/kitware-archive.sh \
    && chmod +x kitware-archive.sh \
    && ./kitware-archive.sh

# Install CMake
RUN apt-get update && apt-get install -y cmake



# Set the working directory
WORKDIR /app

# Set the default command for the container
CMD ["bash"]
#CMD ["python3", "-m", "pip", "install", "cibuildwheel"]
#CMD ["python3", "-m", "cibuildwheel", "--platform", "linux"]

