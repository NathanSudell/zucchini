#!/bin/sh

# Pre-requisites: These are all tested by `brew doctor` so the script will stop there if they haven't been installed.
# 0.1 Install XCode
# 0.2 Install Xcode command line tools
# 0.3 Set path for Xcode - check which one is correct first

# 1. Install Homebrew
/usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

# 2. Run 'brew doctor'
diagnosis=`brew doctor`
if [ "$diagnosis" != "Your system is raring to brew." ]; then
	echo $diagnosis
	echo " ---- INSTALL STOPPED. YOU NEED TO FIX THE ABOVE ERRORS. ---- "
	exit 
fi

# 3. Install imagemagick
brew update && brew install imagemagick

# 4. Install Node.js
brew install node

# 4.1 Install npm
curl http://npmjs.org/install.sh | sudo sh
export NODE_PATH="/usr/local/lib/node"

# 5. Install coffee-script (http://coffeescript.org/#installation)
npm install -g coffee-script

#6. Install Zucchini
sudo gem install zucchini-ios

