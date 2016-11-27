param(
    [switch]$install,
    [switch]$uninstall
)

$install_path="$(Split-Path -Parent $profile)/script"

function install_package(){
    $zip_path=$(find ~/Downloads -name phantomjs*.zip)
    unzip $zip_path -d ~/Downloads

    $package_path=$(find ~/Downloads -name phantomjs.exe | sed -e "s/\/c\//c:\\/")

    if($(Test-Path "$install_path") -eq $false){
        New-Item -ItemType directory "$install_path"
    }

    Copy-Item "$package_path" "$install_path"
    Remove-Item -Recurse "~/Downloads/phantomjs-*-windows*"
    echo "${install_path} へパスを通してください。"
}

function uninstall_package(){
    Remove-Item "${install_path}/phantomjs.exe"
}

if($install){
    install_package
}elseif($uninstall){
    uninstall_package
}


<#
.SYNOPSIS
phantomjs をインストール / アンインストールします。

.DESCRIPTION
phantomjs をインストール / アンインストールします。

.PARAMETER install
phantomjs をインストールします。

.PARAMETER uninstall
phantomjs をアンインストールします。
#>