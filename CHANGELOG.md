# Changelog

All notable changes to Continue Commands will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-10-29

### Added
- `/continue` command for general work resumption
  - Git status and recent commit analysis
  - TODO/FIXME detection
  - Actionable next steps suggestion
  - Support for command arguments to focus on specific features
  
- `/continue-pr` command for PR-focused workflow
  - PR status and comment review
  - CI/CD check analysis
  - Review feedback prioritization
  - GitHub CLI integration (optional)
  
- `/morning` command for daily catch-up routine
  - Repository sync status
  - Yesterday's work review
  - Blocker identification
  - Prioritized task list generation
  
- Installation script (`install.sh`) for easy local setup
- Comprehensive documentation
- Plugin manifest for Claude Code plugin system
- MIT License

### Features
- Automatic git command execution via `allowed-tools`
- Command argument support via `$ARGUMENTS`
- Works as plugin or local installation
- Project-specific or personal scope options

## [Unreleased]

### Planned
- `/continue-debug` - Resume debugging sessions
- `/continue-test` - Continue test writing
- Integration with Linear/Jira for task management
- CI/CD pipeline status checks
- Custom hook support for project-specific workflows
- Slack/Discord notification integration
- Support for multiple git workflows (GitFlow, trunk-based)

---

[1.0.0]: https://github.com/dammyaro/claude-continue-commands/releases/tag/v1.0.0
