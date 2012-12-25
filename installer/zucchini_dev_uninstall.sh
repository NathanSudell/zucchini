# 1. Uninstall Zucchini
sudo gem uninstall zucchini-ios-badoo

# 2. Uninstall coffee-script (http://coffeescript.org/#installation)
npm uninstall -g coffee-script

# 3. Uninstall Node.js
brew unlink node
rm -rf /usr/local/bin/node-waf
rm -rf /usr/local/share/man/man1/node.1
sudo rm -rf /usr/local/lib/node
brew uninstall node

# 4. Uninstall imagemagick
brew unlink imagemagick
brew uninstall imagemagick

# 5. Uninstall Homebrew
sh brew_uninstall.sh
sudo rm -rf /usr/local/.git

