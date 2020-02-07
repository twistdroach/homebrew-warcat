class HelloWorld < Formula
  desc "Rust that simply prints 'Hello, world!'"
  homepage "https://github.com/JLDLaughlin/homebrew_hello_world"
  url "https://github.com/JLDLaughlin/rust_hello_world/releases/download/0.1.0/hello.tar.gz"
  version "0.1.0"
  sha256 "fd68121200c67ae5f3b4856a7061e5070ac4c64c0b293134e0889e257d6f34f4"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "hello"
    bin.install "target/release/hello"
  end

  test do
    # This test is not good!
    system "#{bin}/hello", "--version"
  end
end