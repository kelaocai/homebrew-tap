class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.2.0/anthro-env_0.2.0_macos_arm64.tar.gz"
      sha256 "d7def522aadcc9afecab75b80bbc9a5422ae586f5952c99dbe777114e0b23467"
    end

    on_intel do
      url "https://github.com/kelaocai/anthro-env/releases/download/v0.2.0/anthro-env_0.2.0_macos_x86_64.tar.gz"
      sha256 "c4c90afaacfacbb6ff55d154add04401e001c267a646732abfed134af4889d71"
    end
  end

  def install
    bin.install "anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
