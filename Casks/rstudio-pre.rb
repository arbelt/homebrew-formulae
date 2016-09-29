cask 'rstudio-pre' do
  version '1.0.28'
  sha256 'fa62133a53628af6f7b881eca78960f71def3d604940d8d102d85e7a081781bf'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
