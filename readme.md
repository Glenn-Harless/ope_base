# Social Media Analytics and Machine Learning Platform

This project is designed to provide comprehensive analytics and machine learning insights based on social media data from platforms like Twitter, Instagram, and Reddit. It utilizes Docker to ensure reproducibility and consistency across different environments.

## Features

- **Data Ingestion**: Scripts to load data from various sources into a PostgreSQL database.
- **Analysis**: Jupyter notebooks and Python scripts for performing detailed data analysis.
- **Machine Learning**: Training and prediction models to forecast trends and analyze user behavior.
- **Visualization**: Integration with Metabase for data visualization and dashboards.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have Docker and Docker Compose installed on your machine to build and run the containers. Visit [Docker's website](https://www.docker.com/get-started) for installation instructions.

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/yourprojectname.git
cd yourprojectname
```

## Database Setup

Before starting the application, you will need to set up the database using the provided SQL dump file. Follow these steps to download and save the file to data/dumps/dump-ope_market-202404302111.sql

### Downloading the Database Dump

The database dump is hosted on Dropbox. You can download it by following the link below:

[Download Database Dump](https://www.dropbox.com/scl/fi/nfulnfshgnnmfj3a7w9pr/dump-ope_market-202404302111.sql?rlkey=ywa2dkwoo10z59ouewf39btkk&st=zn22orkz&dl=0)


# Build and run the Docker containers
docker-compose up --build
This command builds the images if they do not exist and starts the containers.

# Usage
Access Jupyter Notebook: Open your web browser and go to http://localhost:8888 to access the Jupyter notebooks.
View Metabase Dashboards: Go to http://localhost:3000 to access Metabase and visualize the data.
Interact with PostgreSQL: The PostgreSQL database is accessible on localhost:5432.

# Jupyter Notebooks Overview

Each Jupyter notebook in this project serves a specific purpose in analyzing and extracting insights from social media data. Here are the details for each notebook:

### Bot Detection Notebook

- **Purpose**: Utilize the Isolation Forest algorithm to detect potential bots on various social media platforms. 
- **Key Analyses**:
  - Analyze patterns in activity frequency and engagement rates.
  - Identify unusual behavior indicative of bots, enhancing the integrity of social media interactions.

### User Segmentation Notebook

- **Purpose**: Segment social media users by clustering them based on their engagement patterns. This segmentation supports targeted marketing and community building efforts.
- **Key Analyses**:
  - Cluster influential users to identify key demographics and user groups.
  - Utilize engagement data to tailor marketing strategies effectively.

### Trend Analysis Notebook

- **Purpose**: Examine the fluctuations in user engagement metrics over time, such as likes, shares, and comments, to identify trends and patterns.
- **Key Analyses**:
  - Track engagement trends to determine when users are most active.
  - Analyze the factors that influence peaks and troughs in user engagement, providing actionable insights for content strategists and marketers.

# Authors
Glenn Harless

Acknowledgments
Hat tip to anyone whose code was used
Inspiration