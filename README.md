# squid-proxytest

[![Docker Hub](https://img.shields.io/badge/Docker%20Hub-latest-black?logo=docker&logoColor=white&labelColor=blue)](https://hub.docker.com/r/akiraohgaki/squid-proxytest)

Squid proxy server for testing.

## Usage

To start the proxy server, run the following in your terminal.

```sh
docker run --rm -p 3128:3128 -d docker.io/akiraohgaki/squid-proxytest
```

You can use proxy with below proxy information.

- Proxy server address: localhost
- Port: 3128
- Username: proxytest
- Password: proxytest
