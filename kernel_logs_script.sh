#!/bin/bash

time=$(date +"%Y-%m-%dT%H-%M")
logfile="kernel-logs-$time.txt"
zipfile="kernel-logs-$time.tar.bz2"

onehour=$(date -d '1 hour ago' +'%Y-%m-%d %H:%M:%S')

journalctl -k -S "$onehour" > "$logfile"

tar -cvjf "$zipfile" "$logfile"
//doesnt work this command , I try to fix 
// dbxcli put "$zipfile" /path/to/dropbox/folder

rm "$logfile" "$zipfile"
