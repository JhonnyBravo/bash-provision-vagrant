$url=$(Get-Content ../windows/url_list.txt | awk '{print $2}')
firefox "$url"


<#
.SYNOPSIS
Tera Term をダウンロードします。

.DESCRIPTION
Tera Term をダウンロードします。
#>