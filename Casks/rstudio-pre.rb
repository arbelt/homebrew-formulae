cask 'rstudio-pre' do
  version '0.99.1251'
  sha256 '7fd7d6654c2983ddfedc62d709b4aba06292ee232dbffb5984b840c41a6ff186'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
