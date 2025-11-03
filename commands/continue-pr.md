---
description: Continue work on the current PR or branch
allowed-tools:
  - git
  - gh
---

# Continue PR Work

Resume work on your current pull request or feature branch.

## Steps

1. **Check Branch Status**
   - Run `!git branch --show-current` to confirm current branch
   - Run `!gh pr view --json title,body,state,isDraft` (if GitHub CLI available)
   
2. **Review PR Context**
   - Check PR description and acceptance criteria
   - Review any PR comments or requested changes
   - Identify blocking review comments

3. **Assess Code State**
   - Run `!git status` for uncommitted changes
   - Check for failing CI/CD checks
   - Review test coverage for changed files

4. **Next Actions**
   - Address PR review comments first
   - Complete any pending unit tests
   - Update documentation if needed
   - Suggest pushing changes and requesting re-review when ready

## Arguments

- `$ARGUMENTS` - Specific PR number or focus area (e.g., "tests", "docs")
