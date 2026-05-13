class Atlascloud < Formula
  desc "CLI for AtlasCloud AI models"
  homepage "https://atlascloud.ai"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.2/cli_0.1.2_darwin_arm64.tar.gz"
      sha256 "c9a3a365766114200c1fbbb2f387aa652b00ac15eda3490c2c2dfcf957766a75"
    else
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.2/cli_0.1.2_darwin_amd64.tar.gz"
      sha256 "43608a19965beba51e523100a1c91d3394cd32407a4c5da51b3881ee665cde5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.2/cli_0.1.2_linux_arm64.tar.gz"
      sha256 "fdaa2c451fad859aafd1f0303cc59d3c914bbe08f95707118a1fcfec4e438eaf"
    else
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.2/cli_0.1.2_linux_amd64.tar.gz"
      sha256 "3487528865b91f9107b75a66088f21c36cc7a7c2949f26124651a20c43b744e1"
    end
  end

  def install
    bin.install "atlas"
  end

  test do
    assert_match "atlas-cli #{version}", shell_output("#{bin}/atlas version")
  end
end
