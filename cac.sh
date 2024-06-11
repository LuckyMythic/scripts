main ()
{
    install
    bash -c "$(wget https://raw.githubusercontent.com/jdjaxon/linux_cac/main/cac_setup.sh -O -)"
}
install ()
{
    # Update and install google while fixing any errors
    apt update
    apt upgrade
    apt-get install google-chrome-stable 2> /dev/null
    apt --fix-broken install

    # Create shortcut to run google
    touch /root/Desktop/Google.sh
    echo '#!/bin/bash' > /root/Desktop/Google.sh
    echo 'google-chrome-stable --no-sandbox' >> /root/Desktop/Google.sh
    chmod 777 /root/Desktop/Google.sh

}
main
