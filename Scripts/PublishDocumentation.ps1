git.exe submodule update --recursive --remote
mkdir .bins
Set-Location .bins
Invoke-WebRequest "https://github.com/dotnet/docfx/releases/download/v2.52/docfx.zip" -outFile ./docfx.zip
expand-archive ./docfx.zip ./docfx
Set-Location ..
./.bins/docfx/docfx.exe
$status = git.exe status;
$changes = $status | ForEach-Object -Begin {$a = 0} -Process { 
    $a = $a + ($_ -like "*modified:*");
    $a = $a + ($_ -like "*added:*");
    $a = $a + ($_ -like "*deleted:*");
    $a = $a + ($_ -like "*renamed:*");
    $a = $a + ($_ -like "*copied:*");
    $a = $a + ($_ -like "*updated:*");
} -End {return $a}
if ($changes) {
    git.exe add .
    git.exe commit -m "Updated documentation"
    git.exe push
}else {
    Write-Output "No changes in documentation, will not push";
}