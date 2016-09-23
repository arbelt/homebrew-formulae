cask 'rstudio-pre' do
  version '1.0.23'
  sha256 'ddb692dcd71ab6f5f2d41a2cf1e8dbcc27e188ba5d35150c2f0529230edd76e8'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
