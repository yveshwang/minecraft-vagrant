## minecraft client/server mucking about

15.08.2021
yh

## systemd

Please feel free to use the `minecraft-service.service` file to install on debian 10 for example. 

```
# symlink the service finto 
ln -s /home/stallo/minecraft/1.17.1/minecraft-service.service /etc/systemd/system/minecraft-service.service

# reload service daemon
systemctl daemon-reload

# start the service
systemctl start minecraft-service.service

# check status
systemctl status minecraft-service.service

# ensure it is availabe on next boot
systemctl enable minecraft-service.service

# service logs to syslog
tail -n 20 /var/log/syslog
```

## dependencies

* BiomesOPlenty-1.17.1-14.0.0.29-universal.jar
* forge-1.17.1-37.0.17-installer.jar

## Minecraft Client with BOP @ home

1. install minecraft laucher via home brew 
2. use java 16
3. install forge via commandline
4. ??
5. profit! 

## Minecraft Server with BOP @ home

1. install sdk man
2. use java 16
3. install server only `java -jar forge-x.xx.x-installer.jar --installServer`
4. set nogui
5. allow for 4gb ram
6. run to generate EULA and server.properties
7. fix EULA, toggle to true
8. kill app, copy mod jar to mod folder
9. edit server mod and add level

## Debian Buster issues off the ISO

* no network installed - fix network inteface by adding eno1 or whatever interface detected. ensure that auto is allowed only for one. hot-pluggable is fine.
* no dns - fix /etc/resolv.conf, systemd-resolved service will use that by default. if needed, fiddle with /etc/systemd/resolve 
* besure to enable the networkd and resolved services in systemd
* update the source.list file. cos its lacking. commentout cdrom
* fix keyboard 
* install dependencies
