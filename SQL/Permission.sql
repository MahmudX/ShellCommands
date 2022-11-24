-- I have no idea what is written down here

GRANT ALL ON database_name.* to 'root'@'0.0.0.0' IDENTIFIED BY 'password';

-- sudo ufw allow from [ip] to any port 3306

GRANT ALL ON fooDatabase.* TO root@[ip] IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON yourDB.* TO dbuser@’%’ IDENTIFIED WITH mysql_native_password BY ‘password.’;
GRANT ALL PRIVILEGES ON database.* TO 'root'@'[ip]';

-- ssh -o "IdentitiesOnly yes" -i ~/.ssh/fideloperllc.pem -L 3333:localhost:3306 root@[ip]

CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'mydbuser'@'%' IDENTIFIED WITH mysql_native_password BY 'password.';
GRANT ALL PRIVILEGES ON * . * TO 'new_mydbuser'@'%' WITH GRANT OPTION;

-- telenet [ip]

CREATE USER 'mynewuser'@'%' IDENTIFIED BY 'password.';
GRANT ALL ON *.* TO 'mynewuser'@'%';
FLUSH PRIVILEGES;

CREATE USER 'icepandauser'@'%' IDENTIFIED BY 'password'; 
GRANT ALL ON *.* TO 'icepandauser'@'%';

ALTER USER 'icepandauser'@'%' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;

-- https://askubuntu.com/a/1333602/1605129
