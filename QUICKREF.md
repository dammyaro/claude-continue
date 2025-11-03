# Quick Reference Card

## 🚀 Installation

### Plugin (Recommended)
```bash
claude plugin install dammyaro/claude-continue-commands
```

### Local - All Projects
```bash
git clone https://github.com/dammyaro/claude-continue-commands.git
cd claude-continue-commands
./install.sh
# Choose option 1
```

### Local - Single Project
```bash
git clone https://github.com/dammyaro/claude-continue-commands.git
cd claude-continue-commands
./install.sh
# Choose option 2
```

## 📋 Commands

| Command | Usage | Purpose |
|---------|-------|---------|
| `/continue` | `/continue` | Resume general work |
| `/continue` | `/continue auth feature` | Resume specific feature |
| `/continue-pr` | `/continue-pr` | Resume PR work |
| `/continue-pr` | `/continue-pr tests` | Focus on PR tests |
| `/morning` | `/morning` | Daily catch-up |

## 🎯 Common Workflows

**Starting Your Day:**
```bash
/morning
```

**After Interruption:**
```bash
/continue
```

**Addressing PR Feedback:**
```bash
/continue-pr
```

**Context Switch:**
```bash
/continue authentication feature
```

## 🛠️ Customization

**Edit Personal Commands:**
```bash
code ~/.claude/commands/continue.md
```

**Edit Project Commands:**
```bash
code .claude/commands/continue.md
```

## 📚 Resources

- [Full Documentation](README.md)
- [Setup Guide](SETUP.md)
- [Contributing](CONTRIBUTING.md)
- [GitHub Repo](https://github.com/dammyaro/claude-continue-commands)

## 💡 Tips

- Use arguments to focus on specific features
- Run `/morning` before standup
- Use `/continue-pr` systematically for reviews
- Customize commands for your workflow
- Share with team by committing `.claude/commands/`

---

**Questions?** [@workdotai](https://twitter.com/workdotai)
