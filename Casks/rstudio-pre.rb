cask 'rstudio-pre' do
  version '0.99.1265'
  sha256 'ad06740c1fc144533144f27a021febe90bf424e4d5d1c684097581f6bbf686bc'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
