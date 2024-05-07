# Dockerfile for PostgreSQL Database
FROM postgres:latest

# Set the default database, user, and password
ENV POSTGRES_DB=ope_market
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Copy the dump file to the container
COPY ./data/dumps/dump-ope_market-202404302111.sql /docker-entrypoint-initdb.d/

# No CMD or ENTRYPOINT needed, using defaults from the postgres image