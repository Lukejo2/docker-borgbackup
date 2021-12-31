# docker-borgbackup
Dockerfile for running BorgBackup as a kubernetes cronjob with the backup contents from mounted volumes


# Environment Variables

`BORG_REPO`: Path to the mounted borg backup repository  
`BORG_PASSPHRASE`: Backup repository passphrase

# Mounted Volumes
`/backup`: The borg backup repository should be mounted here
`/backup-source`: Anything mounted here will be backed up by borg