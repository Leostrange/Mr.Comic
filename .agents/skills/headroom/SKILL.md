---
name: headroom
description: "Context compression layer for AI agents. Compress tool outputs, logs, RAG chunks, files, and conversation history before they reach the LLM. 60-95% fewer tokens, same answers. Local-first, reversible."
metadata:
  version: "1.0.0"
  category: "optimization"
  tags: ["context-compression", "token-savings", "proxy", "mcp", "local-first"]
  triggers:
    include: ["compress context", "reduce tokens", "optimize prompts", "compress tool output", "headroom"]
    exclude: ["image compression", "file archiving"]
---

# Headroom

Context compression layer for AI agents. Compresses everything your agent reads — tool outputs, logs, RAG chunks, files, and conversation history — before it reaches the LLM. Same answers, fraction of the tokens.

## When To Use

- Tool outputs are large (API responses, file listings, search results)
- Conversation history is growing and consuming too many tokens
- RAG chunks are verbose and you want to fit more context
- Logs or build output need to be analyzed by the agent
- You want to reduce API costs without losing accuracy

## Installation

```bash
pip install "headroom-ai[all]"    # Python
npm install headroom-ai           # Node / TypeScript
```

## Quick Start

### As a library (inline)

```python
from headroom import compress

compressed = compress(messages_or_text)
# Use compressed in your prompt
```

### As a proxy (zero code changes)

```bash
headroom proxy --port 8787
# Point any client at http://127.0.0.1:8787
```

### Wrap an agent

```bash
headroom wrap claude    # Also: codex, cursor, aider, copilot, gemini
```

### As MCP server

```bash
headroom mcp install
# Tools: headroom_compress, headroom_retrieve, headroom_stats
```

## How It Works

1. **ContentRouter** detects content type (JSON, code, text, logs)
2. **SmartCrusher** compresses JSON/arrays (70-90% savings)
3. **CodeCompressor** compresses code via AST (preserves structure)
4. **Kompress-base** compresses prose/text
5. **CCR (Compress-Cache-Retrieve)** stores originals locally — LLM can retrieve on demand

## Key Features

- **Reversible**: originals cached locally, LLM calls `headroom_retrieve` when needed
- **Cross-agent memory**: shared store across Claude, Codex, Gemini, auto-dedup
- **Failure learning**: mines failed sessions, writes corrections to CLAUDE.md
- **Output token reduction**: trims verbose model outputs (preambles, re-printed code)
- **Local-first**: your data stays on your machine

## Configuration

```bash
# Environment variables
export HEADROOM_TELEMETRY=off          # Disable telemetry
export HEADROOM_OUTPUT_SHAPER=1        # Enable output reduction

# See savings
headroom perf
headroom output-savings
```

## References

- [Docs](https://headroom-docs.vercel.app/docs)
- [GitHub](https://github.com/chopratejas/headroom)
- [PyPI](https://pypi.org/project/headroom-ai/)
- [npm](https://www.npmjs.com/package/headroom-ai)
