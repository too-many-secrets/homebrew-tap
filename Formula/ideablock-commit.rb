class IdeablockCommit < Formula
  desc "Anchor every git commit on the Bitcoin blockchain"
  homepage "https://app.ideablock.com"
  url "https://registry.npmjs.org/ideablock-commit/-/ideablock-commit-2.1.0.tgz"
  sha256 "5e467714ccdcd410d48d6b5265a87e0326b8264cb90b369a62f71a71181d83a4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "ideablock", shell_output("#{bin}/ideablock-commit --help")
  end
end
