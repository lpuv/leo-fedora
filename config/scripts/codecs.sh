#!/usr/bin/env bash


set -oue pipefail

#rpm-ostree override remove mesa-va-drivers
rpm-ostree install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld --allow-inactive
