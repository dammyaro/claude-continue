# Contributing to Continue Commands

Thank you for your interest in contributing! This document provides guidelines for contributing to Continue Commands.

## 🤝 How to Contribute

### Reporting Issues

Found a bug or have a feature request?

1. Check if the issue already exists
2. If not, create a new issue with:
   - Clear, descriptive title
   - Detailed description
   - Steps to reproduce (for bugs)
   - Expected vs actual behavior
   - Claude Code version: `claude --version`

### Suggesting New Commands

Have an idea for a new command?

1. Open an issue with the `enhancement` label
2. Describe:
   - Command name and purpose
   - Use case / problem it solves
   - Example usage
   - What it should check/analyze

### Contributing Code

#### Development Setup

```bash
# Fork and clone the repo
git clone https://github.com/YOUR_USERNAME/claude-continue-commands.git
cd claude-continue-commands

# Install locally for testing
./install.sh

# Create a branch
git checkout -b feature/your-command-name
```

#### Creating a New Command

1. Create a new Markdown file in `commands/`:

```bash
touch commands/your-command.md
```

2. Follow this template:

```markdown
---
description: Brief description of what this command does
allowed-tools:
  - git
  - gh
---

# Command Name

Detailed explanation of what this command does and when to use it.

## Steps

1. **First Action**
   - Run `!git status` or other commands
   - Analyze results
   
2. **Second Action**
   - Process information
   - Make decisions

3. **Output**
   - Provide clear, actionable steps
   - Suggest next actions

## Arguments

- `$ARGUMENTS` - How arguments are used (optional)
- `$1`, `$2` - Individual arguments (if needed)

## Notes

- Any important considerations
- Edge cases to handle
- Related commands
```

3. Update `README.md` to include your new command

4. Update `.claude-plugin/plugin.json`:

```json
{
  "commands": [
    {
      "name": "your-command",
      "path": "commands/your-command.md",
      "description": "Brief description"
    }
  ]
}
```

5. Update `CHANGELOG.md` under `[Unreleased]`

#### Testing Your Command

```bash
# Install your changes
./install.sh

# Test in Claude Code
claude

# In Claude Code, try your command
/your-command

# Test with arguments
/your-command some arguments
```

#### Commit Guidelines

We use [Conventional Commits](https://www.conventionalcommits.org/):

```bash
# Features
feat: add /continue-debug command

# Bug fixes
fix: handle missing git remote correctly

# Documentation
docs: improve installation instructions

# Refactoring
refactor: simplify git status parsing

# Chores
chore: update dependencies
```

### Pull Request Process

1. **Before submitting:**
   - Test your command thoroughly
   - Update documentation
   - Run through different scenarios
   - Check for typos

2. **PR description should include:**
   - What problem does this solve?
   - How does it work?
   - Usage examples
   - Screenshots/demos (if applicable)

3. **PR checklist:**
   - [ ] Command works as expected
   - [ ] Documentation updated
   - [ ] CHANGELOG.md updated
   - [ ] plugin.json updated (if adding command)
   - [ ] Follows existing code style
   - [ ] Commit messages follow conventions

4. **Review process:**
   - Maintainers will review within 48 hours
   - Address feedback promptly
   - Be open to suggestions

## 💡 Command Ideas We'd Love

- `/continue-debug` - Resume debugging sessions
- `/continue-test` - Continue test writing workflow
- `/continue-deploy` - Check deployment status
- `/continue-docs` - Resume documentation work
- Integration commands for popular tools (Jira, Linear, etc.)

## 🎨 Style Guidelines

### Command Naming
- Use descriptive, action-oriented names
- Lowercase with hyphens: `/continue-debug` not `/continueDebug`
- Namespace related commands: `/continue-*` pattern

### Documentation
- Clear, concise descriptions
- Include real-world examples
- Explain the "why" not just the "what"
- Use emojis sparingly for scannability

### Command Structure
- Start with context gathering (git status, etc.)
- Analyze information
- Provide actionable output
- Offer to take action

## 🐛 Bug Reports

Good bug reports include:

1. **Environment:**
   - Claude Code version
   - OS and version
   - Git version

2. **Expected behavior:**
   - What should happen

3. **Actual behavior:**
   - What actually happens
   - Error messages

4. **Steps to reproduce:**
   - Minimal steps
   - Command arguments used
   - Project state

5. **Additional context:**
   - Screenshots
   - Logs
   - Related issues

## 📜 Code of Conduct

### Our Standards

- Be respectful and inclusive
- Welcome newcomers warmly
- Provide constructive feedback
- Focus on what's best for the community
- Show empathy

### Not Acceptable

- Harassment or discriminatory language
- Personal attacks
- Trolling or insulting comments
- Publishing others' private information
- Unprofessional conduct

## 📞 Getting Help

Need help contributing?

- Open an issue with the `question` label
- Reach out on Twitter: [@workdotai](https://twitter.com/workdotai)
- Check existing issues and PRs

## 🎯 Recognition

Contributors will be:
- Listed in README.md
- Credited in release notes
- Mentioned in related content (YouTube, Twitter, etc.)

## 📝 License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

**Thank you for making Continue Commands better! 🚀**
