class ProxySw < Formula
  desc "macOS system proxy manager for local proxy tools like Clash"
  homepage "https://github.com/kelaocai/proxy-sw"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kelaocai/proxy-sw/releases/download/v0.1.2/proxy-sw_0.1.2_macos_arm64.tar.gz"
      sha256 "0a6860a6760e42f385fc69aa32ba005e82ac02d97f6a518dbcf5bd421b4312e2"
    end

    on_intel do
      url "https://github.com/kelaocai/proxy-sw/releases/download/v0.1.2/proxy-sw_0.1.2_macos_x86_64.tar.gz"
      sha256 "4dd13e43e3c53709a6df621a8c90391cb3230efb4f43b52d0df5eb7758ea1a52"
    end
  end

  def install
    bin.install "proxy-sw"
  end

  test do
    assert_match "proxy-sw commands", shell_output("#{bin}/proxy-sw --help")
  end
end
