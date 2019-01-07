#!/bin/sh
#    My bad ass motd
#    Authors: Roman Agilov <agilovr@gmail.com>

printf "Welcome to Agilov web dev Vagrant build\n"
printf "This build based on %s\n" "$(lsb_release -s -d)"

printf "You can find it on:  https://github.com/agilov/webdev\n"

printf "\n"
printf "What is on board:\n"
printf "  - GNU Midnight Commander (type 'mc' to run)\n"
printf "  - Nginx\n"
printf "  - Git: %s \n" "$(git --version)"
printf "  - Chrome headless: %s \n" "$(google-chrome --version)"
printf "  - ChromeDriver (globally): %s \n" "$(chromedriver -v)"
printf "\n"

printf "Data management stuff:\n"
printf "  - PostgreSQL: %s \n" "$(psql --version)"
printf "  - ClickHouse: %s \n" "$(clickhouse-client --version)"
printf "  - Redis: %s \n" "$(redis-cli -v)"
printf "  - Memcached: %s \n" "$(memcached --version)"
printf "\n"

printf "PHP:\n"
printf "  - PHP 7.2\n"
printf "  - Composer (globally)\n"
printf "  - Xdebug (enabled)\n"
printf "\n"

printf "Other languages:\n"
printf "  - Golang\n"
printf "  - Java (Open JDK)\n"
printf "  - Python 3 (with PIP3)\n"
printf "  - NodeJS %s (with Yarn %s)\n" "$(node --version)" "$(yarn --version)"
printf "\n"

# System info
printf "\n"
echo -n "System information as of "
/bin/date
echo
/usr/bin/landscape-sysinfo

printf "\n"
stamp="/var/lib/update-notifier/updates-available"

[ ! -r "$stamp" ] || cat "$stamp"

printf "\n"
printf "If you don't want to see this bullshit anymore, run:\n"
printf "$ touch \$HOME/.hushlogin\n"
printf "\n"
