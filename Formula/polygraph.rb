require "language/node"

class Polygraph < Formula
  desc "CLI to work with Polygraph for agentic cross-repo coordination"
  homepage "https://trypolygraph.com"
  url "https://registry.npmjs.org/polygraph/-/polygraph-0.1.4.tgz"
  sha256 "9731324404a4d311995188b31824db79388115b7d170b397d0c809d4f5a5686c"
  license :cannot_represent # proprietary; mirrors npm "license": "proprietary"

  livecheck do
    url :stable
    strategy :npm
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_path_exists bin/"polygraph"
    assert_predicate bin/"polygraph", :executable?
  end
end
