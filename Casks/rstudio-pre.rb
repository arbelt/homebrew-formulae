cask 'rstudio-pre' do
  version '1.0.20'
  sha256 '5d642bf95a4804f1168a174447988fdca19225b2016e9ca18bc9ca7ea6351d7c'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
