#!/bin/bash

sudo gitlab-backup create SKIP=registry,lfs GZIP_RSYNCABLE=yes STRATEGY=copy
sudo rsync -ah /etc/gitlab/gitlab.rb /var/opt/gitlab/backups/gitlab.rb
sudo rsync -ah /etc/gitlab/gitlab-secrets.json /var/opt/gitlab/backups/gitlab-secrets.json
