# devbrain — prebuilt binary formula (no compiler needed).
# Generated for v1.1.0; assets live on the GitHub release.
class Devbrain < Formula
  desc "Turn the prompts you write into a durable, queryable brain any agent can resume from"
  homepage "https://github.com/TheWeiHu/devbrain"
  version "1.1.0"
  license "MIT"

  BASE = "https://github.com/TheWeiHu/devbrain/releases/download/v1.1.0"

  on_macos do
    on_arm do
      url "#{BASE}/devbrain_1.1.0_darwin_arm64.tar.gz"
      sha256 "ff6ee9a579e0bbe9aff2d59dd091e112ff5414f65ca4a6e46e75ad91a6c1a5fb"
    end
    on_intel do
      url "#{BASE}/devbrain_1.1.0_darwin_amd64.tar.gz"
      sha256 "18d4f211754eaf9b53ac8f0afc87d1828eecb4f401e2c92b8be4b5243122ff87"
    end
  end

  on_linux do
    on_arm do
      url "#{BASE}/devbrain_1.1.0_linux_arm64.tar.gz"
      sha256 "7c7f8a147d4a224ef7348e014678ded0127187d0830aa695ac9d8aa0b2a464d5"
    end
    on_intel do
      url "#{BASE}/devbrain_1.1.0_linux_amd64.tar.gz"
      sha256 "ef2178b1b0b9d040dfe0524edb6a4719f79fe94fe294a0e8721eae4e568b5c45"
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
