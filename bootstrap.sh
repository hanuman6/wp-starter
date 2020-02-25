#!/bin/sh
if ! wp cli version; then
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    sudo mv wp-cli.phar /usr/local/bin/wp
fi

if ! wp cli version; then
    echo "You have not installed WP-CLI. Set manually."
else
  cd public
  wp core download --locale=ja
  wp core config --dbname=scotchbox --dbuser=root --dbpass=root --dbhost=localhost --dbprefix=wp_
  wp core install --url=http://192.168.33.34/ --title=test --admin_user=admin --admin_password=admin --admin_email=test@example.com
fi