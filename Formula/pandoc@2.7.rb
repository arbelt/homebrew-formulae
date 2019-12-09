require "language/haskell"

class PandocAT27 < Formula
  include Language::Haskell::Cabal

  desc "Swiss-army knife of markup format conversion"
  homepage "https://pandoc.org/"
  url "https://hackage.haskell.org/package/pandoc-2.7.3/pandoc-2.7.3.tar.gz"
  sha256 "a877203379ec5179716d6999f76352229d7f40f5bec70dbfa48c140848cef236"
  head "https://github.com/jgm/pandoc.git"

  bottle do
    root_url "https://dl.bintray.com/arbelt/bottles-formulae"
    rebuild 1
    sha256 "58e1e800795360dea408e0919c7e1be3efa693e81463cd2d48761ea33d7042a6" => :catalina
  end

  depends_on "cabal-install" => :build
  depends_on "ghc@8.6" => :build

  def install
    cabal_sandbox do
      install_cabal_package
    end
    (bash_completion/"pandoc").write `#{bin}/pandoc --bash-completion`
    man1.install "man/pandoc.1"
  end

  test do
    input_markdown = <<~EOS
      # Homebrew

      A package manager for humans. Cats should take a look at Tigerbrew.
    EOS
    expected_html = <<~EOS
      <h1 id="homebrew">Homebrew</h1>
      <p>A package manager for humans. Cats should take a look at Tigerbrew.</p>
    EOS
    assert_equal expected_html, pipe_output("#{bin}/pandoc -f markdown -t html5", input_markdown)
  end
end
