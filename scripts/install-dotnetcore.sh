#!/bin/sh
set -e
set -x

#Import RPM
rpm --import https://packages.microsoft.com/keys/microsoft.asc

#Get Repository
wget -q https://packages.microsoft.com/config/opensuse/42.2/prod.repo

#Move to default repository directory
mv prod.repo /etc/zypp/repos.d/microsoft-prod.repo

#Change repository ownership to root
chown root:root /etc/zypp/repos.d/microsoft-prod.repo

#Refresh repositories
zypper refresh

#Install dotnet-core-2.2.0
zypper --non-interactive install dotnet-sdk-2.2
