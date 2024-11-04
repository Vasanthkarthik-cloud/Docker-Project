# Instantaneous Virtual Environment for Faster accessible Options in Software development using Docker

This Docker image provides a pre-configured environment for software development, penetration testing, and security-related tasks. It includes a wide range of tools and utilities to help you get started quickly.

## Features

- **Base Image**: `kalilinux/kali-rolling` for a lightweight, security-focused Linux environment.
- **Installed Tools**:
  - Common utilities: `git`, `vim`, `wget`, `curl`, `tmux`, `awscli`, etc.
  - Development essentials: `gcc`, `make`, `build-essential`
  - Networking & security tools: `nmap`, `whois`, `nikto`, `dnsutils`, `sqlmap`, `hydra`, `dnsrecon`, etc.
  - Customizable shell environment with `zsh` and `powerline` for an enhanced CLI experience.

## Getting Started

### Prerequisites

Ensure that Docker is installed and running on your system. For installation instructions, visit Docker's official documentation.

### Building the Docker Image

Clone this repository and navigate into the directory:

```bash
git clone https://github.com/yourusername/repo-name.git
cd repo-name
```

Build the Docker image using the provided Dockerfile:

```bash
docker build -t instant-dev-env .
```

### Running the Container

Run the container with an interactive shell:

```bash
docker run -it instant-dev-env
```

This command will open a shell inside the container with all tools and configurations accessible.

## Folder Structure

The following directories are created in the container's root directory (`/root`):

- **toolkit**: For storing various tools and scripts.
- **wordlists**: Useful for keeping wordlists used in security testing.

## Customization

To customize the environment, modify the `Dockerfile` and rebuild the image as described above. You can add additional tools, environment variables, and configuration as per your project requirements.

## Notes

- **Non-Interactive Mode**: The Dockerfile is set to run in non-interactive mode to avoid prompts during package installation.
- **Clean-Up**: Each `apt-get` install command ends with removing the package lists to reduce image size.

## Maintainer

Vasanth K (your contact information or GitHub profile link)
