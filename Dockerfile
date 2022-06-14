FROM postgis/postgis
COPY ./init.sql /docker-entrypoint-initdb.d/
ENV POSTGRES_DB=treetracker_db
ENV POSTGRES_USER=treetracker
ENV POSTGRES_PASSWORD=treetracker
EXPOSE 5432
