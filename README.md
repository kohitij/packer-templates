# packer-templates
This repository would hold various packer-templates which can be used to build, provision and process various hypervisors

# Pre-Requisites
  - For OSX Users
    - Install VMWare Fusion for OSX
    - Install Packer using brew package manager for OSX
    
# Steps to Execute
  - Download the ISO distribution package and save it on your local disk ( Not mandatory but saves build time as the ISO would be picked up from disk )
  
  - For Example, The opensuse distribution ISO can be downloaded from https://download.opensuse.org/distribution/leap/15.1/iso/
  
  - Clone this git repository on your local machine
  
  - Update the property file at openSUSE/leap-15.1/server/vars.json as per applicable details
  
  - From the root of the directory execute the below command
  
  `packer build -only=vmware-iso -var-file=openSUSE/leap-15.1/server/vars.json openSUSE/opensuse-server.json`
  
  - The execution may take sometime to complete depending on the network speed as it provisions some additional software like NGINX and DOTNETCORE 2.2
  
  - Post completion you can open the manifest.json to check the list of generated artifacts in the output directory
  
  - For Vmware Fusion users, You can archieve the `disk.vmdk` file generated in the output folder and use it to create additional virtual machines and select the option to attach existing virtual disk
  
  - Currently the `vmware-iso` only supports exporting virtual machines for ESXi servers