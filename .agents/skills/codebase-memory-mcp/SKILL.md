---
name: "codebase-memory-mcp"
description: "High-performance code intelligence MCP server. Indexes codebases into a persistent knowledge graph with 158 language support, sub-millisecond queries, and 99% fewer tokens."
metadata:
  version: "0.1.0"
  category: "code-intelligence"
  tags: ["mcp", "codebase-indexing", "knowledge-graph", "search", "code-intelligence"]
  triggers:
    include: ["index codebase", "search code", "find function", "trace call", "code intelligence", "knowledge graph"]
    exclude: ["run tests", "build project"]
---

# Codebase Memory MCP

High-performance code intelligence MCP server. Indexes codebases into a persistent knowledge graph — 158 languages, sub-ms queries, 99% fewer tokens. Single static binary, zero dependencies.

## Quick Start

```bash
curl -fsSL https://raw.githubusercontent.com/DeusData/codebase-memory-mcp/main/install.sh | bash
# Or with graph visualization UI:
curl -fsSL https://raw.githubusercontent.com/DeusData/codebase-memory-mcp/main/install.sh | bash -s -- --ui
```

Windows (PowerShell):
```powershell
Invoke-WebRequest -Uri https://raw.githubusercontent.com/DeusData/codebase-memory-mcp/main/install.ps1 -OutFile install.ps1
.\install.ps1
```

Restart your coding agent and say "Index this project".

## MCP Tools

**Indexing:**
- `index_repository` — index a project into the knowledge graph
- `list_projects` — list all indexed projects
- `delete_project` — remove a project from the index
- `index_status` — check indexing progress

**Querying:**
- `search_graph` — search nodes by name/pattern/label
- `trace_path` — trace function/method call paths (depth=5, <10ms)
- `detect_changes` — git diff impact mapping
- `query_graph` — Cypher-like queries on the knowledge graph
- `get_graph_schema` — view the graph data model
- `get_code_snippet` — retrieve code by file:line
- `get_architecture` — project architecture overview
- `search_code` — semantic + BM25 full-text search
- `manage_adr` — Architecture Decision Record management
- `ingest_traces` — ingest Jaeger/OpenTelemetry traces

## Performance

| Repo | LOC | Files | Time | Nodes | Edges |
|------|-----|-------|------|-------|-------|
| Linux kernel | 28M | 75K | 3 min | 4.81M | 7.72M |
| Django | — | — | ~6s | 49K | 196K |

- Cypher query: <1ms
- Name search (regex): <10ms
- Dead code detection: ~150ms
- Token efficiency: 99.2% (3,400 vs 412,000 tokens)

## Language Support

158 languages. Excellent (>=90%): Lua, Kotlin, C++, Perl, C, Bash, Zig, Swift, CSS, Dockerfile.
Good (75-89%): Python, TypeScript, Go, Rust, Java, JavaScript, Ruby, PHP, C#, SQL.

## Install Methods

- npm: `npm install -g codebase-memory-mcp`
- Homebrew: `brew install codebase-memory-mcp`
- Scoop: `scoop install codebase-memory-mcp`
- Chocolatey: `choco install codebase-memory-mcp`
- AUR: `yay -S codebase-memory-mcp-bin`
- Manual: Download from latest release

## Usage Examples

```bash
# Index a project
codebase-memory-mcp cli index_repository '{"repo_path": "/path/to/repo"}'

# Search for functions
codebase-memory-mcp cli search_graph '{"name_pattern": ".*Handler.*", "label": "Function"}'

# Trace call paths
codebase-memory-mcp cli trace_path '{"function_name": "Search", "direction": "both"}'

# Cypher query
codebase-memory-mcp cli query_graph '{"query": "MATCH (f:Function) RETURN f.name LIMIT 5"}'
```

## Configuration

```bash
codebase-memory-mcp config list    # Show current config
codebase-memory-mcp config set key value  # Set config value
```

Environment: `CBM_CACHE_DIR`, `CBM_LOG_LEVEL`, `CBM_WORKERS`

## Uninstall

```bash
codebase-memory-mcp uninstall
```
