Practice `git rebase --interactive` with this repository.

The history shows how a is_palindrome function has been implemented.

## GOAL

Rewrite history to make it as clear as possible the steps were as followed :
- Project init with only named function and this README
- Implementing tests for TDD
- Naive implementation of is_palindrome?
- API implementation of is_palindrome?
- Formatting is_palindrome? to pass additional tests

### Constraints :
- Executing this script must generate no error whatever the commit state
- No slippery corrections

As a reminder, here are the possible commands:

### Commands:
- p, **pick** <commit> = use commit
- r, **reword** <commit> = use commit, but edit the commit message
- e, **edit** <commit> = use commit, but stop for amending
- s, **squash** <commit> = use commit, but meld into previous commit
- f, **fixup** <commit> = like "squash", but discard this commit's log message
- x, exec <command> = run command (the rest of the line) using shell
- b, break = stop here (continue rebase later with 'git rebase --continue')
- d, **drop** <commit> = remove commit
- l, label <label> = label current HEAD with a name
- t, reset <label> = reset HEAD to a label
- m, merge [-C <commit> | -c <commit>] <label> [# <oneline>] create a merge commit using the original merge commit's message (or the oneline, if no original merge commit was specified). Use -c <commit> to reword the commit message.

1. **move** commits - To begin, start moving this README.md file commit as second commit.
2. **fixup** WIP Drying tests
3. **squash** starting tests together
4. **drop** the useless failing commit
5. Practice more
