# Anmeldung an Azure AD

Connect-AzureAD

# Ruft alle Azure-AD Geräte ab, die sich in den letzten 90 Tagen nicht angemeldet haben!

$dt = (Get-Date).AddDays(-90)
Get-AzureADDevice -All:$true | Where {$_.ApproximateLastLogonTimeStamp -le $dt} | select-object -Property AccountEnabled, DeviceId, DeviceOSType, DeviceOSVersion, DisplayName, DeviceTrustType, ApproximateLastLogonTimestamp | export-csv "c:\tmp\devicelist-olderthan-90days-summary.csv" -NoTypeInformation

# Deaktiviert alle Azure-AD Geräte ab, die sich in den letzten 90 Tagen nicht angemeldet haben!

$dt = (Get-Date).AddDays(-90)
$Devices = Get-AzureADDevice -All:$true | Where {$_.ApproximateLastLogonTimeStamp -le $dt}
foreach ($Device in $Devices) {
Set-AzureADDevice -ObjectId $Device.ObjectId -AccountEnabled $false
}

# Löscht alle Azure-AD Geräte ab, die sich in den letzten 120 Tagen nicht angemeldet haben!

#$dt = (Get-Date).AddDays(-120)
#$Devices = Get-AzureADDevice -All:$true | Where {($_.ApproximateLastLogonTimeStamp -le $dt) -and ($_.AccountEnabled -eq $false)}
#foreach ($Device in $Devices) {
#Remove-AzureADDevice -ObjectId $Device.ObjectId
#}
