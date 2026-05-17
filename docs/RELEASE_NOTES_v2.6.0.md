# v2.6.0 Release Notes

## Added

- Safe page prefetching for faster navigation.
- Sidebar links preload on hover/touch.
- Common pages preload shortly after first page load.
- Browser caching for static assets.

## Safety

- Action URLs are excluded from prefetching:
  - delete
  - restore
  - export
  - snapshot
  - sync
  - update
  - add
- Trading 212 sync remains manual to avoid API rate limits.

## Included repo-friendly files

- `.gitignore`
- `.env.example`
- `scripts/install.sh`
- `scripts/start.sh`
- `scripts/backup_db.sh`
- `systemd/investhome.service`
- `docs/DEPLOYMENT.md`
- `SECURITY.md`
- `CONTRIBUTING.md`
