class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.7/anthro-env_0.1.7_macos_arm64.tar.gz"
      sha256 "7b4492aeec578a8dd0453280d160fc980517abc262c817804fd89dfccd4e38c5"
    end

    on_intel do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.7/anthro-env_0.1.7_macos_x86_64.tar.gz"
      sha256 "21fbf81743a3a4c6bf08acb445a31d0f6f4756899b66767124d57b434f71a8b2"
    end
  end

  def install
    bin.install "anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
