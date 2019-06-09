# Firefox
# https://chocolatey.org/packages/Firefox
choco install -y firefox

# LibreOffice
# https://chocolatey.org/packages/libreoffice-fresh
choco install -y libreoffice-fresh

# VSCode
# https://chocolatey.org/packages/vscode
choco install -y vscode
# VSCode Extension
cmd /C "C:\Program Files\Microsoft VS Code\bin\Code" --install-extension bmewburn.vscode-intelephense-client

# Apache
# https://brian.teeman.net/joomla/885-install-amp-on-windows-with-chocolatey
# Note : WebPath : C:\Users\vagrant\AppData\Roaming\Apache24\htdocs
choco install -y apache-httpd

# Apache Conf
copy "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf" "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd_backup.conf"
(gc "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf").replace('Listen 0.0.0.0:80','Listen 0.0.0.0:8080') | sc "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf"
(gc "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf").replace('Listen [::0]:80','Listen [::0]:8080') | sc "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf"
(gc "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf").replace('ServerName localhost:80','ServerName localhost:8080') | sc "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf"
# Apache Conf : IfModule dir_module
(gc "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf").replace('DirectoryIndex index.html','DirectoryIndex index.php index.html') | sc "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf"
# Apache Conf : Support PHP
Add-Content "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf" "AddHandler application/x-httpd-php .php"
Add-Content "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf" "AddType application/x-httpd-php .php .html"
Add-Content "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf" 'LoadModule php7_module "C:/tools/php73/php7apache2_4.dll"'
Add-Content "C:\Users\vagrant\AppData\Roaming\Apache24\conf\httpd.conf" 'PHPIniDir "C:/tools/php73"'

# PHP
choco install -y php --params '"/ThreadSafe"'
# PHP Conf
copy "C:\tools\php73\php.ini" "C:\tools\php73\backup.php.ini"
(gc "C:\tools\php73\php.ini").replace(';date.timezone =','date.timezone ="UTC"') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace('memory_limit = 128M','memory_limit = 512M') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace('upload_max_filesize = 2M','upload_max_filesize = 12M') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace('display_errors = Off','display_errors = On') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace('error_reporting = E_ALL & ~E_DEPRECATED & ~E_STRICT','error_reporting = E_ALL') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace(';extension=curl','extension=curl') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace(';extension=gd2','extension=gd2') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace(';extension=fileinfo','extension=fileinfo') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace(';extension=mbstring','extension=mbstring') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace(';extension=mysqli','extension=mysqli') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace(';extension=pdo_mysql','extension=pdo_mysql') | sc "C:\tools\php73\php.ini"
(gc "C:\tools\php73\php.ini").replace(';extension=openssl','extension=openssl') | sc "C:\tools\php73\php.ini"

# Composer
# https://chocolatey.org/packages/composer
choco install -y composer --params '"/PHP=C:\tools\php73\"'

# GIT
choco install -y git 

# 7Zip
choco install -y 7zip 