$LicenseInfo = Get-CimInstance SoftwareLicensingProduct -Filter "Name like 'Windows%'" | where { $_.PartialProductKey } | select Description
$LicenseInfo = $LicenseInfo.description

 

If ($LicenseInfo -like "*KMS*")
    {
    Write-Output "KMS License"
    Exit 1
    }
Else
    {
    Write-Output "Azure License"
    Exit 0
    }
