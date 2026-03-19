class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.6/anthro-env_0.1.6_macos_arm64.tar.gz"
      sha256 "3f3518393cb64053db09ce40711ae8c53cad7a2abeabfe66c116766b2549591e"
    end

    on_intel do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.6/anthro-env_0.1.6_macos_x86_64.tar.gz"
      sha256 "4872980aa22f78a325409c6538fcaae0fbd8d83439b73db62bef2e5e2fa524ed"
    end
  end

  def install
    bin.install "anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
