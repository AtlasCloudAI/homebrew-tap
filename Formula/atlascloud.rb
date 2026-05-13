class Atlascloud < Formula
  desc "CLI for AtlasCloud AI models"
  homepage "https://atlascloud.ai"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.3/cli_0.1.3_darwin_arm64.tar.gz"
      sha256 "efea0d3c2f7125a7dbbc5db153ad56e1b5a1b5212927f54550e0fe323e987e30"
    else
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.3/cli_0.1.3_darwin_amd64.tar.gz"
      sha256 "7521fa94ef49b282467bb3445c72bbf51033822ef7276e7510d9c00c4781d013"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.3/cli_0.1.3_linux_arm64.tar.gz"
      sha256 "bf5e0d173a1ae1d8401d7ce705a5145230ec305c70c113d6cead89bd10e54fe4"
    else
      url "https://github.com/AtlasCloudAI/cli/releases/download/v0.1.3/cli_0.1.3_linux_amd64.tar.gz"
      sha256 "fb3a05f0eb4a3adaa259da0d04b28d7b4547ec572cee0a7f304c33bc18199f66"
    end
  end

  def install
    bin.install "atlas"
  end

  test do
    assert_match "atlas-cli #{version}", shell_output("#{bin}/atlas version")
  end
end
