# 方案

## 分類

> sftp + NAS (synology) on Centos 7

```bash

上傳

$ sudo sftp backup_by_ftp@10.0.0.29

backup_by_ftp@10.0.0.29's password: … (詳細帳密請見）

==============

sftp> cd Backup/Gitlab/

sftp> put /var/opt/gitlab/backups/NUMBER_DATE_15.9.2-ee_gitlab_backup.tar

sftp> put /var/opt/gitlab/backups/gitlab.rb

sftp> put /var/opt/gitlab/backups/gitlab-secrets.json
```

```bash

下載

$ cd /the/path/your/want/to/store

$ sudo sftp backup_by_ftp@10.0.0.29

backup_by_ftp@10.0.0.29's password: … (詳細帳密請見）

==============

sftp> cd Backup/Gitlab/

sftp> get NUMBER_DATE_15.9.2-ee_gitlab_backup.tar

sftp> gitlab.rb

sftp> gitlab-secrets.json
```
