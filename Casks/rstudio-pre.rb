cask 'rstudio-pre' do
  version '0.99.1281'
  sha256 '1897fa5a0d78c2ebf9882d0e1b0f87d50c88567689b93110e1533475f8a79035'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
