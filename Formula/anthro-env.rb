class AnthroEnv < Formula
  desc "macOS Anthropic environment profile manager"
  homepage "https://github.com/kelaocai/anthro-env"
  url "https://github.com/kelaocai/anthro-env/archive/refs/tags/v0.1.1-alpha.tar.gz"
  sha256 "6337bea23f20aed3a1450d1eb848c5ead4bb521aeb66ce465d538f7886a8d519"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/anthro-env"
  end

  test do
    assert_match "anthro-env commands", shell_output("#{bin}/anthro-env --help")
  end
end
