#!/usr/bin/env bash


set -oue pipefail

<<<<<<< HEAD
<<<<<<< HEAD
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates.repo
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates-archive.repo
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora.repo

rpm-ostree override remove mesa-va-drivers-freeworld
rpm-ostree install mesa-va-drivers
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates.repo
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates-archive.repo
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora.repo
rm /etc/yum.repos.d/negativo17-fedora-multimedia.repo
=======
rpm-ostree override remove mesa-va-drivers
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld
>>>>>>> 7696be2 (codecs script)
=======
#rpm-ostree override remove mesa-va-drivers
<<<<<<< HEAD
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld --alllow-inactive
>>>>>>> c595b89 (not installed??)
=======
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld --allow-inactive
>>>>>>> 8de6cb8 (typo, sigh)
