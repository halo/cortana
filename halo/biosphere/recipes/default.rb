logg(%{Cookbook <b>biosphere</b> started...}) { color :magenta }

include_recipe 'augmentations'
include_recipe 'dotfiles'
include_recipe 'homebrew'
include_recipe 'rbenv'
include_recipe 'casks'

logg(%{Cookbook <b>biosphere</b> finished.}) { color :magenta }
