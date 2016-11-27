param(
    [string]$architecture
)

if("$architecture" -eq "32bit"){
    $url=$(Get-Content ../windows/url_list.txt | grep ".exe" | awk '{print $2}' | grep "https")
}elseif("$architecture" -eq "64bit"){
    $url=$(Get-Content ../windows/url_list.txt | grep "x64" | grep ".exe" | awk '{print $4}')
}

if("$url"){
    firefox "$url"
}


<#
.SYNOPSIS
sublime-text をダウンロードします。

.DESCRIPTION
sublime-text をダウンロードします。

.PARAMETER architecture
OS のアーキテクチャに合わせたパッケージをダウンロードします。

有効な値:

* 32bit
* 64bit
#>