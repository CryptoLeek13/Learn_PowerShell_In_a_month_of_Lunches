$AzLocation = (Get-AzResourceGroup -Name 'dummynameinfo').Location
$ResourceGroupName = 'dummyresourceGroup'

New-AzResourceGroup -Name $ResourceGroupName -Location $AzLocation

Get-AzResourceGroup -Name $ResourceGroupName

