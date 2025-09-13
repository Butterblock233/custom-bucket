# 删除旧路径条目
$userPath = [Environment]::GetEnvironmentVariable('PATH', 'User')
$paths    = $userPath -split ';' | Where-Object {
    $_ -notmatch '\\\.moon\\bin'
}
[Environment]::SetEnvironmentVariable('PATH', ($paths -join ';'), 'User')
