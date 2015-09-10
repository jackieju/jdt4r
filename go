thin start --ssl -p 3001 &
thin start -p 3000 &
tail -f log/development.log &
