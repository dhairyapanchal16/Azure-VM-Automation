# Variables
$resourceGroup = "RG-AzureAutomation"
$location = "EastUS"
$vmName = "MyAutoVM"
$vnetName = "MyVnet"
$subnetName = "MySubnet"
$nsgName = "MyNSG"
$publicIPName = "MyPublicIP"

# Create Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create Virtual Network
$subnetConfig = New-AzVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix "10.0.0.0/24"
New-AzVirtualNetwork -ResourceGroupName $resourceGroup -Location $location `
-Name $vnetName -AddressPrefix "10.0.0.0/16" -Subnet $subnetConfig

# Create Public IP
New-AzPublicIpAddress -Name $publicIPName -ResourceGroupName $resourceGroup `
-Location $location -AllocationMethod Static -Sku Standard

# Create VM
New-AzVm -ResourceGroupName $resourceGroup -Name $vmName `
-Location $location -VirtualNetworkName $vnetName `
-SubnetName $subnetName -SecurityGroupName $nsgName `
-PublicIpAddressName $publicIPName -OpenPorts 3389
