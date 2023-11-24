echo 'installing mac applications...'
brew update
brew upgrade
brew install neovim
brew install --cask warp
brew install --cask mactex-no-gui

brew install pyenv
pyenv install 3.11.4
pyenv global 3.11.4
pip install numpy
pip install matplotlib
pip install pandas
pip install scipy
