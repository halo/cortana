default[:osx][:settings] += %{

  Set home page to `about:blank` for faster loading
  defaults write com.apple.Safari HomePage -string "about:blank"

  Allow hitting the Backspace key to go to the previous page in history
  defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

  Disable thumbnail cache for History and Top Sites
  defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

  Enable debug menu
  defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

  Make search banners default to Contains instead of Starts With
  defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

  Developer Menu
  defaults write com.apple.Safari IncludeDevelopMenu -bool true

  Webkit Developer Extras
  defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true

  Webkit2 Developer Extras
  defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

  Add a context menu item for showing the Web Inspector in web views
  defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

  Privacy: don’t send search queries to Apple
  defaults write com.apple.Safari UniversalSearchEnabled -bool false

  Show the full URL in the address bar (note: this still hides the scheme)
  defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

  New Tabs are empty
  defaults write com.apple.Safari NewTabBehavior -int 1

  New Tabs are empty
  defaults write com.apple.Safari SuppressSearchSuggestions -bool true
  
  Don't load the top-most search result automatically
  defaults write com.apple.Safari PreloadTopHit -bool false
  
  Don't show favorites under search bar
  defaults write com.apple.Safari ShowFavoritesUnderSmartSearchField -bool false
  
  Disable website specific search
  defaults write com.apple.Safari WebsiteSpecificSearchEnabled -bool false
  
  Always new Tabs, not new Windows
  defaults write com.apple.Safari TabCreationPolicy -int 2

  Don't autofill credit cards
  defaults write com.apple.Safari AutoFillCreditCardData -bool false

  Don't autofill contacts
  defaults write com.apple.Safari AutoFillFromAddressBook -bool false

  Don't autofill random forms
  defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

  Allow Cookies only from local site in Safari
  defaults write com.apple.Safari BlockStoragePolicy -int 3

  Allow Cookies only from local site in Webkit
  defaults write com.apple.Safari WebKitStorageBlockingPolicy -int 1

  Allow Cookies only from local site in Webkit 2
  defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2StorageBlockingPolicy -int 1

  Send to not track header
  defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

}
