$AzLocation = (Get-AzResourceGroup -Name 'dummynameinfo').Location
$ResourceGroupName = 'dummyresourceGroup'

New-AzResourceGroup -Name $ResourceGroupName -Location $AzLocation

Get-AzResourceGroup -Name $ResourceGroupName

$diskConfig = New-AzDiskConfig `
  -Location $AzLocation`
-CreateOption Empty `
  -DiskSizeGb 32 `
  -Sku Standard_LRS

$diskName = "dummy-disk1"

New-AzDisk `
  -ResourceGroupName $ResourceGroupName `
  -DiskName $diskName `
  -Disk $diskConfig


