#!/usr/bin/env bash


set -oue pipefail

sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates.repo
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates-archive.repo
rpm-ostree override remove mesa-va-drivers-freeworld
rpm-ostree install mesa-va-drivers
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates.repo
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates-archive.repo
rm /etc/yum.repos.d/negativo17-fedora-multimedia.repo
