cask 'rstudio-pre' do
  version '1.0.8'
  sha256 '9af177a80634000e004f8d0c4c65cdce4cfd2819383e9f4441026c67cb26c12a'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
