# Makefile for easy command execution
# This Makefile contains commands to manage the lifecycle of Docker containers
# for a development environment that includes PostgreSQL and Metabase.

# Start all containers in detached mode (in the background).
# This command starts up all services defined in the docker-compose.yml file without blocking the terminal.
up:
	docker-compose up -d

# Stop and remove all containers.
# Use this command to cleanly shut down all running containers and remove them,
# freeing up all resources used by them.
down:
	docker-compose down

# Rebuild and start all containers.
# This is useful for applying changes to Dockerfiles or Docker configuration in docker-compose.yml.
# It ensures that the latest versions of your containers are built and then started.
rebuild:
	docker-compose up -d --build

# View logs from all containers.
# This command streams logs from all running containers to the terminal, allowing you to monitor their output in real time.
logs:
	docker-compose logs -f

# Connect to the PostgreSQL database using psql, the PostgreSQL command line interface.
# This provides an interactive terminal to manage your database directly.
psql:
	docker exec -it $(docker-compose ps -q postgres) psql -U myuser -d mydatabase

# Start Metabase service separately.
# This command can be used to start Metabase without affecting the state of other services.
start-metabase:
	docker-compose up -d metabase

# Stop Metabase service separately.
# Use this command to stop the Metabase service if it's no longer needed, without stopping other services.
stop-metabase:
	docker-compose stop metabase
