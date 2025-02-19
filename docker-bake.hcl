target "default" {}
target "dev" {
    tags = [
        "chocolatefrappe/huggingface-cache-server:dev"
    ]
}
