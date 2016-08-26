cask 'rstudio-pre' do
  version '0.99.1294'
  sha256 'fe56d0e80e90678ce1831a58140b3261d5790ce72ef737c680c7c1bd5b8f559a'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
