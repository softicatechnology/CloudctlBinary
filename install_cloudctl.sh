#!/bin/bash

# Download the file
wget https://github.com/softicatechnology/cloudctl-release/releases/download/v1.0.0/cloudctl-v1.0.0 -O /usr/local/bin/cloudctl

# Make the file executable
chmod +x /usr/local/bin/cloudctl

# Create the systemd service file
cat <<EOL >/etc/systemd/system/cloudctl.service
[Unit]
Description=CloudCTL Service
After=network.target

[Service]
ExecStart=/usr/local/bin/cloudctl
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOL

# Reload systemd to pick up the new service file
systemctl daemon-reload

# Enable the service to start on boot
systemctl enable cloudctl.service

# Start the service immediately
systemctl start cloudctl.service

# Check the status of the service
systemctl status cloudctl.service
