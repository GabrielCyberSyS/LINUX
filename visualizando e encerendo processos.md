ps visualiza os processos


# ┌──(cyber㉿LAPTOP1)-[~]
└─$ ps a
    PID TTY      STAT   TIME COMMAND
    219 hvc0     Ss+    0:00 /sbin/agetty -o -- \u
    220 tty1     Ss+    0:00 /sbin/agetty -o -- \u
    249 pts/0    Ss     0:00 -bash
    317 pts/1    Ss+    0:00 -bash
    381 pts/0    R+     0:00 ps a

# ┌──(cyber㉿LAPTOP1)-[~]
└─$ ps au
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         219  0.0  0.0   5156  1608 hvc0     Ss+  20:57   0:00 /sbin/agetty -o -- \u --noreset --n
root         220  0.0  0.0   5112  1468 tty1     Ss+  20:57   0:00 /sbin/agetty -o -- \u --noreset --n
cyber        249  0.0  0.0   7284  4236 pts/0    Ss   20:57   0:00 -bash
cyber        317  0.0  0.0   4332  3736 pts/1    Ss+  20:57   0:00 -bash
cyber        382  0.0  0.0   9324  4152 pts/0    R+   20:58   0:00 ps au

# ┌──(cyber㉿LAPTOP1)-[~]
└─$ ps aux
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.6  0.1  22788 14220 ?        Ss   20:57   0:00 /sbin/init
root           2  0.0  0.0   2776  1920 ?        Sl   20:57   0:00 /init
root           8  0.0  0.0   2776     4 ?        Sl   20:57   0:00 plan9 --control-socket 7 --log-leve
root          40  0.3  0.0   8368  5012 ?        Ss   20:57   0:00 /usr/sbin/haveged --Foreground --ve
root          45  0.1  0.1  41964 15680 ?        Ss   20:57   0:00 /usr/lib/systemd/systemd-journald
root          57  0.2  0.1  32732 10556 ?        Ss   20:57   0:00 /usr/lib/systemd/systemd-udevd
root         111  0.0  0.0   4268  2548 ?        Ss   20:57   0:00 /usr/sbin/cron -f
message+     113  0.0  0.0   7172  4448 ?        Ss   20:57   0:00 /usr/bin/dbus-daemon --system --add
polkitd      123  0.1  0.1 381540  9188 ?        Ssl  20:57   0:00 /usr/lib/polkit-1/polkitd --no-debu
root         136  0.1  0.0  17948  8336 ?        Ss   20:57   0:00 /usr/lib/systemd/systemd-logind
root         219  0.0  0.0   5156  1608 hvc0     Ss+  20:57   0:00 /sbin/agetty -o -- \u --noreset --n
root         220  0.0  0.0   5112  1468 tty1     Ss+  20:57   0:00 /sbin/agetty -o -- \u --noreset --n
root         247  0.0  0.0   2784   204 ?        Ss   20:57   0:00 /init
root         248  0.0  0.0   2784   208 ?        S    20:57   0:00 /init
cyber        249  0.0  0.0   7284  4236 pts/0    Ss   20:57   0:00 -bash
root         250  0.0  0.0   7264  4308 ?        Ss   20:57   0:00 login -- cyber
cyber        276  0.1  0.1  21964 12736 ?        Ss   20:57   0:00 /usr/lib/systemd/systemd --user
cyber        282  0.0  0.0  21664  1616 ?        S    20:57   0:00 (sd-pam)
cyber        313  0.0  0.0   7176  1836 ?        Ss   20:57   0:00 /usr/bin/mpris-proxy
cyber        314  0.0  0.0  93672  7808 ?        Ssl  20:57   0:00 /usr/bin/pipewire
cyber        315  0.0  0.0  82008  4876 ?        Ssl  20:57   0:00 /usr/bin/pipewire -c filter-chain.c
cyber        317  0.0  0.0   4332  3736 pts/1    Ss+  20:57   0:00 -bash
cyber        318  0.0  0.1 396236 15800 ?        Ssl  20:57   0:00 /usr/bin/wireplumber
cyber        319  0.0  0.0  95936  7948 ?        Ssl  20:57   0:00 /usr/bin/pipewire-pulse
cyber        327  0.0  0.0   6636  3544 ?        Ss   20:57   0:00 /usr/bin/dbus-daemon --session --ad
rtkit        337  0.0  0.0  21428  1664 ?        SNsl 20:57   0:00 /usr/libexec/rtkit-daemon
cyber        383  0.0  0.0   9324  4072 pts/0    R+   20:59   0:00 ps aux



Comando  kill

killall chrome   mata todos processos do chrome 

**kill numero do processo**  **exemplo kill 1234**

w  verifica quais usuario logados no monento 
┌──(cyber㉿LAPTOP1)-[~]
└─$ w
 21:03:10 up 5 min,  2 users,  load average: 0.00, 0.00, 0.00
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
cyber    pts/1    -                20:57    5:40   0.00s   ?    -bash
cyber             -                20:57    5:44   0.00s  0.13s /usr/lib/systemd/systemd --user


─$ who -a
           system boot  2025-04-14 20:57

mostra pin do user

kill  pin do user ex kill 133






