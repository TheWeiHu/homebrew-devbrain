# devbrain — prebuilt binary formula (no compiler needed).
# Generated for v1.2.0; assets live on the GitHub release.
class Devbrain < Formula
  desc "Turn the prompts you write into a durable, queryable brain any agent can resume from"
  homepage "https://github.com/TheWeiHu/devbrain"
  version "1.2.0"
  license "MIT"

  BASE = "https://github.com/TheWeiHu/devbrain/releases/download/v1.2.0"

  on_macos do
    on_arm do
      url "#{BASE}/devbrain_1.2.0_darwin_arm64.tar.gz"
      sha256 "033a90ee7684d6469e9c909b6e3c208d8450b48c8b3d977cc07b9cebe2746a4c"
    end
    on_intel do
      url "#{BASE}/devbrain_1.2.0_darwin_amd64.tar.gz"
      sha256 "36da12f0e499e27da4614777dc1fdd1bdb8d4940e700b26a045427f010c2ffba"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE}/devbrain_1.2.0_linux_arm64.tar.gz"
      sha256 "83a8dc5c923d47e25c19614fff60251945259afcccbda8662be46458e9ba5c4c"
    end
    on_intel do
      url "#{BASE}/devbrain_1.2.0_linux_amd64.tar.gz"
      sha256 "a9a4bdad040c91e4e7966ad2ebf2ab1509aa410ccddec7b272c2f6360cabb866"
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
