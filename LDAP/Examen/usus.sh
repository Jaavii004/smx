#!/bin/bash

usua="gnoll06 gnoll07 gnoll08 gnoll09 gnoll10"
incremen=6
#sudo ldapadd -x -W -D "cn=admin,dc=ubuntusrv,dc=smx2023,dc=net" -f Users.ldif -H ldap://192.168.5.119

for i in $usua; do
	echo "dn: cn=$i,cn=gnolls,dc=ubuntusrv,dc=smx2023,dc=net" >> Users.ldif
	echo "givenName: $i" >> Users.ldif
	echo "sn: $i" >> Users.ldif
	echo "cn: $i" >> Users.ldif
	echo "uid: $i" >> Users.ldif
	echo "userPassword:: 1234" >> Users.ldif
	echo "gidNumber: 501" >> Users.ldif
	echo "homeDirectory: /home/users/$i" >> Users.ldif
	echo "loginShell: /bin/bash" >> Users.ldif
	echo "objectClass: inetOrgPerson" >> Users.ldif
	echo "objectClass: posixAccount" >> Users.ldif
	echo "objectClass: top" >> Users.ldif
	echo "uidNumber: 2300$incremen" >> Users.ldif
	echo "" >> Users.ldif
	((incremen ++))
done

sudo ldapadd -x -W -D "cn=admin,dc=ubuntusrv,dc=smx2023,dc=net" -f Users.ldif -H ldap://192.168.5.121

exit 0
