$bytes = [IO.File]::ReadAllBytes('d:\BILL EMBRODARY\signature.png')
$b64str = [Convert]::ToBase64String($bytes)
$result = 'data:image/png;base64,' + $b64str
Set-Content -Path 'd:\BILL EMBRODARY\sig_base64.txt' -Value $result -NoNewline
Write-Output "Done. Length: $($result.Length)"
