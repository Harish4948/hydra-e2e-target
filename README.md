# hydra-e2e-target

Multi-workflow test repository for HYDRA E2E pipeline simulation.

## Workflows

- **auto-reply.yml** — Triggered by issue comments, echoes comment body
- **label-check.yml** — Runs on pull_request_target, checks PR labels
- **deploy-check.yml** — Runs on pull_request_target with production environment gate
- **ci.yml** — Runs on pull_request_target with staging environment gate

## Setup

```bash
npm install
npm test
```

## Contributing

Please open issues for any bugs or feature requests.

## License

MIT
