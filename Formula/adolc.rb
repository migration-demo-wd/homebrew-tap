class Adolc < Formula
  desc "Checker wether a Ado should be updated"
  homepage "https://github.com/migration-demo-wd/adolc-demo"
  version "v0.0.12"
  license "MIT"
  
  # Define all platform-specific URLs and SHA256 checksums
  if Hardware::CPU.intel?
    url "https://github.com/migration-demo-wd/adolc-demo/releases/download/v0.0.12/-osx-x64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif Hardware::CPU.arm?
    url "https://github.com/migration-demo-wd/adolc-demo/releases/download/v0.0.12/-osx-arm64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  # Linux (assuming x64)
  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/migration-demo-wd/adolc-demo/releases/download/v0.0.12/-linux-x64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    elsif Hardware::CPU.arm?
      url "https://github.com/migration-demo-wd/adolc-demo/releases/download/v0.0.12/-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    # Installation commands depending on platform
    bin.install "adolc"
  end
end
