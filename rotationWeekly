SET HOME=C:\cwRsync\
cd C:\cwRsync\

echo "Start Weekly Rotation" >>logrotation.txt
date /t >>logrotation.txt
time /t >>logrotation.txt

ssh -i "/cygdrive/c/certificate" user@IP \
							"mv /mnt/nfs/PRECON/pre-gal/C/Datos /mnt/nfs/PRECON/pre-gal/C/temporal \
							&& mv /mnt/nfs/PRECON/pre-gal/C/Datos.bkp /mnt/nfs/PRECON/pre-gal/C/Datos \
							&& mv /mnt/nfs/PRECON/pre-gal/C/Datos/temporal /mnt/nfs/PRECON/pre-gal/C/Datos.bkp" >>logrotacion.txt
							
rsync.exe -avz -e "/cygdrive/c/cwRsync/ssh -i /cygdrive/c/cwRsync/id_dsa" \ 
							--modify-window=20 \
							--include "+ */" \
							--exclude "- *.[Pp][Ss][Tt]" \
							"/Source" "user@IP:/Destination" >>logrotacion.txt


rsync.exe -avz -e "/cygdrive/c/cwRsync/ssh -i /cygdrive/c/cwRsync/id_dsa" \
					--modify-window=20 \
					--include "+ */" \
					--exclude "- *.[Pp][Ss][Tt]" \
					"/Source" "user@IP:/Destination"  >>logrotacion.txt

echo "Weekly Rotatin Finished" >>logrotation.txt
date /t >>logrotation.txt
time /t >>logrotation.txt
