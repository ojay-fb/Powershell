
$results = Get-ADComputer -Filter * -SearchBase "OU=Computer_TN, OU=Computer_All, OU=2-BFWTN, DC=bfwtn, DC=intern" | Select-Object DNSHostName | Export-Csv -Path c:\tmp\AD_Computer_Export.csv
# echo $results
