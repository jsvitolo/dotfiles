# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a tmuxinator configuration directory (`~/.config/tmuxinator/`). Tmuxinator is a tool for managing complex tmux sessions using YAML configuration files.

## Common Commands

```bash
# Start a tmux session from a config
tmuxinator start <project_name>

# Edit a project config
tmuxinator edit <project_name>

# List all projects
tmuxinator list

# Create a new project
tmuxinator new <project_name>

# Delete a project
tmuxinator delete <project_name>
```

## Configuration Structure

Each `.yml` file defines a tmux session with:
- `name`: Project/session name
- `root`: Working directory for the session
- `windows`: List of tmux windows, each containing panes with commands
- Project hooks (`on_project_start`, `on_project_exit`, etc.) for lifecycle commands
