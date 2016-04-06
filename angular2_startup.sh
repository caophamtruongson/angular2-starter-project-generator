#!/usr/bin/env bash

__dirname="${PWD##*/}"
__date=`date +%-m/%-d/%y`
__user=`whoami`

main() {

  git clone https://github.com/hehly/angular2-starter.git
  cd angular2-starter || exit 1

  read -p "name (spaces will cause crash) : (${__dirname}) " _app_name
#  read -p "description: (\"\") " _app_description

  if [ -z ${_app_name} ]; then _app_name=${__dirname}; fi
#  if [ -z ${_app_description} ]; then _app_description=""; fi

  _app_description="";

  sed -i '' "s|{APP_NAME}|${_app_name}|" "package.json"
  sed -i '' "s|{APP_DESC}|${_app_description}|" "package.json"

  sed -i '' "s|{APP_NAME}|${_app_name}|" "gulpfile.js"
  sed -i '' "s|{USER}|${__user}|" "gulpfile.js"
  sed -i '' "s|{DATE}|${__date}|" "gulpfile.js"

  sed -i '' "s|{APP_NAME}|${_app_name}|" "app/app.component.ts"
  sed -i '' "s|{USER}|${__user}|" "app/app.component.ts"
  sed -i '' "s|{DATE}|${__date}|" "app/app.component.ts"

  sed -i '' "s|{APP_NAME}|${_app_name}|" "app/main.ts"
  sed -i '' "s|{USER}|${__user}|" "app/main.ts"
  sed -i '' "s|{DATE}|${__date}|" "app/main.ts"

}

main
