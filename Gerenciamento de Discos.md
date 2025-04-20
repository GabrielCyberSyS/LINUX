Particao 
![image](https://github.com/user-attachments/assets/b6b77793-2ad2-441a-9d11-4ba358513708)

## Comandos

```bash
cisco@labvm:~$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 23.4G  0 disk            ## DISCO SECUDARIO 
├─sda1   8:1    0    1M  0 part            particao do disco 1
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
----------------------------------
 ## fdisk /dev/sdb 

Dentro do fdisk, siga estes passos:

> Digite n → Criar nova partição.

Escolha o tipo:

p (partição primária, recomendado se for a única partição).

e (partição estendida, se quiser criar várias partições lógicas).

Defina o número da partição (geralmente 1 para a primeira).

Setor inicial: Pressione Enter para usar o padrão.

Setor final:

Pressione Enter para usar todo o disco.

Ou especifique um tamanho (ex.: +20G para 20 GB).

Verifique as alterações com p (exemplo de saída):

Copy
Device     Boot Start      End  Sectors Size Id Type
/dev/sdb1       2048 20971519 20969472  10G 83 Linux
Salve com w para aplicar as alterações.

## Salve com w para aplicar as alterações.

---------------------------------------
Formatando a partição
~~~~  mkfs.ext4 /dev/sdb
~~~~

# Montando e desmontando discos

sudo mkdir /mnt/disco2g
sudo mount /dev/sdb /mnt/disco2


df -h | grep disco2

cisco@labvm:/mnt/disco2$ lsblk
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 23.4G  0 disk 
├─sda1   8:1    0    1M  0 part 
└─sda2   8:2    0 23.4G  0 part /
sdb      8:16   0    1G  0 disk /mnt/disco2
sdc      8:32   0    1G  0 disk 

cisco@labvm:/mnt/disco2$ df -h | grep disco2
/dev/sdb        974M   24K  907M   1% /mnt/disco2
---------------------------------------------------------

Para montar o disco sempre que o sistema iniciar, edite o arquivo /etc/fstab:

bash
Copy
sudo nano /etc/fstab
#adicionar a linha
/dev/sdb  /mnt/disco2  ext4  defaults  0  2

---------------------------------------------------






