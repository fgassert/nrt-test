#Change the NAME variable with the name of your script
NAME=nrt-test

docker build -t $NAME --build-arg NAME=$NAME .
docker run -v $(pwd)/contents/data:/opt/$NAME/data --name $NAME --env-file .env --rm $NAME
