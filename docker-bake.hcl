target "default" {}
target "dev" {
    tags = [
        "chocolatefrappe/huggingface-cache-proxy:dev"
    ]
}
