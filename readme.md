# Pulling image
You can use ```docker pull huscskn/puppetteer``` for fetching image.

# Using with docker-compose
Image can be usable with ```docker-compose```. There is an example docker-compose.yaml exist in repository.

# Chromium

If you want to use with puppetteer's downloaded chromium verison you can comment 

```yaml
    #environment:
    #  - PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
```

if you want to use docker image downloaded stable chrome verison 

```js
    let browser = await puppeteer.launch({
        executablePath: 'google-chrome-stable',
        args: [
        "--disable-gpu",
        "--disable-dev-shm-usage",
        "--disable-setuid-sandbox",
        "--no-sandbox"
        ],
        headless: true
    });
```

# Version

Current version is node 14.18.9