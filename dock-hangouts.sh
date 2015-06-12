#!/bin/bash
# Take Google's Hangouts app and dock it in th. system tray.
# Hangouts: https://chrome.google.com/webstore/detail/hangouts/knipolnnllmklapflnccelgolnpehhpl?utm_source=chrome-app-launcher-info-dialog
# Set this to run in the background when your desktop environment starts and 
# Hangouts can once again join the world of civilised IM apps.

kdocker -w $(wmctrl -l|grep 'Hangouts -'|cut -f 1 -d' ') -i $HOME/.local/share/icons/hicolor/128x128/apps/chrome-knipolnnllmklapflnccelgolnpehhpl-Default.png
