### GIT Clone
cmd /C "git clone --branch develop https://github.com/PHPOffice/PHPPresentation.git C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPPresentation"
cmd /C "git clone --branch develop https://github.com/PHPOffice/PHPProject.git C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPProject"
cmd /C "git clone --branch master https://github.com/PHPOffice/PhpSpreadsheet.git C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PhpSpreadsheet"
cmd /C "git clone --branch develop https://github.com/PHPOffice/PHPVisio.git C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPVisio"
cmd /C "git clone --branch develop https://github.com/PHPOffice/PHPWord.git C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPWord"

### Composer Install
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPPresentation\
composer install
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPProject\
composer install
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PhpSpreadsheet\
composer install --ignore-platform-reqs
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPVisio\
composer install
cd C:\Users\vagrant\AppData\Roaming\Apache24\htdocs\PHPWord\
composer install