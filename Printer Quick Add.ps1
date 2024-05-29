$printername = Read-Host "Enter printer name"
add-printer -connectionname \\miusprint\$printername
Write-Host "Complete!"
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

