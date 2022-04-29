# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Change the auto-update behavior
zstyle ':omz:update' mode auto

# Plugins you like to load
plugins=(
	last-working-dir
	bundler
	web-search
	brew
	extract
	history
	sudo
	#yarn
	dotenv
	rake
	git 
	autojump 
	zsh-autosuggestions 
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
POWERLINE_SCRIPT=/usr/share/powerline/bindings/bash/powerline.sh
source $POWERLINE_SCRIPT

######################################
# ros source the environment
######################################
source /opt/ros/melodic/setup.zsh
source ~/rover_ws/devel/setup.zsh
#source ~/catkin_47250ws/devel/setup.zsh
#source ~/mirobot_ws/devel/setup.zsh
#source ~/Unity-Robotics-Hub/tutorials/pick_and_place/ROS/devel/setup.zsh
#source ~/moveit_ws/devel/setup.zsh
#source /home/jerry/unity_robotics_hub_recurse_clone/Unity-Robotics-Hub/tutorials/pick_and_place/ROS/devel/setup.zsh

######################################
# Set personal aliases
######################################
source ~/zshscripts/alias

######################################
# Ros uri setting
######################################
export ROS_MASTER_URI=http://192.168.50.110:11311
export ROS_IP=192.168.50.110

######################################
# my own zsh scripts
######################################
source ~/zshscripts/showRosInfoOnTop
