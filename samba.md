apt install samba
cd /disco2

mkdir publica
chmod 777 publica/

cisco@labvm:/mnt/disco2$ sudo nano /etc/samba/smb.conf 

[publica]

patch = /disco2/publica
writable = yes
guest ok = yes
guest only = yes


~~~~
cisco@labvm:/mnt/disco2$ systemctl restart smbd

cisco@labvm:/mnt/disco2$ systemctl status smbd
● smbd.service - Samba SMB Daemon
     Loaded: loaded (/lib/systemd/system/smbd.service; enabled; vendor preset: enabled)
     Active: active (running) since Sun 2025-04-20 00:46:50 UTC; 36s ago
       Docs: man:smbd(8)
             man:samba(7)
             man:smb.conf(5)
    Process: 2070 ExecStartPre=/usr/share/samba/update-apparmor-samba-profile (code=exited, status=0/SUCCESS)
   Main PID: 2080 (smbd)
     Status: "smbd: ready to serve connections..."
      Tasks: 4 (limit: 4625)
     Memory: 8.8M
        CPU: 133ms
     CGroup: /system.slice/smbd.service
             ├─2080 /usr/sbin/smbd --foreground --no-process-group
             ├─2082 /usr/sbin/smbd --foreground --no-process-group
             ├─2083 /usr/sbin/smbd --foreground --no-process-group
             └─2084 /usr/lib/x86_64-linux-gnu/samba/samba-bgqd --ready-signal-fd=45 --parent-watch-fd=11 --debuglevel=0 -F
~~~~
cisco@labvm:/mnt/disco2$ 


cisco@labvm:/mnt/disco2$ systemctl enable smbd
Synchronizing state of smbd.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable smbd

--------------------------------------
