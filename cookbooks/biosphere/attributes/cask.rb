default[:biosphere][:cask][:caskroom] = File.join(ENV['BIOSPHERE_SPHERE_PATH'], 'caskroom')
default[:biosphere][:cask][:applinks] = File.join(ENV['BIOSPHERE_SPHERE_PATH'], 'caskapps')

default[:biosphere][:cask][:apps] = %w{
  bitmessage
  cyberduck
  disk-inventory-x
  firefox
  jsonlook
  keka
  mumble
  qlimagesize
  qlmarkdown
  qlprettypatch
  qlsteven
  quicksilver
  textmate
  tor-browser
  vienna-rss
}

if %w{ red blue }.include? ENV['BIOSPHERE_ENV_PROFILE']
  default[:biosphere][:cask][:apps] += %w{
    appcleaner
    audacity
    gimp
    google-chrome
    hipchat
    inkscape
    seashore
    sequel-pro
  }
end

if %w{ red }.include? ENV['BIOSPHERE_ENV_PROFILE']
  default[:biosphere][:cask][:apps] += %w{
    blender
    handbrake
    handbrakebatch
    keyremap4macbook
    soundflower
    teamviewer
    xbox360-controller-driver
  }
end

if %w{ blue }.include? ENV['BIOSPHERE_ENV_PROFILE']
  default[:biosphere][:cask][:apps] += %w{
  }
end
