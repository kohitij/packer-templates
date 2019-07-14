#!/bin/sh
set -e
set -x

# Configure base and update repositories
zypper --non-interactive addrepo -f -n \"openSUSE-Leap-15.1-Oss\" \
  http://download.opensuse.org/distribution/leap/15.1/repo/oss/ repo-oss
zypper --non-interactive addrepo -f -n \"openSUSE-Leap-15.1-Non-Oss\" \
  http://download.opensuse.org/distribution/leap/15.1/repo/non-oss/ repo-non-oss
zypper --non-interactive addrepo -f -n \"openSUSE-Leap-15.1-Update\" \
  http://download.opensuse.org/update/leap/15.1/oss/ repo-update-oss
zypper --non-interactive addrepo -f -n \"openSUSE-Leap-15.1-Update-Non-Oss\" \
  http://download.opensuse.org/update/leap/15.1/non-oss/ repo-update-non-oss
