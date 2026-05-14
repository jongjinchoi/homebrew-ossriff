class Ossdive < Formula
  desc "HN OSS curation CLI"
  homepage "https://github.com/jongjinchoi/ossdive"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jongjinchoi/ossdive/releases/download/v0.3.0/ossdive-darwin-arm64.tar.gz"
      sha256 "8c0e9461d5691bf432b16a9019dc194f0fa7a422c5a2430a2b0c712ff20410f3"
    end
    on_intel do
      url "https://github.com/jongjinchoi/ossdive/releases/download/v0.3.0/ossdive-darwin-x64.tar.gz"
      sha256 "b9823eea6f931f74b244bbfe96027aef3fbd3e41d2bc86d5ff442edc6a95da12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jongjinchoi/ossdive/releases/download/v0.3.0/ossdive-linux-arm64.tar.gz"
      sha256 "1e158eb6612ab44048145f7725b61ce9651e98a227ba48007433f5795461d94f"
    end
    on_intel do
      url "https://github.com/jongjinchoi/ossdive/releases/download/v0.3.0/ossdive-linux-x64.tar.gz"
      sha256 "9f9fb17a6167f5ed6187e19210c559fa1a50a4bdb8d6bb79a6087d36e94e7c9f"
    end
  end

  def install
    bin.install Dir["*"].reject { |f| File.extname(f) == ".gz" }.first => "ossdive"
  end

  test do
    system "\#{bin}/ossdive", "--version"
  end
end
