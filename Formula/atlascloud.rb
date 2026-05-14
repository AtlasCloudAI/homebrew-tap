class Atlascloud < Formula
  desc "CLI for AtlasCloud AI models"
  homepage "https://atlascloud.ai"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.5/cli_0.1.5_darwin_arm64.tar.gz"
      sha256 "2fa1d19b9b56a68251da5d9f5dcc57258ba2d2f6403ce3943858da9153a2eae2"
    else
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.5/cli_0.1.5_darwin_amd64.tar.gz"
      sha256 "3f2a7e38ebdc1b24122c55a1d43484c84f27acbcb5729af7c96e14d0d1ec62c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.5/cli_0.1.5_linux_arm64.tar.gz"
      sha256 "9bf4bbd3143c751dfae33e87bcb320dfca0c2a815e623dd87b4f290d875fe9e7"
    else
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.5/cli_0.1.5_linux_amd64.tar.gz"
      sha256 "3b09a08cef6231f477f50f5120c05e5a1b4e7693656dae2a011e392a7d85c0a1"
    end
  end

  def install
    bin.install "atlas"
  end

  test do
    assert_match "atlas-cli #{version}", shell_output("#{bin}/atlas version")
  end
end
