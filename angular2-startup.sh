#!/usr/bin/env bash

type npm >/dev/null 2>&1 || (echo "You must install \`npm\` before running this script." && exit 0);

__dirname="${PWD##*/}"
__date=`date +%-m/%-d/%y`
__user=`whoami`

main() {

  while read -p "name: (${__dirname}) " __app_name; do

    if [ -z "${__app_name}" ]; then
      __app_name="${__dirname}"
      break
    fi

    echo "${__app_name}" | egrep " |[A-Z]" >/dev/null 2>&1

    if [ "${?}" -eq 0 ]; then
      echo "Project name can't contain spaces or uppercase letters.."
    else
      break;
    fi

  done

  read -p "description: " __app_description
  if [ -z "${__app_description}" ]; then
    __app_description="";
  fi

  git clone https://github.com/hehly/angular2-starter.git

  if [ -d "angular2-starter" ]; then
    mv "angular2-starter" "${__app_name}"
  fi

  cd "${__app_name}" || exit 1

  sed -i '' "s|{APP_NAME}|${__app_name}|" "package.json"
  sed -i '' "s|{APP_DESC}|${__app_description}|" "package.json"

  sed -i '' "s|{APP_NAME}|${__app_name}|" "gulpfile.js"
  sed -i '' "s|{USER}|${__user}|" "gulpfile.js"
  sed -i '' "s|{DATE}|${__date}|" "gulpfile.js"

  sed -i '' "s|{APP_NAME}|${__app_name}|" "index.html"

  sed -i '' "s|{APP_NAME}|${__app_name}|g" "app/app.component.ts"
  sed -i '' "s|{USER}|${__user}|" "app/app.component.ts"
  sed -i '' "s|{DATE}|${__date}|" "app/app.component.ts"

  sed -i '' "s|{APP_NAME}|${__app_name}|" "app/main.ts"
  sed -i '' "s|{USER}|${__user}|" "app/main.ts"
  sed -i '' "s|{DATE}|${__date}|" "app/main.ts"

  npm install && npm start

}

main