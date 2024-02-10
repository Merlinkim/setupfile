#bin file edit
handle_error(){
    echo"Error occurred during installation. check the detail"
    exit 1
}
trap 'handle_error' ERR

#pyenv installation
curl http:./pyenv.ruu | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(penv virtualenv-init-)"' >> ~/.bashrc
source ~/.bash

#2.poetry 
curl -ssl http://install.python-poetry.org | python3 -

# vscode
sudo snap install --classic code

#5. python 3.8.10 설치
pyenv install 3.8.10
pyenv virtualenv 3.8.10 ml_env
pyenv activate mlenv

#6. lib install
pip install pandas
pip install scikit-learn
pip install torch

htop