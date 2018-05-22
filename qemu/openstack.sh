#!/usr/bin/bash

export VM_NAME=openstack-vm
export GUEST_MEM=8192M
export QCOW2_IMAGE=/home/liutao/ovs-dpdk/vm/ubuntu_16.04_amd64.qcow2.openstack


(qemu-system-x86_64 -name $VM_NAME -cpu host -enable-kvm \
   -m $GUEST_MEM -drive file=$QCOW2_IMAGE --nographic \
   -smp sockets=1,cores=4 \
    \
   -net nic,model=virtio,macaddr=00:0b:5d:99:82:5c \
   -net tap,script=/home/liutao/bin/qemu-ifup,downscript=/home/liutao/bin/qemu-ifdown \
    \
   -vnc :1 -k en-us &)
