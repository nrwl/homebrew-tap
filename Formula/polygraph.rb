require "language/node"

class Polygraph < Formula
  desc "Polygraph CLI for agentic cross-repo coordination"
  homepage "https://trypolygraph.com"
  url "https://registry.npmjs.org/polygraph/-/polygraph-0.1.0.tgz"
  sha256 "073e0354760358e387f10127499d4d3aa65003657f8174bb78ff93bde668342e"
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
