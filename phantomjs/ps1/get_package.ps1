firefox $(Get-Content ../windows/url_list.txt | awk '{print $2}')


<#
.SYNOPSIS
phantomjs をダウンロードします。

.DESCRIPTION
phantomjs をダウンロードします。
#>