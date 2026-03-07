class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  version "0.1.3-alpha"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.3-alpha/anthro-env_0.1.3-alpha_macos_arm64.tar.gz"
      sha256 "9583b53e8399537d9e4ebd564fc629e88c5062844b9e480e1db9e7824377f8cf"
    end

    on_intel do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.3-alpha/anthro-env_0.1.3-alpha_macos_x86_64.tar.gz"
      sha256 "1b7e40d54b1bc079f0b1d4794655c5e320f354df0b63ca1969ac64baba693e70"
    end
  end

  def install
    bin.install "anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
