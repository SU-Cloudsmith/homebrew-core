class Cloudsmith < Formula
  desc "Official Cloudsmith Command-Line Interface - Be Awesome. Automate Everything"
  homepage "https://github.com/cloudsmith-io/cloudsmith-cli"
  url "https://github.com/cloudsmith-io/cloudsmith-cli/releases/download/v1.8.1/cloudsmith-1.8.1.pyz"
  sha256 "04f5aa55c3d2225806642b69e0463cc6bb8e85cbd564789afc94e490d89119cc"
  license "Apache-2.0"

  def install
    bin.install "cloudsmith-#{version}.pyz" => "cloudsmith"
    chmod 0755, bin/"cloudsmith"
  end

  test do
    system bin/"cloudsmith", "--version"
  end
end
