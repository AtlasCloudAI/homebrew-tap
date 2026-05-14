class Atlascloud < Formula
  desc "CLI for AtlasCloud AI models"
  homepage "https://atlascloud.ai"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.4/cli_0.1.4_darwin_arm64.tar.gz"
      sha256 "7ecec7de529b06ea79a83c925e5db5d6498e2b03d2bcd47d58d3bb73bc8f76f3"
    else
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.4/cli_0.1.4_darwin_amd64.tar.gz"
      sha256 "d3bab2f0df5f286dc81167d4007ce0c9b83b268c54b37be6c686ad0d5575c795"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.4/cli_0.1.4_linux_arm64.tar.gz"
      sha256 "8f631403a6392788479b358958aa04ebde1125d5d4e5a6db5fcaa886927f9d8e"
    else
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.4/cli_0.1.4_linux_amd64.tar.gz"
      sha256 "b51a84411eacb6d17468530b3acbd6929d3d4f378dc7f1386baf4da2305114a8"
    end
  end

  def install
    bin.install "atlas"
  end

  test do
    assert_match "atlas-cli #{version}", shell_output("#{bin}/atlas version")
  end
end
