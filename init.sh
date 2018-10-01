# Install miniconda or anaconda
pip install setuptools pipenv ipython python-dev python3-dev bs4 openpyxl
conda create -n py27 python=2.7

# SourceCodePro
mkdir ~/.fonts
cd ~/.fonts
wget https://github.com/adobe-fonts/source-code-pro/releases/download/variable-fonts/SourceCodeVariable-Italic.ttf
wget https://github.com/adobe-fonts/source-code-pro/releases/download/variable-fonts/SourceCodeVariable-Roman.ttf
fc-cache

sudo apt-get install git tig build-essential cmake python-dev python3-dev

