Import-Csv –Path "C:\Scripte\Powershell\DHCP\Printer_MA.csv" | Add-DhcpServerv4Reservation -ComputerName 2-sv-dc-tn-01.bfwtn.intern 
