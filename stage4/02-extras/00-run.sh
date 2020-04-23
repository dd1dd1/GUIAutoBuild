#!/bin/bash -e
install -m 755 files/python3-yaml_5.3.1-1_armhf.deb	"${ROOTFS_DIR}/tmp/"

on_chroot << EOF
dpkg -i /tmp/python3-yaml_5.3.1-1_armhf.deb
EOF

