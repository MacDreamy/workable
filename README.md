# Before start, please make sure to use ruby 2.5.1

if using rbenv for ruby installation management, use the following command
```bash
rbenv install 2.5.1

# set 2.5.1 as the default ruby after the installation is complete
rbenv global 2.5.1
```

# Please read the StyleGuide.md before submitting your code

# Please read the rest of this document carefully and thoroughly

# Workflow Tips

When a Pull Request is merged, a new commit is created on master.
You need to fetch it on your local repository.

Be very careful
First, you need a CLEAN git status.

```
git status
```

then switch to the master branch
get all the changes from remote repository to local **master** branch

```
git checkout master
git pull origin master
```

Then you can clean up local unused branches

```
git sweep
```


Colleagues may have added gems, NPM packages or change the DB schema:

```
bundle install
yarn install
rails db:migrate
```

When merging master in your branches
Do you need something in master back into your current branch?

```
git status
# MAKE SURE THIS IS CLEAN

git checkout your-feature-branch-name
git merge master
```

**2 rules**
Never commit directly to master. Use feature branches
Always make sure git status is clean before pull, checkout or merge.
