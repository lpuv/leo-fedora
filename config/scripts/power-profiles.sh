#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail


wget https://copr.fedorainfracloud.org/coprs/mariolimonciello/power-profiles-daemon/repo/fedora-39/mariolimonciello-power-profiles-daemon-39.repo -O /etc/yum.repos.d/mariolimonciello-power-profiles-daemon-39.repo
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates.repo
rpm-ostree install power-profiles-daemon --allow-inactive
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates.repo

