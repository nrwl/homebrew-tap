class Polygraph < Formula
  desc "CLI to work with Polygraph for agentic cross-repo coordination"
  homepage "https://trypolygraph.com"
  version "0.1.4"
  license :cannot_represent # proprietary; mirrors npm "license": "proprietary"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/nx-public-builds-70m638/polygraph-cli/0.1.4%2Bc1526c5b5cf3/polygraph-darwin-arm64"
      sha256 "9b8723b8446a14a168cb692189ea77141dff21c306f399dd36babe6e9f825e1d"
    end
    on_intel do
      url "https://storage.googleapis.com/nx-public-builds-70m638/polygraph-cli/0.1.4%2Bc1526c5b5cf3/polygraph-darwin-x64"
      sha256 "2880afd7bf23834c6374ea82db2c8c1942e7898cca431092f388a65eb5fe697b"
    end
  end

  on_linux do
    on_arm do
      url "https://storage.googleapis.com/nx-public-builds-70m638/polygraph-cli/0.1.4%2Bc1526c5b5cf3/polygraph-linux-arm64"
      sha256 "e8dc59eea6453ce4785f2b6d74802af738b19e08df0ceb2a0090fd887d587cda"
    end
    on_intel do
      url "https://storage.googleapis.com/nx-public-builds-70m638/polygraph-cli/0.1.4%2Bc1526c5b5cf3/polygraph-linux-x64"
      sha256 "84ae6b676ace5e239b4359bbb630033d5e95c5d78c8b9c9e70a540e058e04ca8"
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
