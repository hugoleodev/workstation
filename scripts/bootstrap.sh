which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo "Installing homebrew..."
    yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating homebrew..."
    brew update
    
    if brew ls --versions ansible > /dev/null; then
        echo "Ansible package is installed"
    else
        echo "Installing ansible..."
        brew install ansible
    fi
fi