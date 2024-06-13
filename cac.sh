main ()
{
    install


    # Finishing Move
    bash -c "$(wget https://raw.githubusercontent.com/jdjaxon/linux_cac/main/cac_setup.sh -O -)"
}
install ()
{
    # Install and fix chrome
    wget -O google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
    apt-get --fix-broken install

    # Install and register CAC Utils
    apt-get install opensc opensc-pkcs11
    pkcs11-register

    # Create shortcut to run google
    touch ./root/Desktop/Google
    echo '#!/bin/bash' > ./root/Desktop/Google
    echo 'google-chrome-stable --no-sandbox' >> ./root/Desktop/Google
    chmod 777 ./root/Desktop/Google


    # Create cmd Alias
    echo alias google='google-chrome-standard --no-sandbox' >> ~/.bashrc

}
main
