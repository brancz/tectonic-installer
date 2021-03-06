variable "tectonic_azure_dns_resource_group" {
  type    = "string"
  default = "tectonic-dns-group"
}

// The image ID as given in `azure image list`.
// Specifies the OS image of the VM.
variable "tectonic_azure_image_reference" {
  type = "map"

  default = {
    publisher = "CoreOS"
    offer     = "CoreOS"
    sku       = "Stable"
    version   = "latest"
  }
}

variable "tectonic_azure_location" {
  type = "string"
}

variable "tectonic_ssh_key" {
  type    = "string"
  default = ""
}

// Name of an Azure ssh key to use
// joe-sfo
variable "tectonic_azure_ssh_key" {
  type = "string"
}

variable "tectonic_azure_master_vm_size" {
  type = "string"
  description =  "Instance size for the master node(s). Example: Standard_DS2."
  default = "Standard_DS2"
}

variable "tectonic_azure_worker_vm_size" {
  type = "string"
  description =  "Instance size for the worker node(s). Example: Standard_DS2."
  default = "Standard_DS2"
}

variable "tectonic_azure_etcd_vm_size" {
  type = "string"
  description =  "Instance size for the etcd node(s). Example: Standard_DS2."
  default = "Standard_DS2"
}

variable "tectonic_azure_vnet_cidr_block" {
  type = "string"
  default = "10.0.0.0/16"
  description = "Block of IP addresses used by the Resource Group. This should not overlap with any other networks, such as a private datacenter connected via ExpressRoute."
}

variable "tectonic_azure_external_vnet_id" {
  type    = "string"
  description = "ID of an existing Virtual Network to launch nodes into. Example: VNet1. Leave blank to create a new Virtual Network."
  default = ""
}
