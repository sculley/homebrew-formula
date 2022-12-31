class TerraformVariableGenerator < Formula
  desc "Generate Terraform variables from .tf files"
  homepage "https://github.com/alexandrst88/terraform-variables-generator"
  url "https://github.com/alexandrst88/terraform-variables-generator/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "7ab876efc626215e7831dabae76d66311186d8776ec97d21dd0df5fe6f6e20ec"
  license "MIT"

  depends_on "go" => :build

  # Needs libraries at runtime:
  # /usr/lib/x86_64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.29' not found (required by node)
  fails_with gcc: "5"

  # resolves issues fetching providers while on a VPN that uses /etc/resolv.conf
  # https://github.com/hashicorp/terraform/issues/26532#issuecomment-720570774
  ENV["CGO_ENABLED"] = "1"

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w"
  end

  test do
    system "false"
  end
end