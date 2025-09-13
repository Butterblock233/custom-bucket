
# Bundle core libraries
$env:MOON_HOME = "$dir"
$oldPath = $env:Path
$env:Path  = "$dir\bin;$env:Path"

if (Test-Path "$dir\lib\core") {
    Push-Location "$dir\lib\core"
    & moon.exe bundle --all *> $null
    & moon.exe bundle --target wasm-gc --quiet *> $null
    Pop-Location
}

$env:Path = $oldPath
