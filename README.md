# CloudCtl Binary Release

This repository contains the binary release of the CloudCtl CLI tool.

## Usage

Install the CloudCtl CLI tool by downloading the binary release for your operating system. You can find the latest release on the [Releases]()

To download and run the script with sudo, you can use the following commands:

### Using curl:

```bash
curl -sL https://raw.githubusercontent.com/softicatechnology/cloudctl-release/main/install_cloudctl.sh | sudo bash
```

### Using wget:

```bash
wget -qO- https://raw.githubusercontent.com/softicatechnology/cloudctl-release/main/install_cloudctl.sh | sudo bash
```

After running the script, you can use the `cloudctl` command to manage cloud worker containers and server processes.

## Commands

The CloudCtl CLI tool provides the following commands:

- `start-docker`: Start a new worker container.
- `stop-docker <container-id>`: Stop a worker container by ID.
- `delete-docker <container-id>`: Delete a worker container by ID.
- `start-server`: Start the server process.
- `stop-server`: Stop the server process.
- `restart-server`: Restart the server process.
- `list-ports`: List all the ports used by worker containers.
- `track-workers`: Track the status of worker containers.
