$wsus = Get-WsusServer
$wsus = Get-WsusServer -Name 2-sv-is-tn-01.bfwtn.intern -PortNumber 8531 -UseSsl
$wsus.ImportUpdateFromCatalogSite('628f5572-7e1a-4934-b864-3e6e24d3c758', 'c:\tmp\windows10.0-kb5001567-x64_e3c7e1cb6fa3857b5b0c8cf487e7e16213b1ea83.msu')