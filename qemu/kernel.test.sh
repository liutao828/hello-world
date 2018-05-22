#!/usr/bin/bash

PATH_PREFIX=/home/liutao/qemu-img

export VM_NAME=kernel-test-vm
export GUEST_MEM=4096M
export QCOW2_IMAGE=${PATH_PREFIX}/ubuntu_16.04_amd64.qcow2.kernel.test


(/usr/libexec/qemu-kvm -name $VM_NAME -cpu host -enable-kvm \
   -m $GUEST_MEM -drive file=$QCOW2_IMAGE --nographic \
   -smp sockets=1,cores=4 \
    \
   -net nic,model=virtio,macaddr=00:0b:5d:99:82:5c \
   -net tap,vnet_hdr=on,vhost=on,script=${PATH_PREFIX}/bin/qemu-ifup,downscript=${PATH_PREFIX}/bin/qemu-ifdown \
    \
   -vnc :1 -k en-us &)
