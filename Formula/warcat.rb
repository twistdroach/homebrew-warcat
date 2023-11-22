class Warcat < Formula
  desc "Warcat us a WARC (WebARChive) manipulation command line utility."
  homepage "https://code.moldybits.net/moldybits/warcat"
  url "https://code.moldybits.net/moldybits/warcat/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "93f5d06c8ace8030d384826a394348a3db8d83f63fd32c7b0b27d9a202234570"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/warcat"
    man1.install "target/assets/warcat.1"
  end

  test do
    # This test is not good!
    system "#{bin}/warcat", "--version"
  end
end
