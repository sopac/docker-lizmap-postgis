mkdir var
mkdir tmp
sudo chmod 777 -R projects/*
docker run --name "lizmap" -p 80:80 -d -t -v $(pwd)/projects:/home -v $(pwd)/var:/var/www/websig/lizmap/var -v $(pwd)/tmp:/tmp jancelin/docker-lizmap:latest

