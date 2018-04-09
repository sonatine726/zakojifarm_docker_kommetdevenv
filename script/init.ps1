$ErrorActionPreference = "Stop"
mkdir rails
cp Gemfile rails/Gemfile
docker-compose run --rm rails rails new /app --force --database=postgresql --skip-bundle --skip-test --skip-turbolinks
cp database.yml rails/config/database.yml
docker-compose run --rm rails bundle exec spring binstub --all
