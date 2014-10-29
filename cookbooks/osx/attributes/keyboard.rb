default[:osx][:settings] += %{

  Keyboard access in Modals -> Yes
  defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

  Keyboard repeat rate -> Blazingly Fast
  defaults write NSGlobalDomain KeyRepeat -int 0

  Keyboard illumination -> Turn off after 5 min of inactivity
  defaults write com.apple.BezelServices kDimTime -int 300

  ASCII control characters using caret notation in standard text views -> Show
  defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

  Automatic spelling correction -> Disable
  defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

  Illuminate built-in MacBook keyboard in low light -> Yes
  defaults write com.apple.BezelServices kDim -bool true

}