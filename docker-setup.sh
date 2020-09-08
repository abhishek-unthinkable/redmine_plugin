docker-compose build
docker-compose run --rm server rake db:create
docker-compose run --rm server rake db:migrate
docker-compose run --rm server rake db:seed
echo 'Run bin/dev-server to start the development server with docker'
