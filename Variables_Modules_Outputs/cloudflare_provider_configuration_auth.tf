variable "cloudflare_api_token" { #A

}

provider "cloudflare" {
  api_token = var.cloudflare_api_token #B
}

#A Variables are discussed in the next chapter.
#B Cloudflare needs an API Token to connect.