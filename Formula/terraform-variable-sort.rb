class TerraformVariableSort < Formula
    desc "Sorts Terraform variables in alphabetical order"
    homepage "https://github.com/sculley/terraform-variable-sort"
    url "https://github.com/sculley/terraform-variable-sort/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "b55b02f229876489d3e9258c0f5cb433ca97fac09a9da00cdf04d675f5bb3e4d"
    license "Apache-2.0"

    def install
      bin.install "terraform-variable-sort.sh" => "terraform-variable-sort"
    end
  
    test do
      system "false"
    end
  end