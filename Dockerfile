FROM postgres:13.4-alpine

COPY cron/backup-cron.sh /usr/local/bin/
COPY cron/crontab_root /var/spool/cron/crontabs/root
COPY container-cmd.sh /container-cmd.sh
RUN chmod 755 /usr/local/bin/backup-cron.sh /container-cmd.sh
CMD /container-cmd.sh