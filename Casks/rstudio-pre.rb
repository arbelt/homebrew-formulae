cask 'rstudio-pre' do
  version '0.99.1273'
  sha256 'd2feccde47927fb37972e899887c009e4a0cc39bc08e22e6ee6efd9cba443b76'

  # amazonaws.com/rstudio-dailybuilds was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-dailybuilds/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
