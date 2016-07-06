cask 'rstudio-pre' do
  version '0.99.1249'
  sha256 'f2b8541170bc8bb2efd17dabba00e2df76e44c7dd764c870447c1d5673ccd7f7'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
