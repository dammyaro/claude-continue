# Continue Commands for Claude Code

Resume work seamlessly with these productivity-boosting slash commands for Claude Code. Pick up exactly where you left off, every time.

## 📋 Available Commands

### `/continue`
Resume work from where you left off by analyzing git status, recent commits, and TODO comments.

```bash
/continue                      # General resume
/continue authentication      # Focus on specific feature
```

### `/continue-pr`
Focus on your current pull request or feature branch with smart PR-aware guidance.

```bash
/continue-pr                   # Resume PR work
/continue-pr tests            # Focus on test updates
```

### `/morning`
Start your day right with a comprehensive catch-up routine.

```bash
/morning                       # Daily standup prep
```

## 🚀 Installation

Choose the method that works best for you:

### Option 1: Plugin Installation (Recommended)

Install once, use everywhere across all your projects:

```bash
claude plugin install dammyaro/claude-continue-commands
```

That's it! The commands are now available in all your Claude Code sessions.

### Option 2: Personal Installation (All Projects)

Copy commands to your home directory to use across all projects:

```bash
# Clone the repository
git clone https://github.com/dammyaro/claude-continue-commands.git
cd claude-continue-commands

# Copy to personal commands directory
mkdir -p ~/.claude/commands
cp commands/* ~/.claude/commands/
```

Now use `/continue`, `/continue-pr`, and `/morning` in any project!

### Option 3: Project-Specific Installation

Add commands to a single project and share them with your team via git:

```bash
# In your project directory
git clone https://github.com/dammyaro/claude-continue-commands.git temp-commands

# Copy to project
mkdir -p .claude/commands
cp temp-commands/commands/* .claude/commands/
rm -rf temp-commands

# Commit to share with team
git add .claude/commands/
git commit -m "feat: add continue commands"
git push
```

Your team members will automatically get these commands when they pull!

## 💡 Usage Examples

### Daily Developer Workflow

```bash
# Start your day
/morning

# After standup, resume work
/continue authentication module

# Context switch back after meeting
/continue

# Address PR feedback
/continue-pr

# Before EOD
/continue    # See what's left for tomorrow
```

### Team Scenarios

**New team member joins:**
```bash
/morning    # Get oriented on the project
/continue   # See what needs doing
```

**After code review:**
```bash
/continue-pr    # Systematically address all feedback
```

**Returning from vacation:**
```bash
/morning    # Catch up on everything
```

## 🎯 What Each Command Does

### `/continue`
- ✅ Checks git status and recent commits
- ✅ Scans for TODO/FIXME comments
- ✅ Identifies incomplete work
- ✅ Suggests 2-3 actionable next steps
- ✅ Offers to start immediately

### `/continue-pr`
- ✅ Reviews PR status and description
- ✅ Checks for review comments
- ✅ Identifies failing CI/CD checks
- ✅ Prioritizes blocking feedback
- ✅ Guides through completion

### `/morning`
- ✅ Syncs repository with remote
- ✅ Reviews yesterday's commits
- ✅ Checks for new PR comments
- ✅ Identifies blockers
- ✅ Creates prioritized task list

## 📝 Requirements

- **Claude Code** v1.0.0 or higher
- **Git** (for repository analysis)
- **GitHub CLI** (optional, enhances `/continue-pr`)

## 🛠️ Customization

All commands are Markdown files - edit them to match your workflow!

```bash
# Edit your local copy
code ~/.claude/commands/continue.md

# Or edit project-specific version
code .claude/commands/continue.md
```

**Ideas for customization:**
- Add project-specific linting checks
- Include database migration status
- Check deployment pipeline state
- Integrate with Jira/Linear
- Add custom git workflows

## 🤝 Contributing

Contributions welcome! Here's how:

1. Fork this repository
2. Create a feature branch: `git checkout -b feature/amazing-command`
3. Add your command in `commands/` directory
4. Update README with usage examples
5. Submit a pull request

**Ideas for new commands:**
- `/continue-debug` - Resume debugging session
- `/continue-deploy` - Check deployment status
- `/continue-docs` - Continue documentation work
- `/continue-test` - Resume test writing

## 📚 Learn More

- [Claude Code Documentation](https://docs.claude.com/en/docs/claude-code/overview)
- [Slash Commands Guide](https://docs.claude.com/en/docs/claude-code/slash-commands)
- [Plugin System Docs](https://docs.claude.com/en/docs/claude-code/plugins)

## 👨‍💻 Author

Created by **Damilola Aromiwe** ([@workdotai](https://twitter.com/workdotai))

Full Stack Developer specializing in AI automation, workflow optimization, and developer productivity tools.

**More from @workdotai:**
- 🎥 [YouTube - AI Automation Tutorials](https://youtube.com/@workdotai)
- 🐦 [Twitter - Daily AI Tips](https://twitter.com/workdotai)
- 💼 [Sparktech Labs - Fintech Innovation](https://github.com/dammyaro)

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

---

**Found this useful? Star the repo ⭐ and share with your team!**

**Questions or ideas?** Open an issue or reach out on Twitter [@workdotai](https://twitter.com/workdotai)
