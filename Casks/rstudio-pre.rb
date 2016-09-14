cask 'rstudio-pre' do
  version '1.0.14'
  sha256 '0d5a788e84eb2e0255fb0d34d89d208737dbe33ebe940db30be020fa9a3eb162'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
