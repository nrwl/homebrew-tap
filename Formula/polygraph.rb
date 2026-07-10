require "language/node"

class Polygraph < Formula
  desc "CLI to work with Polygraph for agentic cross-repo coordination"
  homepage "https://trypolygraph.com"
  url "https://registry.npmjs.org/polygraph/-/polygraph-0.1.1.tgz"
  sha256 "4b7d0ca06ec64921ea1fca04642df20a67add1e2fea9d42f757f365f788c4ef3"
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
