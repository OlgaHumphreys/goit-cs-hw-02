#!/bin/bash

# Список веб-сайтів для перевірки
websites=("https://google.com" "https://facebook.com" "https://twitter.com")

# Файл для збереження результатів
logfile="website_status.log"

# Очищення файлу логів перед використанням
> "$logfile"

# Перевірка кожного сайту
for site in "${websites[@]}"
do 
    if curl -s -L --head --request GET -w "%{http_code}\n" "$site" | grep "200" > /dev/null
    then 
        echo "up" >> "$logfile"
    else
        echo "down" >> "$logfile"
    fi
done

