#Change the NAME variable with the name of your script
NAME=floods_reports

docker build -t $NAME --build-arg NAME=$NAME .
docker run --log-driver=syslog --log-opt syslog-address=$LOG --log-opt tag=$NAME -v $(pwd)/data:/opt/$NAME/data --name $NAME --env-file .env --rm $NAME python main.py
