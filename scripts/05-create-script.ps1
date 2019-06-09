$script = 'cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPPresentation\samples\
Get-ChildItem -recurse | where {$_.name -like "*.php"} | where {$_.name -ne "index.php"} | where {$_.name -ne "Sample_Footer.php"} | where {$_.name -ne "Sample_Header.php"} | foreach { (New-Object System.Net.WebClient).DownloadString("http://127.0.0.1:8080/PHPPresentation/samples/"+$_.name); }
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPProject\samples\
Get-ChildItem -recurse | where {$_.name -like "*.php"} | where {$_.name -ne "index.php"} | where {$_.name -ne "Sample_Footer.php"} | where {$_.name -ne "Sample_Header.php"} | foreach { (New-Object System.Net.WebClient).DownloadString("http://127.0.0.1:8080/PHPProject/samples/"+$_.name); }
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PhpSpreadsheet\
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPVisio\
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPWord\samples\
Get-ChildItem -recurse | where {$_.name -like "*.php"} | where {$_.name -ne "index.php"} | where {$_.name -ne "Sample_Footer.php"} | where {$_.name -ne "Sample_Header.php"} | foreach { (New-Object System.Net.WebClient).DownloadString("http://127.0.0.1:8080/PHPWord/samples/"+$_.name); }'

Set-Content -Path 'C:\Users\vagrant\Desktop\PhpOffice-samples.ps1' -Value $script