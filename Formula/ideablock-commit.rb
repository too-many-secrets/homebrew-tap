class IdeablockCommit < Formula
  desc "Anchor every git commit on the Bitcoin blockchain"
  homepage "https://app.ideablock.com"
  url "https://registry.npmjs.org/ideablock-commit/-/ideablock-commit-3.1.1.tgz"
  sha256 "8b66437a3af9cbda14febcd9e4b607b21da04edbd346d4d42db317298890b605"
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
