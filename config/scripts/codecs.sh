#!/usr/bin/env bash


set -oue pipefail

rm /etc/yum.repos.d/negativo17-fedora-multimedia.repo
rpm-ostree override remove mesa-filesystem mesa-dri-drivers mesa-va-drivers-freeworld libva
#rpm -q mesa-va-drivers
#rpm -q mesa-va-drivers-freeworld
rpm-ostree install libva mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld mesa-filesystem mesa-dri-drivers

