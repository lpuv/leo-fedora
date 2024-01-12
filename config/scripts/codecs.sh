#!/usr/bin/env bash


set -oue pipefail

sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates.repo
rm /etc/yum.repos.d/negativo17-fedora-multimedia.repo
rpm-ostree override remove mesa-filesystem
#rpm -q mesa-va-drivers
#rpm -q mesa-va-drivers-freeworld
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld mesa-filesystem
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates.repo

