class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.4/anthro-env_0.1.4_macos_arm64.tar.gz"
      sha256 "610886a7cb3cbaf9a5d5e3ae59c9c0e8693f614d18b9fbfa91d883a251804844"
    end

    on_intel do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.4/anthro-env_0.1.4_macos_x86_64.tar.gz"
      sha256 "73ef58fb02967c02b198ad79892af5543b34d376db0473aaacfb6e7eaeef296d"
    end
  end

  def install
    bin.install "anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
