# zshrc
# 1.
```shell
  echo $0 
  # 先確認預設shell(通常為bash)

  zsh --version 
  # 確認電腦上沒有zsh
```
# 2.
```shell
  sudo apt-get update && sudo apt-get dist-upgrade -y
  # 更新software和security patches

  sudo apt-get install build-essential curl file git
  # 確保有1.build-essential 2.curl 3.file 4.git

  sudo apt install zsh
  zsh --version
  # 下載zsh，確認下載成功

  which zsh
  # 確認位置，預設為/usr/bin
```
# 3.
```zsh
  cat /etc/shells
  # 查看已經下載可運行之shells
  # 其中包含 which zsh 指令所顯示之zsh位置

  chsh -s $(which zsh)
  # change login shell的指令
  # 需要reboot
```
# 4.
```zsh
  # 打開terminal會有歡迎介面，並且要求你設定基本configuration
  # 不使用任何設定(oh-my-zsh有預設)
```
# 5.
```zsh
  sudo apt install git-core curl fonts-powerline
  # 確保有1.git-core 2.curl 3.fonts-powerline

  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  # 下載oh-my-zsh
```
# 6.
```zsh
  # 對照github上的.zshrc
  # https://github.com/jerryhuangyu/zshrc/blob/master/zshrc
  # 加入plugins，發現缺少

  # zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  # zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

  # autojump
  git clone https://github.com/wting/autojump.git
  # 進入資料夾執行install.py(可能需要先下載python-is-python3)
```
# 7.
```zsh
  # p10k

  # 需先手動下載字體
  # https://github.com/romkatv/powerlevel10k#manual-font-installation

  # 接著下載p10k
  # https://github.com/romkatv/powerlevel10k#oh-my-zsh
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  # Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.
```
# apt-install
```zsh
  sudo apt install tree
  sudo apt install python-is-python3
  sudo apt install htop
  sudo apt install locate
  sudo apt install trash-cli
```
# plugin method
```zsh
  python
    # mkv [name]
    # vrun [name]
    # deactivate
    # pyfind
    # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/python

  pip
    # this plugin adds completion for pip, the Python package manager.
    # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/pip
```
