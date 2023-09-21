#!/usr/bin/env zsh

#Set Vars
set -a
. ${HOME}/.config/restic.env
set +a

restic backup --verbose --tag systemd.timer --tag $(hostname -s) --exclude-file=${HOME}/.config/restic.exclude $BACKUP_PATHS
#restic forget --verbose --tag systemd.timer --tag $(hostname -s) --group-by "paths,tags" --keep-daily $RETENTION_DAYS --keep-weekly $RETENTION_WEEKS --keep-monthly $RETENTION_MONTHS --keep-yearly $RETENTION_YEARS
restic forget --verbose --tag systemd.timer --tag $(hostname -s) --group-by "paths,tags" --keep-within-daily 7d --keep-within-monthly 1m --keep-within-yearly 1y
restic cache --cleanup
