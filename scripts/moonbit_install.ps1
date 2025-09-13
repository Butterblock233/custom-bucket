# 让官方把文件装进 $dir
$env:MOON_HOME = "$dir"
$ProgressPreference = 'SilentlyContinue'

# 运行官方 powerhell installer
iwr https://cli.moonbitlang.cn/install/powershell.ps1 -UseBasicParsing | iex
