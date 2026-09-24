class Polygraph < Formula
  desc "CLI to work with Polygraph for agentic cross-repo coordination"
  homepage "https://trypolygraph.com"
  version "0.1.5"
  license :cannot_represent # proprietary; mirrors npm "license": "proprietary"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/nx-public-builds-70m638/polygraph-cli/0.1.5%2B8280e8990a03/polygraph-darwin-arm64"
      sha256 "0c10d88cd086d48815ba1a4a5bc14ee8820b8dc78e08a2bbaf68ebd03fdbcc3b"
    end
    on_intel do
      url "https://storage.googleapis.com/nx-public-builds-70m638/polygraph-cli/0.1.5%2B8280e8990a03/polygraph-darwin-x64"
      sha256 "789d86545df55af974487b092358bc5371c43df51c150d21306e4d70b4afcaea"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/nx-public-builds-70m638/polygraph-cli/0.1.5%2B8280e8990a03/polygraph-linux-arm64"
      sha256 "74eb6c2797583e03cdb88658162b237215e9722d067ea9b69e7d6bd1c13b480b"
    end
    on_intel do
      url "https://storage.googleapis.com/nx-public-builds-70m638/polygraph-cli/0.1.5%2B8280e8990a03/polygraph-linux-x64"
      sha256 "f45b5a6c8c567df8fb8fbb8ab34f1e699db25f9a26bb4054069dc4325c518ec4"
    end
  end

  def install
    bin.install Dir["polygraph-*"].first => "polygraph"
  end

  test do
    assert_path_exists bin/"polygraph"
    assert_predicate bin/"polygraph", :executable?
  end
end
