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
    {
        "vm_name": "<custom_vm_name>",
        "iso_path": "<file_path_of_downloaded_iso>",
        "iso_checksum_type": "<checksum_type_of_downloade_iso>",
        "iso_checksum": "<checksum_to_validate_downloaded_iso>",
        "local_server_ip": "<your_local_service_private_ip>",
        "boot_command_prefix": ""
    }