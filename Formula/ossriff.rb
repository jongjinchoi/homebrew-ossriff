class Ossriff < Formula
  desc "HN OSS curation CLI"
  homepage "https://github.com/jongjinchoi/ossriff"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jongjinchoi/ossriff/releases/download/v0.2.0/ossriff-darwin-arm64.tar.gz"
      sha256 "2e2af5cede10f94067b6aa17013b4cd1ea77b4e34974516114eca0e10d89e0bc"
    end
    on_intel do
      url "https://github.com/jongjinchoi/ossriff/releases/download/v0.2.0/ossriff-darwin-x64.tar.gz"
      sha256 "bf92ca390cf3ac8cb9ed716553210410c2c10f029e120808451212fd6635a0db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jongjinchoi/ossriff/releases/download/v0.2.0/ossriff-linux-arm64.tar.gz"
      sha256 "7dbcf1c41a68f4bfb935f15bc810d7db3e750954dd70822d06013d11b1b7ad87"
    end
    on_intel do
      url "https://github.com/jongjinchoi/ossriff/releases/download/v0.2.0/ossriff-linux-x64.tar.gz"
      sha256 "649a1ff591901287588fc2ad383c26e11769b752ff9f28b914ef1076a03192f6"
    end
  end

  def install
    bin.install Dir["*"].reject { |f| File.extname(f) == ".gz" }.first => "ossriff"
  end

  test do
    system "\#{bin}/ossriff", "--version"
  end
end
