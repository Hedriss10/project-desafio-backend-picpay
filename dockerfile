FROM postgres:latest

ENV POSTGRES_DB=apirestdjangoframework
ENV POSTGRES_USER=root
ENV POSTGRES_PASSWORD=1234

RUN mkdir -p /etc/postgresql && \
    echo "host    all    all    0.0.0.0/0    md5" > /etc/postgresql/pg_hba.conf

EXPOSE 5432

CMD ["postgres"]
