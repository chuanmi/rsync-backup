
SET HOME=C:\GCM\cwRsync\
cd C:\GCM\cwRsync\

echo "Inicio rotación semanal">logrotacion.txt
date /t >>logrotacion.txt
time /t >>logrotacion.txt

ssh -i "/cygdrive/c/GCM/cwRsync/id_dsa" root@10.1.1.242 "mv /mnt/nfs/PRECON/pre-gal/C/Datos /mnt/nfs/PRECON/pre-gal/C/temporal && mv /mnt/nfs/PRECON/pre-gal/C/Datos.bkp /mnt/nfs/PRECON/pre-gal/C/Datos && mv /mnt/nfs/PRECON/pre-gal/C/Datos/temporal /mnt/nfs/PRECON/pre-gal/C/Datos.bkp" >>logrotacion.txt
rsync.exe -avz -e "/cygdrive/c/GCM/cwRsync/ssh -i /cygdrive/c/GCM/cwRsync/id_dsa" --modify-window=20 --include "+ */" --exclude "- *.[Pp][Ss][Tt]" "/cygdrive/c/Datos/" "root@10.1.1.242:/mnt/nfs/PRECON/pre-gal/C/Datos" >>logrotacion.txt
rsync.exe -avz -e "/cygdrive/c/GCM/cwRsync/ssh -i /cygdrive/c/GCM/cwRsync/id_dsa" --modify-window=20 --include "+ */" --exclude "- *.[Pp][Ss][Tt]" "/cygdrive/c/Usuarios/" "root@10.1.1.242:/mnt/nfs/PRECON/pre-gal/C/Usuarios"  >>logrotacion.txt

echo "Fin rotación">>logrotacion.txt
date /t >>log.txt
time /t >>log.txt