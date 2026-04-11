class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.9/anthro-env_0.1.9_macos_arm64.tar.gz"
      sha256 "e76c2a700482d4055bbbf296c747baf5aa0520b2159633bba22973c1c7b168bf"
    end

    on_intel do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.9/anthro-env_0.1.9_macos_x86_64.tar.gz"
      sha256 "bb3f68ca9f981b8ad2aeed663d6046590bc112b7b765726abf85a545d53ae062"
    end
  end

  def install
    bin.install "anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
