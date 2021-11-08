function getPassword {
    LC_ALL=C tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' </dev/urandom | head -c $1 ; echo
}

function helpInfo {
    echo "
        $ generate_key.sh <key_length>
    "
}

if [ -z "$1" ]
    then
        echo "[ERROR]: Не переданн аргумент командой строки используйте --help для просмотра"
    elif [ "$1" = "--help" ]
        then
            helpInfo
    else 
        echo `getPassword $1`
fi