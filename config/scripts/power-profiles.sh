#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail


wget https://copr.fedorainfracloud.org/coprs/mariolimonciello/power-profiles-daemon/repo/fedora-39/mariolimonciello-power-profiles-daemon-39.repo -O /etc/yum.repos.d/mariolimonciello-power-profiles-daemon-39.repo
sed -i '0,/enabled=1/s//enabled=0/' /etc/yum.repos.d/fedora-updates.repo
<<<<<<< HEAD
<<<<<<< HEAD
rpm-ostree override remove power-profiles-daemon
rpm-ostree install power-profiles-daemon-0.13-6 --allow-inactive
=======
rpm-ostree install power-profiles-daemon --allow-inactive
>>>>>>> f4c3780 (one more try)
=======
rpm-ostree override remove power-profiles-daemon
rpm-ostree install power-profiles-daemon-0.13-6 --allow-inactive
>>>>>>> 3173896 (remove them add)
sed -i '0,/enabled=0/s//enabled=1/' /etc/yum.repos.d/fedora-updates.repo

