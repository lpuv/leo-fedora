#!/usr/bin/env bash


set -oue pipefail

rm /etc/yum.repos.d/negativo17-fedora-multimedia.repo
rpm-ostree override remove mesa-filesystem
#rpm -q mesa-va-drivers
#rpm -q mesa-va-drivers-freeworld
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld mesa-filesystem

