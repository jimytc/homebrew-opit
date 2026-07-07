class Opit < Formula
  desc "Terminal UI for viewing and playing with OpenAPI documents"
  homepage "https://github.com/jimytc/opit"
  url "https://github.com/jimytc/opit/releases/download/v0.1.0/opit-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "e59e34bbb881efc9b773d45c76387c206c58514586d4d3bfe60e29fa50a7e7ef"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "opit"
  end

  test do
    system "#{bin}/opit", "--help"
  end
end
