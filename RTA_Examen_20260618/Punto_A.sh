#!/bin/bash

fdisk /dev/sdc
wipefs -a /dev/sdc1
pvcreate /dev/sdc1
vgcreate vg_datos /dev/sdc1
lvcreate -L 5M vg_datos -n lv_docker
mkfs.ext4 /dev/mapper/vg_datos-lv_docker
mkdir -p /var/lib/docker
mount /dev/mapper/vg_datos-lv_docker /var/lib/docker

fdisk /dev/sdd
lvcreate -L 1536M vg_datos -n lv_workareas
mkf.ext4 /dev/mapper/vg_datos-lv_workareas
mkdir -p /work
mount /dev/mapper/vg_datos-lv_workareas /work

fdisk /dev/sdd
wipefs -a /dev/sdd1
pvcreate /dev/sdd1
vgcreate vg_temp /dev/sdd1
lvcreate -L 512M vg_temp -n lv_swap
mkswap /dev/mapper/vg_temp-lv_swamp
swapon /dev/mapper/vg_temp-lv_swap

pvs
vgs
lvs
