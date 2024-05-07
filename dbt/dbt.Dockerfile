# Dockerfile for dbt
FROM python:3.8-slim

# Set up the environment
WORKDIR /dbt

# Install dbt
RUN pip install dbt

# Copy dbt project files
COPY . /dbt/

# Default command: dbt run
CMD ["dbt", "run"]
