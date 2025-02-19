## About
This is a cache server for the Hugging Face model hub. It is designed to cache models and datasets from the Hugging Face model hub to reduce the load on the Hugging Face servers and speed up downloads for users.

## Using with `exo` software

`exo`: Run your own AI cluster at home with everyday devices. Maintained by [exo labs](https://x.com/exolabs).

Models are downloaded from Hugging Face. If you are running exo in a country with strict internet censorship, you may need to download the models manually and put them in the ~/.cache/exo/downloads directory.

To download models from a proxy endpoint, set the `HF_ENDPOINT` environment variable. For example, to run exo with the huggingface mirror endpoint:

```env
HF_ENDPOINT=https://localhost:36080 exo
```
