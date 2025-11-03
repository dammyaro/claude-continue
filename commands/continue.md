---
description: Resume work from where you left off
allowed-tools:
  - git
---

# Continue Command

Resume work on the current task or feature by analyzing the current state and suggesting next steps.

## Steps

1. **Check Git Status**
   - Run `!git status` to see current branch and uncommitted changes
   - Run `!git log --oneline -5` to see recent commits

2. **Analyze Current Context**
   - Review any TODO comments or FIXME markers in recently modified files
   - Check if there are any failing tests or linting errors
   - Look for incomplete implementations or commented-out code

3. **Identify Next Steps**
   - Based on the current state, determine what needs to be done next
   - Prioritize tasks that are partially complete or blocking progress
   - Suggest actionable next steps with specific file references

4. **Provide Clear Direction**
   - Summarize the current state of work
   - List 2-3 concrete next actions to continue progress
   - Offer to start working on the most logical next step

## Notes

- If arguments are provided (`$ARGUMENTS`), use them to filter which task or feature to continue
- Focus on actionable steps rather than general observations
- Consider dependencies and blockers when suggesting next steps
