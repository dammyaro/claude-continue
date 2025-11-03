---
description: Morning routine - catch up and continue where you left off
allowed-tools:
  - git
  - npm
---

# Morning Continue

Start your development day by catching up and resuming work.

## Steps

1. **Sync Repository**
   - Run `!git fetch origin`
   - Check if local branch is behind: `!git status -sb`
   - Suggest pulling latest changes if behind

2. **Environment Check**
   - Verify dependencies are up to date
   - Check if any team members pushed to your branch
   - Review any new comments on your PRs

3. **Yesterday's Context**
   - Review last 3 commits: `!git log --oneline -3`
   - Check uncommitted work: `!git status`
   - Look for any TODO or FIXME comments in recently modified files

4. **Today's Plan**
   - Summarize what was being worked on
   - Identify highest-priority incomplete work
   - Suggest 3-5 concrete tasks for today
   - Offer to start with the most critical item

## Output Format

Provide a brief summary:
- 📊 Repository status (synced/behind)
- 🔄 Recent work (last commits)
- ⚠️ Blockers or issues
- ✅ Suggested tasks for today (prioritized)
