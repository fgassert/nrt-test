# NRT Test

Dockerized Python3 cron script to download data and insert into CARTO table.

### Usage

Requires Docker.

`.env.sample` Copy to `.env` and add keys.

`./run.sh` Build container and run script once.

`./run-cron.sh` Build container and start cron.

### Modify

`Dockerfile` Define requirements here.

`contents\` Copied into container.

`contents\src\__init__.py` Contains core logic for downloading, formatting, and uploading data.

`contents\src\carto.py` Utility library for interacting with CARTO.

`contents\time.cron` Set crontab frequency here.
