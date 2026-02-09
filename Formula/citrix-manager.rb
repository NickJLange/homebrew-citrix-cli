class CitrixManager < Formula
  desc "Safely park and unpark Citrix Workspace on macOS without rebooting"
  homepage "https://github.com/NickJLange/osx-citrix-manager-cli"
  url "https://github.com/NickJLange/osx-citrix-manager-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fb7f88561061cd4bb01375163af50ccd4eac04f43ef4a77df21efbf27af301fd"
  license "Apache-2.0"

  def install
    bin.install "scripts/citrix.sh" => "citrix"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/citrix --help", 0)
  end
end
