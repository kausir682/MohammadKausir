module "rg" {
  source = "../../child_module/azurerm_resource_group"
  rgs    = var.rgs
}
module "vnet" {
  depends_on = [module.rg]
  source     = "../../child_module/azurerm_virtual_network"
  vnets      = var.vnets
}
module "subnet" {
  depends_on = [module.rg, module.vnet]
  source     = "../../child_module/azurerm_subnet"
  subnets    = var.subnets 
}
module "pip" {
  depends_on = [module.rg]
  source     = "../../child_module/azurerm_public_ip"
  pips       = var.pips
}
module "nic" {
  depends_on = [module.subnet, module.pip]
  source     = "../../child_module/azurerm_network_interface_card"
  nics       = var.nics

}
module "vm" {
  depends_on = [module.nic]
  source     = "../../child_module/azurerm_window_vm"
  vms        = var.vms

}