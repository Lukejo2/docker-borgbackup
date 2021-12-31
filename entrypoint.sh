#!/bin/sh
if [[ ! $BORG_REPO ]];
then
  echo "ENV BORG_REPO must be provided!"
  exit 1
fi

if [[ ! $BORG_PASSPHRASE ]];
then
  echo "ENV BORG_PASSPHASE must be provided!"
  exit 1
fi

borg init --encryption repokey
borg config $BORG_REPO additional_free_space 10G
borg list
exec ./backup.sh