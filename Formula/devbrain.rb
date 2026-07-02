# devbrain — prebuilt binary formula (no compiler needed).
# Generated for v1.0.0; assets live on the GitHub release.
class Devbrain < Formula
  desc "Turn the prompts you write into a durable, queryable brain any agent can resume from"
  homepage "https://github.com/TheWeiHu/devbrain"
  version "1.0.0"
  license "MIT"

  BASE = "https://github.com/TheWeiHu/devbrain/releases/download/v1.0.0"

  on_macos do
    on_arm do
      url "#{BASE}/devbrain_1.0.0_darwin_arm64.tar.gz"
      sha256 "600da50a13887acfb4e150b1fecb05cb631e2154ce7c4ba89e6e35234bbfe489"
    end
    on_intel do
      url "#{BASE}/devbrain_1.0.0_darwin_amd64.tar.gz"
      sha256 "8474a474b29de4e5c39d76cf3cb571b10a918407a757a34840f54e5aaf93bbda"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE}/devbrain_1.0.0_linux_arm64.tar.gz"
      sha256 "150eb0e578135af78c4ba0edeed7b70de2d658f9147d748d7aa89527979c8953"
    end
    on_intel do
      url "#{BASE}/devbrain_1.0.0_linux_amd64.tar.gz"
      sha256 "b3df0a7496358ca3b75854d3ea7ece534d7ee1c1bcb31f2d55b9b5b26a0ed179"
    end
  end

  def install
    bin.install "devbrain"
  end

  def caveats
    <<~EOS
      Wire this machine (hooks, skills, dashboard):
        devbrain install
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devbrain version")
  end
end
