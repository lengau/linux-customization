#!/bin/bash
# Take Google's Inbox app and dock it in the system tray.
# Inbox: https://chrome.google.com/webstore/detail/inbox-by-gmail/pkclgpgponpjmpfokoepglboejdobkpl?utm_source=chrome-app-launcher-info-dialog
# Set this to run in the background when your desktop environment starts and 
# Inbox can once again join the world of civilised Email apps.

inbox_window_id=$(wmctrl -l|grep 'Inbox –'|cut -f 1 -d' ')

while ! xwininfo -id $inbox_window_id; do
	sleep 0.2
done

while true; do 
	kdocker -w $inbox_window_id -i $HOME/.local/share/icons/hicolor/128x128/apps/chrome-pkclgpgponpjmpfokoepglboejdobkpl-Default.png
	
	sleep 90
done
