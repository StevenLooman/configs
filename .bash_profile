# base-files version 3.7-1

# To pick up the latest recommended .bash_profile content,
# look in /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# ~/.bash_profile: executed by bash for login shells.

# source the system wide bashrc if it exists
if [ -e /etc/bash.bashrc ] ; then
  source /etc/bash.bashrc
fi

# source the users bashrc if it exists
if [ -e "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH=${HOME}/bin:${PATH}
fi

# Set MANPATH so it includes users' private man if it exists
if [ -d "${HOME}/man" ]; then
  MANPATH=${HOME}/man:${MANPATH}
fi

# Set INFOPATH so it includes users' private info if it exists
if [ -d "${HOME}/info" ]; then
  INFOPATH=${HOME}/info:${INFOPATH}
fi

PS1="[\u@\h \w]\\$ "


##
# Your previous /Users/steven/.bash_profile file was backed up as /Users/steven/.bash_profile.macports-saved_2010-07-31_at_20:14:47
##

# MacPorts Installer addition on 2010-07-31_at_20:14:47: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# locales
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


export MONO_MWF_MAC_FORCE_X11=true
export SONAR_RUNNER_HOME=${HOME}/opt/sonar-runner-1.3
export ANDROID_SDK_HOME=${HOME}/src/android/android-sdk-mac_x86
export PATH=$PATH:${SONAR_RUNNER_HOME}/bin

export EDITOR=vim
export PAGER=less
