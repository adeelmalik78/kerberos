ROM liquibase/liquibase:4.2.2

#Install Kerberos client
# Install GNUPG for package vefification and WGET for file download
RUN apt-get update \
    && apt-get -yqq install krb5-user libpam-krb5 \
    && apt-get -yqq install gnupg wget \
    && rm -rf /var/lib/apt/lists/*
COPY --chown=liquibase:liquibase krb5.conf /etc/