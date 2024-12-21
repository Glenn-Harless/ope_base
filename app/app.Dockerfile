# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Install system packages required for Python C extensions
RUN apt-get update && apt-get install -y \
    && apt-get -y install libpq-dev gcc \
    gcc \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy the contents of the packages and other necessary directories into the container at /app
COPY ./packages /app/packages
COPY ./notebooks /app/notebooks
COPY ./app/requirements.txt /app/requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install Jupyter
RUN pip install jupyter

# Set PYTHONPATH so Python knows where to find custom modules in other directories
ENV PYTHONPATH /app

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
