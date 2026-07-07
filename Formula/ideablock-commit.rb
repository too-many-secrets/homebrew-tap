class IdeablockCommit < Formula
  desc "Anchor every git commit on the Bitcoin blockchain"
  homepage "https://app.ideablock.com"
  url "https://registry.npmjs.org/ideablock-commit/-/ideablock-commit-2.0.0.tgz"
  sha256 "085a68c56520c986f43f3b123d39eada442fb7f3654c645460a353c6290b92b1"
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
