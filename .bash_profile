# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:/Users/dhyanesh/Library/Python/3.9/bin:${PATH}"
export PATH

eval "$(/opt/homebrew/bin/brew shellenv)"

# Created by `pipx` on 2024-12-23 09:37:03
export PATH="$PATH:/Users/dhyanesh/.local/bin"
