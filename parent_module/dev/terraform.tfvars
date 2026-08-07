rgs = {
  rgs01 = {
    name     = "rg-mkz"
    location = "centralindia"
  }

  }
vnets = {
  vnets01 = {
    name                = "vnets43"
    location            = "centralindia"
    resource_group_name = "rg-mkz"
    address_space       = ["10.0.0.0/16"]
  }
}
subnets = {
  subnets01 = {
    name                 = "subnets43"
    resource_group_name  = "rg-mkz"
    virtual_network_name = "vnets43"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
pips = {
  pips01 = {
    name                = "pips43"
    location            = "centralindia"
    resource_group_name = "rg-mkz"
    allocation_method   = "Static"
  }
}
nics = {
  nics01 = {
    name                          = "nics43"
    location                      = "centralindia"
    resource_group_name           = "rg-mkz"
    ip_configuration_name         = "internal"
    snet_name                     = "subnets43"
    pip_name                      = "pips43"
    virtual_network_name          = "vnets43"
    private_ip_address_allocation = "Dynamic"
  }
}
vms = {
  vms01 = {
    name                 = "vmmmm43"
    resource_group_name  = "rg-mkz"
    location             = "centralindia"
    size                 = "Standard_D4_v5"
    admin_username       = "adminuser"
    admin_password       = "Adinuser@123"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "MicrosoftWindowsServer"
    offer                =  "WindowsServer"
    sku                  = "2016-Datacenter"
    version              = "latest"
    nic_name             = "nics43"

  }
}
