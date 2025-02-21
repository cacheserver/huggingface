## About
This is a cache server for the <a href="https://huggingface.co/">huggingface.co</a> hub. It is designed to be deployed in a private network to cache models and datasets downloaded from the hub to reduce the load on the public servers and speed up the download process.

## Usage

The cache server listens on port 36080 by default. You can change the port by setting the `PORT` environment variable.

To run the cache server, you can use the following command:
```bash
docker run -p 36080:36080 -v /path/to/cache:/var/lib/huggingface -d chocolatefrappe/huggingface-cache-server:main
```

or via Docker Compose:

```yaml
services:
  huggingface-cache-server:
    image: chocolatefrappe/huggingface-cache-server:dev
    ports:
      - mode: ingress
        target: 36080
        published: 36080
        protocol: tcp
    volumes:
      - type: volume
        source: huggingface-cache
        target: /var/lib/huggingface
    stop_grace_period: 1m
    restart: always
volumes:
  huggingface-cache:
```     

## Using with `exo` software

`exo`: Run your own AI cluster at home with everyday devices. Maintained by [exo labs](https://x.com/exolabs).

Models are downloaded from Hugging Face. If you are running exo in a country with strict internet censorship, you may need to download the models manually and put them in the ~/.cache/exo/downloads directory.

To download models from a proxy endpoint, set the `HF_ENDPOINT` environment variable. For example, to run exo with the huggingface mirror endpoint:

```env
HF_ENDPOINT=https://localhost:36080 exo
```
