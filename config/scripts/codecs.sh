#!/usr/bin/env bash


set -oue pipefail

sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-multimedia.repo
#rpm-ostree override remove mesa-va-drivers
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld --allow-inactive
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-multimedia.repo
