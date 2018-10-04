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

# 安装搜狗输入法
sudo apt-get remove ibus
sudo apt-get purge ibus
sudo  apt-get remove indicator-keyboard
sudo apt install fcitx-table-wbpy fcitx-config-gtk
im-config -n fcitx
sudo shutdown -r now
wget http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb?st=ryCwKkvb-0zXvtBlhw5q4Q&e=1529739124&fn=sogoupinyin_2.2.0.0108_amd64.deb
sudo dpkg --force-depends -i sogoupinyin_2.2.0.0108_amd64.deb
sudo apt-get install -f
fcitx-config-gtk3
## 输入法皮肤透明问题
fcitx设置 >>附加组件>>勾选高级 >>取消经典界面
Configure>>  Addon  >>Advanced>>Classic
