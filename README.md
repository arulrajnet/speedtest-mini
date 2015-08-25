Speedtest Mini
--------------

Build your own speedtest server with docker.


```
docker run -p 80:80 -d --name speedtest -t arulrajnet/speedtest-mini:latest
```

Then goto http://localhost/ from your browser.

![screenshot][screenshot.png]

Reference from [unixmen][unixmen_ref]

**Author**

| [![follow][avatar]][twitterhandle] |
|---|
| [@arulrajnet][twitterhandle] |


[twitterhandle]: https://twitter.com/arulrajnet "Follow @arulrajnet on Twitter"
[avatar]: https://avatars0.githubusercontent.com/u/834529?s=70
[unixmen_ref]: http://www.unixmen.com/install-speedtest-net-server-centos-7/ "Install speedtest in CentOS 7"
[screenshot.png]: https://raw.githubusercontent.com/arulrajnet/speedtest-mini/master/screenshot.png "screenshot of speedtest mini"


