# Pulling image
You can use ```docker pull huscskn/puppetteer``` for fetching image.

# Using with docker-compose
Image can be usable with ```docker-compose```. There is an example docker-compose.yaml exist in repository.

# Chrome

The image installs the Chrome for Testing build that matches Puppeteer and caches it at `/opt/puppeteer`. `PUPPETEER_SKIP_DOWNLOAD=true` keeps `npm install` from downloading Chrome again.

```js
    let browser = await puppeteer.launch({
        args: [
        "--disable-gpu",
        "--disable-dev-shm-usage",
        "--no-sandbox"
        ],
        headless: true
    });
```

# Version

Ubuntu 26.04, Node.js 24, Puppeteer 25.16.0 (Chrome for Testing 156.0.8078.47)
