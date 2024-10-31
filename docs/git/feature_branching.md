# Feature Branching
>A feature branch is a branch created to develop a specific feature independently from the main codebase. This practice allows you to work on a new feature without affecting the stable codebase, and it makes it easier to manage code reviews, testing, and integration.

## 1. Start from the Base Branch
>Make sure you are on the **base branch** (*usually `main`*), otherwise switch to it:  
```bash
git switch main         # assuming 'main' is the 'base branch'
```

## 2. Pull the Latest Changes
>Ensure your local branch is up to date with the remote repository:
```bash
git pull origin main    # pulling the latest commits from the remote repository
```
<details>
	<summary>*additional info*</summary>

	- `git pull`:  
		-> This command is a combination of `git fetch` (*which retrieves changes from the remote repository*) and `git merge` (*which merges those changes into your current branch*).  
	- `origin`:  
		-> This specifies the remote repository you want to pull from. When you first clone a repository, Git automatically names the remote repository `origin` by default, though you can rename it if desired.
	- `main`:  
	 	-> This is the name of the branch on the remote origin from which you want to pull updates.

	#### Why origin Is Used by Default
	- **Naming Convenience**: origin is just a name Git assigns to the first remote repository for ease of reference. If you add additional remotes (e.g., for a forked repository), you’ll give each of them a different name (like `upstream`).

	#### Checking Commits before pulling `main`
	- `git fetch origin main`:  
		-> Check for any new commits on the main branch in the origin remote repository.  
		-> Can be done if you want to first check the latest commits before merging from the `main` with `git pull origin main`.
</details>

## 3. Create the Feature Branch
>Now, create a new branch with a descriptive name. It’s common to prefix the branch name with `feature/` and then describe the feature concisely. Git automatically switches to the new branch.
```bash
git switch -c feature/your-feature-name  # 'feature/your-feature-name' is name of the new branch
```

## 4. Make Your Changes
>Work on the "new feature", "add" and "commit" regularly.

## 5. Push the Feature Branch to the Remote Repository
>Till now the new "branch" only exist on the "local repository" where nobody else can see it.  
When you want to share the feature branch (f*or example, to create a pull request or get feedback*), push it to the remote repository:
```bash
git push -u origin feature/your-feature-name
```
- The `-u` option sets up "tracking", so for future pushes, you can just use `git push`.

## 6. Create a Pull Request
>Once the feature is complete and pushed, create a **pull request** (PR) from `feature/your-feature-name` into the main code branch (*e.g., `main`*). This **pull request** is where your code will be reviewed and approved.

<details>
	<summary>*how to create a pull request on GitHub (website)*</summary>

	TODO: [GitHub docs, pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request?tool=webui)
</details>

## 7. Merge the Feature Branch
>After the **pull request** is approved, merge the "**feature branch**" (*feature/your-feature-name*) into the "**base branch**" (*main*):

1. **Via GitHub/GitLab/etc.**:  
This is typically done on the web interface by clicking “**Merge**” in the **pull request**.

2. **Via Command Line**:  
Alternatively, you can merge manually by:  
```bash
git switch main                        # switch out the 'main' branch
git pull origin main                   # pulling the latest changes
git merge feature/your-feature-name    # merging 'main' (checked out branch) with 'feature/your-feature-name'
```

## 8. Delete the Feature Branch
>Once merged, you can delete the feature branch locally and remotely to keep the repo clean:
```bash
git branch -d feature/your-feature-name             # Local delete
git push origin --delete feature/your-feature-name  # Remote delete
```
