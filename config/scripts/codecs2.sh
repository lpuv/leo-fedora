#!/usr/bin/env bash


set -oue pipefail

#rm /etc/yum.repos.d/negativo17-fedora-multimedia.repo
<<<<<<< HEAD
rpm-ostree override remove mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld
=======
rpm-ostree override uninstall mesa-va-drivers
>>>>>>> baa88bb (run script twice? pt 2)
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld --allow-inactive

