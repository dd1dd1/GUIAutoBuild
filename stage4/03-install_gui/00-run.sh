#!/bin/bash -e

git clone https://github.com/MechanicalVentilatorMilano/gui.git "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/gui"

chmod 744 -R "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/gui"
chown 1000:1000 -R "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/gui"
