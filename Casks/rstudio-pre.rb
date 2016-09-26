cask 'rstudio-pre' do
  version '1.0.25'
  sha256 '626e50eac54fe263b608b95bfdb0652ae3dc9d2342c2c2f707b73464d8385ec1'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
