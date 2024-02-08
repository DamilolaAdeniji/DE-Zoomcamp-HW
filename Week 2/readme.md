# Project Overview

This directory contains Python files representing modular blocks utilized for constructing pipelines in Mage AI. 

## Objective

The primary aim of this project is to facilitate the extraction of taxi ride data within a specified timeframe. Subsequently, the data undergoes basic transformation and cleaning procedures. Finally, leveraging Mage AI, the transformed dataset is seamlessly loaded into both PostgresDB and Google Cloud Platform (GCP) buckets.

## Structure
- [extract_data](https://github.com/DamilolaAdeniji/DE-Zoomcamp-HW/blob/main/Week%202/extract_data.py) extracts the data from a github repo.
- [transform_data](https://github.com/DamilolaAdeniji/DE-Zoomcamp-HW/blob/main/Week%202/transform_data.py) applies a series of transformation steps and cleaning logic on the extracted dataset.
- [data_export](https://github.com/DamilolaAdeniji/DE-Zoomcamp-HW/blob/main/Week%202/data_export.py) takes the transformed data and stores it in my docker postgres db.
- [partitioned_load_to_gcs](https://github.com/DamilolaAdeniji/DE-Zoomcamp-HW/blob/main/Week%202/partitioned_load_to_gcs.py) takes the transformed data and stores it in my google cloud storage bucket in partitions - this is usually helpful when storing large datasets.

- The docker_files directory contains the dockerfile and the docker compose file used to set up my mage image container and the pg database 

## Usage

1. Clone this repository to your local environment.
2. Utilize the modular Python files to construct pipelines in Mage AI.
3. Configure the timeframe for extracting taxi ride data as per your requirements.
4. Execute the pipelines to apply basic transformation and cleaning procedures.
5. Integrate with Mage AI to seamlessly load the transformed data into GCP buckets.

## Dependencies

- Python
- Mage AI
- Google Cloud Platform (GCP)