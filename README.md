# Hello AI

A Cloudflare Workers project that leverages Cloudflare's AI capabilities to respond to queries using the Llama 3.1 model.

## Overview

This project demonstrates how to integrate Cloudflare Workers with Cloudflare's AI services. It creates a simple API endpoint that processes requests and returns AI-generated responses using the `@cf/meta/llama-3.1-8b-instruct` model.

## Features

- Serverless architecture using Cloudflare Workers
- Integration with Cloudflare AI services
- TypeScript support
- Local development environment
- Testing with Vitest

## Prerequisites

- [Node.js](https://nodejs.org/) (v16 or higher recommended)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)
- [Cloudflare account](https://dash.cloudflare.com/sign-up)
- [Wrangler CLI](https://developers.cloudflare.com/workers/wrangler/install-and-update/) (installed as a project dependency)

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd hello-ai
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

## Development

### Using npm scripts

Start the development server:
```bash
npm run dev
```

This will start a local development server at `http://localhost:8787/`.

### Using Makefile

This project includes a Makefile for common operations:

```bash
# Start development server
make dev

# Run tests
make test

# Generate Cloudflare types
make cf-typegen

# Update Wrangler to the latest version
make update-wrangler

# Show all available commands
make help
```

## Testing

Run tests using Vitest:

```bash
npm run test
```

or

```bash
make test
```

## Deployment

### Using npm

Deploy to Cloudflare Workers:

```bash
npm run deploy
```

### Using Makefile

```bash
make deploy
```

## Configuration

The project uses `wrangler.jsonc` for configuration:

```jsonc
{
  "name": "hello-ai",
  "main": "src/index.ts",
  "compatibility_date": "2025-06-20",
  "observability": {
    "enabled": true
  },
  "ai": {
    "binding": "AI"
  }
}
```

### AI Binding

This project uses Cloudflare's AI binding to access the Llama 3.1 model. The binding is configured in `wrangler.jsonc` and used in the `src/index.ts` file.

### Environment Variables

You can add environment variables in the `wrangler.jsonc` file:

```jsonc
"vars": { "MY_VARIABLE": "production_value" }
```

For sensitive data, use [Cloudflare secrets](https://developers.cloudflare.com/workers/configuration/secrets/).

## Claude Desktop Integration

This project includes Makefile targets for Claude Desktop integration:

1. `claude-install`: Installs the weather MCP server in Claude Desktop
2. `claude-uninstall`: Removes the weather MCP server from Claude Desktop

Manual versions of these commands (`claude-install-manual` and `claude-uninstall-manual`) are also available as a fallback.

## Project Structure

```
hello-ai/
├── .editorconfig        # Editor configuration
├── .gitignore           # Git ignore rules
├── .prettierrc          # Prettier configuration
├── .vscode/             # VS Code settings
├── Makefile             # Make targets for common operations
├── README.md            # This file
├── package.json         # Project dependencies and scripts
├── src/
│   └── index.ts         # Main application code
├── test/                # Test files
├── tsconfig.json        # TypeScript configuration
├── vitest.config.mts    # Vitest configuration
└── wrangler.jsonc       # Cloudflare Workers configuration
```

## Resources

- [Cloudflare Workers Documentation](https://developers.cloudflare.com/workers/)
- [Cloudflare AI Documentation](https://developers.cloudflare.com/workers/ai/)
- [Wrangler CLI Documentation](https://developers.cloudflare.com/workers/wrangler/)
- [TypeScript Documentation](https://www.typescriptlang.org/docs/)
- [Vitest Documentation](https://vitest.dev/guide/)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the [MIT License](LICENSE) - see the LICENSE file for details.
