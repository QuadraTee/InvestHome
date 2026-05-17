# Security Notes

InvestHome is designed for self-hosted / homelab use.

## Do not commit secrets

Never commit:

```text
.env
finance.db
```

`.env` may contain API keys and `finance.db` contains personal financial data.

## Trading 212

The Trading 212 integration is intended to be read-only. Do not add order-placement features unless you fully understand the risks.

## Network exposure

Avoid exposing the Flask development server directly to the internet. Use a reverse proxy, TLS, and authentication if publishing beyond your LAN.
