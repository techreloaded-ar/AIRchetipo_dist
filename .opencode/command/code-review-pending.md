---
name: code-review-pending
---

@.opencode/context/core/essential-patterns.md
@.opencode/context/docs/prd.md

# Code Review of Pending Git Changes

Perform a complete code review of all uncommitted changes in the git repository.

## Instructions

1. **Retrieve the changes:**
   - Run `git diff HEAD` to get all changes to tracked files
   - Run `git status --short` to also see untracked files
   - For each untracked file, read it with the Read tool

2. **Analyze the context:**
   - This is an React 19 and Next.js TypeScript project with Clean Architecture

3. **Review Focus:**
   - **Security**: XSS, CSRF, SQL injection, input validation
   - **Best Practices**: React hooks, Clean Architecture, dependency injection
   - **Bugs**: Race conditions, memory leaks, null reference, edge cases
   - **Performance**: Unnecessary re-renders, N+1 queries, bundle size
   - **Code Quality**: Naming (prefer clear names), duplication, complexity
   - **Testing**: Missing coverage, fragile tests
   - **UX**: Loading states, error handling, user feedback

4. **Required Output:**

Provide a structured report with:

### 📊 Summary
- Number of files modified/added
- Lines added/removed
- Overall assessment (🟢 Excellent / 🟡 Needs Review / 🔴 Critical Issues)

### 🔴 Critical Issues
(Security vulnerabilities, blocking bugs, regressions)
- **File:Line** - Description
- **Risk:** High/Critical
- **Solution:** (with code example)

### 🟡 Important Issues
(Best practice violations, recommended refactoring)
- **File:Line** - Description
- **Impact:** Performance/Maintainability/Scalability
- **Suggestion:** (what to do)

### 🔵 Minor Suggestions
(Optional improvements, code style)

### ✅ Strengths
(What's done well, correct patterns applied)

### 📝 Pre-Commit Checklist
- [ ] Unit tests updated
- [ ] No build warnings
- [ ] No console.log/debug code
- [ ] Documentation updated (if needed)
- [ ] Input validation complete
- [ ] Error handling present
- [ ] TypeScript strict mode respected

---

**NOTE:** Be objective, constructive, and direct. Don't be condescending - if there are issues, flag them clearly with the solution.
