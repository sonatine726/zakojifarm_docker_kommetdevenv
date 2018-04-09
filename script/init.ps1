cp Gemfile app/Gemfile
docker-compose run --rm rails rails new /app --force --database=postgresql --skip-bundle --skip-test --skip-turbolinks
cp database.yml app/config/database.yml
docker-compose run --rm rails bundle exec spring binstub --all
