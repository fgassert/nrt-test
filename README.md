# NRT Test

Dockerized Python3 script to download data and insert into CARTO table.

### Usage

Requires Docker.

`./start.sh` Build container and run script once.

### Modify

`Dockerfile` Define requirements here.

`.env.sample` Copy to .env to and add CARTO username and API key.

`src\__init__.py` Contains core logic for downloading, formatting, and uploading data.

`src\carto.py` Utility library for interacting with CARTO.

