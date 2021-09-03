#!/bin/sh
echo "--------------------------------------------------------------"
echo "| /!\ PLEASE ENSURE THAT YOU HAVE DELETED THE VHSSL BLOCK /!\|"
echo "--------------------------------------------------------------"
echo "To do so please visit CyberPanel (Website > List Websites > Manage > vHosts)"
echo "for furhter reference please reference"
echo "https://pcx3.com/cyberpanel/cyberpanel-self-signed-certificate-issue/"

get_domain()
{
    echo "Enter the certificates domain you would like to rewnew"
    read domain
    verify_domain
}

is_lsws_running()
{
    systemctl is-active service --quiet && echo Service is running
}

restart_lsws()
{
    is_lsws_running    
    # systemctl restart lsws
}

check_acme_sh()
{
    # Check if acme.sh is installed
    echo "placeholder"
}

install_acme_sh()
{
    # wget -O -  https://get.acme.sh
    echo "placeholder"
}

upgrade_acme_sh()
{
    # run the acme.sh --upgrade
    echo "placeholder"
}

request_cert()
{
    echo "placeholder"
}


verify_domain()
{
    echo "The domain you have entered is" $domain "is this correct?";
    read -r -p "Are you sure? [y/N] " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            restart_lsws
            ;;
        *)
            get_domain
            ;;
    esac
}

get_domain