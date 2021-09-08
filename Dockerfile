FROM alexbabel/s3backup:0.11.2

RUN apk add --no-cache mongodb-tools postgresql-client mysql-client python3 bash && rm -f /var/cache/apk/*

COPY mongodb.sh /usr/bin/mongodb.sh
COPY postgresql.sh /usr/bin/postgresql.sh
COPY mysql.sh /usr/bin/mysql.sh
COPY mysql-cmd.py /usr/bin/mysql-cmd.py

CMD /usr/bin/mongodb.sh
