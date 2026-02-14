# devcontainer-playground

A ready-to-use Devcontainer template for VS Code, Docker, and GitHub Codespaces. Quickly spin up isolated dev environments for experiments, prototyping, or learning—no manual setup required.

## Features
- Preconfigured devcontainer.json and Dockerfile
- Supports VS Code Remote Containers
- Works out-of-the-box with GitHub Codespaces
- Easy to customize for any project

## About the Dockerfile

This container provides a full-featured development environment based on Ubuntu, with key tools preinstalled for Python development and general experimentation:
- Base Image: `mcr.microsoft.com/vscode/devcontainers/base:ubuntu`
- System Packages: `curl, ca-certificates, build-essential, libssl-dev, zlib1g-dev, libbz2-dev, libreadline-dev, libsqlite3-dev, wget, llvm, libncursesw5-dev, xz-utils, tk-dev, libxml2-dev, libxmlsec1-dev, libffi-dev, liblzma-dev`
- User: Runs as the non-root `vscode` user by default
- Development Tools Installed:
  - `uv` — lightweight CLI for running commands
  - `pyenv` — Python version manager for flexible Python setups
  - `poetry` — dependency management and packaging tool for Python projects
- Environment Setup:
  - Adds pyenv and Poetry to PATH
  - Initializes pyenv in the shell so you can manage Python versions immediately

This means when you open this container, you have a ready-to-use Python environment, package management tools, and a starter uv package so you can immediately begin experiments or add your own scripts.

## Getting Started

### Locally with VS Code
1. Install [Docker](https://www.docker.com/) and [VS Code](https://code.visualstudio.com/)￼
2. Install the [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
3. Press F1 (or Ctrl+Shift+P / Cmd+Shift+P) to open the Command Palette.
4. Search for “Remote-Containers: Reopen in Container”.

### GitHub Codespaces
1. Click Code → Open with Codespaces → New Codespace
2. Codespaces will automatically build the container from devcontainer.json

## Customization
- Modify Dockerfile to add tools, languages, or dependencies
- Update devcontainer.json for VS Code settings and extensions, or mounts

## Contributing

This is a template — feel free to fork, tweak, and use it for your own projects!
