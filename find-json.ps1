Write-Host "Find files..."
Get-ChildItem -File -Filter '*.json' -Recurse  |
Foreach-Object {
    Get-Content -raw -path $_.FullName | Test-Json
}
