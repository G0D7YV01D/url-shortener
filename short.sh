url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\n\e[1;31;42m######┌──────────────────────────┐##### \e[0m"
echo -e "\e[1;31;42m######│▙▗▌      ▌  ▛▀▖▌  ▗    ▌  │##### \e[0m"
echo -e "\e[1;31;42m######│▌▘▌▝▀▖▞▀▘▌▗▘▙▄▘▛▀▖▄ ▞▀▘▛▀▖│##### \e[0m"
echo -e "\e[1;31;42m######│▌ ▌▞▀▌▝▀▖▛▚ ▌  ▌ ▌▐ ▝▀▖▌ ▌│##### \e[0m"
echo -e "\e[1;31;42m######│▘ ▘▝▀▘▀▀ ▘ ▘▘  ▘ ▘▀▘▀▀ ▘ ▘│##### \e[0m"
echo -e "\e[1;31;42m######└──────────────────────────┘##### \e[0m \n"
echo -e "\e[40;38;5;82m Please Visit \e[30;48;5;82m https://www.kalilinux.in \e[0m"
echo -e "\e[30;48;5;82m    Copyright \e[40;38;5;82m   JayKali \e[0m \n\n"
echo -e "\e[1;31;42m ### URL ###\e[0m \n"
echo -n "Paste URL here (with http or https): "
read url
url_checker $url
sleep 1
echo "Processing and Modifing URL"
echo ""
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Masking Domain ###\e[0m"
echo 'Domain to mask the URL (with http or https), ex: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nType social engineering words:(like free-money, best-pubg-tricks)'
echo -e "\e[31mDon't use space just use '-' between social engineering words\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerating MaskPhish Link...\n"
final=$mask$words
echo -e "Here is the MaskPhish URL:\e[32m ${final} \e[0m\n"
