# OpenCode installation

Install the upstream Superpowers plugin through OpenCode's native plugin mechanism:

```json
{
  "plugin": [
    "superpowers@git+https://github.com/obra/superpowers.git"
  ]
}
```

Restart OpenCode after changing the plugin configuration.

The orchestrator's own skills live under `.opencode/skills/` and are intentionally thin: they coordinate upstream Superpowers instead of replacing it.

## Runtime model

The control plane may invoke OpenCode through a terminal session. Workers should run with the minimum permissions required by their role.

Recommended roles:

- `orchestrator`: coordination only
- `explorer`: read-only investigation
- `planner`: read-only planning
- `implementer`: edit + controlled shell
- `debugger`: edit + controlled shell
- `verifier`: verification shell, no edits
- `reviewer`: read-only review
