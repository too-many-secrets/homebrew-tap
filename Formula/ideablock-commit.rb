class IdeablockCommit < Formula
  desc "Anchor every git commit on the Bitcoin blockchain"
  homepage "https://app.ideablock.com"
  url "https://registry.npmjs.org/ideablock-commit/-/ideablock-commit-3.1.2.tgz"
  sha256 "fb688ec4296a99fb749a269d0921b7f12655436bbaa334c03dc686128ad09da5"
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
