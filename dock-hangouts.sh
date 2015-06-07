#!/bin/bash
# Take Google's Hangouts app and dock it in th. system tray.
# Hangouts: https://chrome.google.com/webstore/detail/hangouts/knipolnnllmklapflnccelgolnpehhpl?utm_source=chrome-app-launcher-info-dialog
# Set this to run in the background when your desktop environment starts and 
# Hangouts can once again join the world of civilised IM apps.

while ! xwininfo -name 'Hangouts'; do
		sleep 0.2
	done

while true; do 
	kdocker -w $(xwininfo -name 'Hangouts'|grep 'Window id'|cut -d' ' -f 4) -i /home/lengau/.local/share/icons/hicolor/128x128/apps/chrome-knipolnnllmklapflnccelgolnpehhpl-Default.png
	
	sleep 90
done
