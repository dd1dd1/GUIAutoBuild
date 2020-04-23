#!/bin/bash -e
install -d -o 1000 -g 1000 -m 744 "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/openbox/"
if [ -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config" ]; then
	chown 1000:1000 -R "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config" 
fi
install -m 744 -o 1000 -g 1000 files/autostart "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/.config/openbox/"
install -m 744 -o 1000 -g 1000 files/start.sh "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/"
install -m 744 files/menu.xml "${ROOTFS_DIR}/etc/xdg/openbox/"

