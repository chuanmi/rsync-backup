SET HOME=C:\cwRsync\
cd C:\cwRsync\

echo "Start Weekly Rotation" >>logrotation.txt
date /t >>logrotation.txt
time /t >>logrotation.txt

ssh -i "/cygdrive/c/certificate" user@IP \
					"mv /Destination/Daily /Destination/temp \
					&& mv /Destination/Weekly /Destination/Daily \
					&& mv /Destination/temp /Destination/Weekly" \
					>>logrotation.txt
							
rsync.exe -avz -e "/cygdrive/c/cwRsync/ssh -i /cygdrive/c/cwRsync/id_dsa" \ 
									--modify-window=20 \
									--include "+ */" \
									--exclude "- *.[Pp][Ss][Tt]" \
									"/Source" "user@IP:/Destination" \
									>>logrotation.txt


echo "Weekly Rotation Finished" >>logrotation.txt
date /t >>logrotation.txt
time /t >>logrotation.txt
