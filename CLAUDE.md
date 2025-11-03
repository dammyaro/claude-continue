# Continue Commands for Claude Code

## Project Overview

This is an open-source Claude Code plugin that provides slash commands to help developers resume work seamlessly after context switches. The plugin addresses the productivity cost of interruptions by analyzing git state, recent work, and providing actionable next steps.

## Project Structure

```
claude-continue-commands/
├── commands/              # Slash command definitions (Markdown)
│   ├── continue.md       # Main resume work command
│   ├── continue-pr.md    # PR-focused workflow command
│   └── morning.md        # Daily catch-up routine
├── .claude-plugin/       # Plugin metadata
│   └── plugin.json       # Plugin manifest for Claude Code
├── README.md             # User-facing documentation
├── SETUP.md              # Publishing and promotion guide
├── CONTRIBUTING.md       # Contribution guidelines
├── CHANGELOG.md          # Version history
├── install.sh            # Installation script
└── LICENSE               # MIT License
```

## Key Technologies

- **Claude Code Slash Commands**: Markdown-based command system
- **Git Integration**: Commands use `allowed-tools` for automatic git execution
- **Plugin System**: Follows Claude Code plugin specification

## Command Specifications

### /continue
**Purpose**: Resume work from where you left off
**How it works**:
1. Runs `git status` and `git log` to analyze current state
2. Scans for TODO/FIXME comments in recently modified files
3. Identifies incomplete work and blockers
4. Suggests 2-3 actionable next steps
5. Offers to start working immediately

**Arguments**: Accepts focus keywords (e.g., `/continue authentication`)

### /continue-pr
**Purpose**: Continue work on current pull request
**How it works**:
1. Checks current branch and PR status (via gh CLI if available)
2. Reviews PR comments and requested changes
3. Identifies failing CI/CD checks
4. Prioritizes review feedback
5. Guides through systematic completion

**Arguments**: Accepts focus area (e.g., `/continue-pr tests`)

### /morning
**Purpose**: Daily catch-up and task prioritization
**How it works**:
1. Syncs repository (`git fetch`)
2. Reviews yesterday's commits
3. Checks for new PR comments or updates
4. Identifies blockers or conflicts
5. Creates prioritized task list for today

## Development Guidelines

### Adding New Commands

1. Create Markdown file in `commands/` directory
2. Follow template structure:
   - Frontmatter with `description` and `allowed-tools`
   - Clear step-by-step instructions
   - Argument handling using `$ARGUMENTS`
3. Update `plugin.json` with new command entry
4. Update `README.md` with usage examples
5. Add entry to `CHANGELOG.md`

### Command Best Practices

- **Start with context gathering**: Use git commands to understand current state
- **Be specific**: Provide concrete, actionable steps
- **Handle edge cases**: Check for missing git remote, empty repos, etc.
- **Offer to act**: After suggesting steps, offer to start working
- **Support arguments**: Use `$ARGUMENTS` for focus/filtering

### File Naming Conventions

- Commands: `kebab-case.md` (e.g., `continue-pr.md`)
- Command names: `/lowercase-with-hyphens`
- Docs: `UPPERCASE.md` for meta files

## Installation Methods

The plugin supports three installation methods:

1. **Plugin System**: `claude plugin install dammyaro/claude-continue-commands`
2. **Personal**: Copy to `~/.claude/commands/` (all projects)
3. **Project-specific**: Copy to `.claude/commands/` (single project, git-shared)

## Target Audience

- **Primary**: Individual developers using Claude Code
- **Secondary**: Development teams wanting shared workflows
- **Tertiary**: Open source contributors learning about Claude Code plugins

## Content Strategy

This project is designed to support @workdotai brand building:

- **YouTube**: Tutorial content on building plugins
- **Twitter**: Tips and productivity hacks
- **Portfolio**: Demonstrates AI automation skills
- **Foundation**: For future n8n/automation course content

## Common Tasks

### Test Commands Locally
```bash
./install.sh  # Choose option 1 for personal testing
claude        # Start Claude Code
/continue     # Test the command
```

### Update a Command
1. Edit the Markdown file in `commands/`
2. Reinstall: `./install.sh`
3. Test in Claude Code
4. Commit changes

### Add New Command
1. Create `commands/new-command.md`
2. Add entry to `.claude-plugin/plugin.json`
3. Update `README.md` with documentation
4. Update `CHANGELOG.md`
5. Test installation

### Prepare Release
1. Update version in `plugin.json`
2. Update `CHANGELOG.md` with new version
3. Commit: `git commit -m "chore: bump version to X.Y.Z"`
4. Tag: `git tag -a vX.Y.Z -m "vX.Y.Z"`
5. Push: `git push && git push --tags`

## Git Workflow

- **Branch naming**: `feature/command-name`, `fix/issue-description`
- **Commit format**: Conventional Commits (feat:, fix:, docs:, etc.)
- **PR process**: All changes via pull request
- **Version bumping**: Follow semantic versioning

## Dependencies

### Required
- Git (for repository analysis)
- Claude Code v1.0.0+

### Optional
- GitHub CLI (`gh`) - enhances `/continue-pr` command
- Any text editor for customization

## Future Enhancements

Planned features (see CHANGELOG.md for details):

- `/continue-debug` - Resume debugging sessions
- `/continue-test` - Continue test writing workflow
- `/continue-deploy` - Check deployment status
- Integration with Linear/Jira
- CI/CD pipeline status checks
- Multi-repo support for monorepos

## Publishing Checklist

Before pushing to GitHub:
- [ ] All commands tested locally
- [ ] README.md complete with examples
- [ ] CHANGELOG.md updated
- [ ] LICENSE file present
- [ ] install.sh is executable
- [ ] .gitignore includes common patterns
- [ ] plugin.json has correct repository URL

After publishing:
- [ ] Add GitHub topics for discoverability
- [ ] Create initial release (v1.0.0)
- [ ] Share on Twitter/LinkedIn
- [ ] Post in Claude Discord
- [ ] Create YouTube tutorial

## Support and Community

- **GitHub Issues**: Bug reports and feature requests
- **Twitter**: [@workdotai](https://twitter.com/workdotai) for quick questions
- **Contributing**: See CONTRIBUTING.md for guidelines

## License

MIT License - Free to use, modify, and distribute. See LICENSE file.

## Notes for Claude

When working on this project:

1. **Maintain consistency**: Follow existing patterns in commands
2. **Test thoroughly**: Always test commands in real Claude Code sessions
3. **Document well**: Update README.md for any new commands
4. **Think about users**: Commands should save time, not add complexity
5. **Keep it simple**: Each command should do one thing well

When asked to add features:
- Check if it fits the project scope (developer productivity)
- Ensure it works with git-based workflows
- Consider if it should be a new command or enhancement to existing
- Update all relevant documentation

When helping with publishing:
- Verify all links point to correct repository
- Ensure social media posts are ready
- Check that installation instructions are clear
- Confirm plugin.json is properly formatted
