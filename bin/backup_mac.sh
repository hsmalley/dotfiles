#!/usr/bin/env zsh

#Set Vars
set -a
. "$HOME"/.config/restic.env
set +a

/opt/homebrew/bin/restic backup --verbose --tag systemd.timer --tag hughmac --exclude-file="$HOME"/.config/restic.exclude "$BACKUP_PATHS"
#/opt/homebrew/bin/restic forget --verbose --tag systemd.timer --tag hughmac --group-by "paths,tags" --keep-daily $RETENTION_DAYS --keep-weekly $RETENTION_WEEKS --keep-monthly $RETENTION_MONTHS --keep-yearly $RETENTION_YEARS
/opt/homebrew/bin/restic cache --cleanup