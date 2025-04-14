Particao 
![image](https://github.com/user-attachments/assets/b6b77793-2ad2-441a-9d11-4ba358513708)

## Comandos

```bash
cisco@labvm:~$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 23.4G  0 disk 
├─sda1   8:1    0    1M  0 part 
└─sda2   8:2    0 23.4G  0 part /
sdb      8:16   0    1G  0 disk           ## DISCO SECUDARIO 
└─sdb1   8:17   0 1023M  0 part 
sdc      8:32   0    1G  0 disk 
````
````
isco@labvm:~$ sudo fdisk -l
[sudo] password for cisco: 
Disk /dev/sda: 23.44 GiB, 25165824000 bytes, 49152000 sectors        ###########  DISCO PRIMARIO COM 24 GB
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 9C6E45E7-C049-4D5F-8D5E-8B1A593CF686

Device     Start      End  Sectors  Size Type              ####  PARTICOES
/dev/sda1   2048     4095     2048    1M BIOS boot
/dev/sda2   4096 49149951 49145856 23.4G Linux filesystem


Disk /dev/sdb: 1 GiB, 1073741824 bytes, 2097152 sectors           ############   DISCO SECUNDARIO SDB 1GB
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xe2894c0d

Device     Boot Start     End Sectors  Size Id Type
/dev/sdb1        2048 2097151 2095104 1023M 83 Linux


Disk /dev/sdc: 1.04 GiB, 1115038720 bytes, 2177810 sectors
Disk model: VBOX HARDDISK   
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

````


COMO DISCO E NOVO NAO ESTA DISPONIVEL PRECISA SER MONTANDO 

fdisk /dev/sdb 
