class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.8/anthro-env_0.1.8_macos_arm64.tar.gz"
      sha256 "ec69a90bfb8cc218b111b423fbdf0f91932e194efc6b1203a9ede4cee7000b8f"
    end

    on_intel do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.1.8/anthro-env_0.1.8_macos_x86_64.tar.gz"
      sha256 "e93c3acc0d72462062cb967378f3f3c945f66aa3c71adb57c9cb6b882df069d7"
    end
  end

  def install
    bin.install "anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
