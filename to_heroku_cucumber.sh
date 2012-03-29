#tar czf hw4.tar.gz app/ config/ db/migrate features/ spec/ db/development.sqlite3 lib/ script/ Gemfile .rspec
git add .
git commit -m "$1" -a
git push heroku master
bundle exec cucumber features
if echo $2 | grep "git"; then
  git push origin master &
fi
