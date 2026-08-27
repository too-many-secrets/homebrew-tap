class IdeablockCommit < Formula
  desc "Anchor every git commit on the Bitcoin blockchain"
  homepage "https://app.ideablock.com"
  url "https://registry.npmjs.org/ideablock-commit/-/ideablock-commit-3.1.0.tgz"
  sha256 "a53ca5e79490067971f243c33c41465251489ce24691a628f277b8c735846002"
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
