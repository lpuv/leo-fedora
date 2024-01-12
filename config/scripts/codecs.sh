#!/usr/bin/env bash


set -oue pipefail

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates.repo
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates-archive.repo
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora.repo
=======
=======
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates.repo
>>>>>>> fec7054 (retry codecs script)
=======
>>>>>>> ffa1feb (retry codecs script pt 2)
rm /etc/yum.repos.d/negativo17-fedora-multimedia.repo
rpm-ostree override remove mesa-filesystem
#rpm -q mesa-va-drivers
#rpm -q mesa-va-drivers-freeworld
<<<<<<< HEAD
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld --allow-inactive
>>>>>>> 1f9b07c (not sure which codecs are here)
=======
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld mesa-filesystem
<<<<<<< HEAD
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates.repo
>>>>>>> fec7054 (retry codecs script)
=======
>>>>>>> ffa1feb (retry codecs script pt 2)

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
=======
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-multimedia.repo
>>>>>>> f44370c (pesky multimedia repo)
=======
rm /etc/yum.repos.d/negativo17-fedora-multimedia.repo
>>>>>>> 06d7562 (pesky multimedia repo pt 2)
#rpm-ostree override remove mesa-va-drivers
<<<<<<< HEAD
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld --alllow-inactive
>>>>>>> c595b89 (not installed??)
=======
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld --allow-inactive
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 8de6cb8 (typo, sigh)
=======
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-multimedia.repo
>>>>>>> f44370c (pesky multimedia repo)
=======

>>>>>>> 06d7562 (pesky multimedia repo pt 2)
