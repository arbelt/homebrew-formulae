cask 'mro-current' do
  version '3.5.0'
  sha256 '105551BC5E6D4D6E1B24D328D27CAE01C63FE0A357076BB2599C9BE40E296F3A'

  url "https://mran.blob.core.windows.net/install/mro/#{version}/microsoft-r-open-#{version}.pkg"
  name 'Microsoft R Open'
  name 'MRO'
  homepage 'https://mran.revolutionanalytics.com'

  pkg "microsoft-r-open-#{version}.pkg"

  uninstall pkgutil: [
                       'com.microsoft.pkg.mro-gui',
                       'com.microsoft.pkg.mro-framework',
                       'com.microsoft.rservices.mro2',
                       'com.microsoft.rservices.mro1',
                     ],
            delete:  [
                       '/usr/bin/R',
                       '/usr/bin/Rscript',
                       '/Library/Frameworks/R.Framework/Versions/Current',
                       '/Library/Frameworks/R.Framework/Versions/3.5.0',
                     ]

  zap       delete: [
                      '~/.R',
                      '~/.RData',
                      '~/.Rapp.history',
                      '~/.Rhistory',
                      '~/.Rprofile',
                      '~/Library/R',
                      '~/Library/Caches/org.R-project.R',
                    ]

  caveats do
    files_in_usr_local
  end
end
