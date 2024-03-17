cask "terraform-0-15-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.3"

  arch = "amd64"
  sha256 "2521b478aef5b8c9f374d0caa265bee2a03f31f290ee8d048eb2f110eb4ffc8e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
