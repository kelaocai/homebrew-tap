class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.5/anthro-env_0.1.5_macos_arm64.tar.gz"
      sha256 "b45c6e6abb2c73064163b39db8c42c74453739c92f8dc03106ceb7ed5916b2dc"
    end

    on_intel do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.5/anthro-env_0.1.5_macos_x86_64.tar.gz"
      sha256 "4b8afbbb5673bc26c5a9f4d2fae40f2e52051c05d774f57fa54a946d65dd7e94"
    end
  end

  def install
    bin.install "anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
