class Adolc < Formula
  desc "Checker wether a Ado should be updated"
  homepage "https://github.com/migration-demo-wd/adolc-demo"
  version "v0.0.17"
  license "MIT"
  
  # Define all platform-specific URLs and SHA256 checksums
  if Hardware::CPU.intel?
    url "https://github.com/migration-demo-wd/adolc-demo/releases/download/v0.0.17/adolc-osx-x64.tar.gz"
    sha256 "eb2254ac8c8dcc3fb376e7250508e698c67b225cbf03b39ba08e88753b98d83b"
  elsif Hardware::CPU.arm?
    url "https://github.com/migration-demo-wd/adolc-demo/releases/download/v0.0.17/adolc-osx-arm64.tar.gz"
    sha256 "8380ab2134a7f3c651b73eb67dba8cbad114ffc6931762770a1e398df18047d2"
  end

  # Linux (assuming x64)
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/migration-demo-wd/adolc-demo/releases/download/v0.0.17/adolc-linux-x64.tar.gz"
      sha256 "d13569065ceeb8355e38ed703b5618267b46a8a3e558b9baf47ae95d80b0f855"
    elsif Hardware::CPU.arm?
      url "https://github.com/migration-demo-wd/adolc-demo/releases/download/v0.0.17/adolc-linux-arm64.tar.gz"
      sha256 "fcc659c168fa22ad1baebae2c9af95a38fe3abdeb19b3919fe684884ece7f26f"
    end
  end

  def install
    # Installation commands depending on platform
    bin.install "adolc"
  end
end
