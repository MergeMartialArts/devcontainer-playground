FROM ubuntu:24.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Europe/Berlin \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# hadolint ignore=DL3008
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    # Core utilities
    curl \
    ca-certificates \
    sudo \
    software-properties-common \
    zsh \
    nano \
    locales \
    # Build tools for Python packages with C extensions
    build-essential \
    libssl-dev \
    libffi-dev && \
    locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8 && \
    add-apt-repository ppa:git-core/ppa -y && \
    apt-get update && \
    apt-get install -y git && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

# Install hadolint for Dockerfile linting
# Needed for the Dockerfile linter in the pre-commit hooks
RUN curl -fsSL -o /usr/local/bin/hadolint https://github.com/hadolint/hadolint/releases/latest/download/hadolint-Linux-arm64 && \
    chmod +x /usr/local/bin/hadolint

# Install oh-my-zsh
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install powerlevel10k theme
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# Install chezmoi
RUN sh -c "$(curl -fsLS get.chezmoi.io)"

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/home/vscode/.local/bin:${PATH}"