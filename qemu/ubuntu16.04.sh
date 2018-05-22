#!/bin/sh

PATH_PREFIX=/home/liutao/qemu-img

export VM_NAME=ubuntu16.04
export GUEST_MEM=4096M
export QCOW2_IMAGE=${PATH_PREFIX}/ubuntu_desktop_16.04_amd64.qcow2

# install
#(/usr/libexec/qemu-kvm -name $VM_NAME -cpu host -enable-kvm \
#   -m $GUEST_MEM -drive file=$QCOW2_IMAGE \
#   -smp sockets=1,cores=4 \
#    \
#    -boot d -cdrom ../download/ubuntu-16.04.3-desktop-amd64.iso \
#    \
#   -vnc :11 -k en-us &)

# run system
(/usr/libexec/qemu-kvm -name $VM_NAME -cpu host -enable-kvm \
   -m $GUEST_MEM -drive file=$QCOW2_IMAGE \
   -smp sockets=1,cores=4 \
    \
   -net nic,model=virtio,macaddr=00:0b:5d:99:82:5d \
   -net tap,vnet_hdr=on,vhost=on,script=${PATH_PREFIX}/bin/qemu-ifup,downscript=${PATH_PREFIX}/bin/qemu-ifdown \
    \
   -vnc :11 -k en-us &)

