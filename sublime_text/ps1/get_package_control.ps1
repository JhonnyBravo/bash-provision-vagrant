$url=$(Get-Content ../package_control/url_list.txt | awk '{print $3}')
firefox "$url"


<#
.SYNOPSIS
Package Control をダウンロードします。

.DESCRIPTION
Package Control をダウンロードします。
#>