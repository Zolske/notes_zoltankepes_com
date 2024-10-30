*source:* [Conventional Commits: A Better Way *by Michael Collins*](https://medium.com/neudesic-innovation/conventional-commits-a-better-way-78d6785c2e08)

# Conventional Commit
>Helps humans to better understand commits and automated tools to process.

```bash
<type>(<scope>): <description> # max 52 characters wide
# empty line
<body>                         # OPTIONAL, explain the 'WHY'
# empty line
<footer(s)>                    # OPTIONAL, metadata
```

## Types
>Communicates the intent of the changes that where made.  
(*e.g.: introduce a new feature, improve unit testing and code coverage, improve the documentation, ...*)

|type|description|
|---|---|
|`feat`|Implements a new feature for the application.|
|`fix`|Fixes a defect in the application.|
|`refactor`|Refactors existing code in the product, but does not alter or change existing behavior in the product.|
|`change`|Changes the implementation of an existing feature.|
|`docs`|Adds, updates, or revises documentation that is stored in the repository.|
|`test`|Enhances, adds to, revised, or otherwise changes the suite of automated tests for the product.|
|`revert`|Reverts one or more commits that were previously included in the product, but were accidentally merged or serious issues were discovered that required their removal from the main branch.|
|`perf`|Improves the performance of algorithms or general execution time of the product, but does not fundamentally change an existing feature.|
|`security`|Improves the security of the product or resolves a security issue that has been reported.|
|`remove`|Removes a feature from the product. <br/>Typically features are deprecated first for a period of time before being removed. Removing a feature from the product may be considered a breaking change that will require a major version number increment.|
|`deprecate`|Deprecates existing functionality, but does not remove it from the product. <br/>For example, sometimes older public APIs may get deprecated because newer, more efficient APIs are available. Removing the APIs could break existing integrations so the APIs may be marked as deprecated in order to encourage the integration developers to migrate to the newer APIs while also giving them time before removing older functionality.|
|`chore`|Includes a technical or preventative maintenance task that is necessary for managing the product or the repository, but it is not tied to any specific feature or user story. <br/>For example, releasing the product can be considered a chore. Regenerating generated code that must be included in the repository could be a chore.|
|`build`|Alters the build system or external dependencies of the product (adding, removing, or upgrading dependencies).|
|`ci`|Makes changes to continuous integration or continuous delivery scripts or configuration files.|
|`style`|Updates or reformats the style of the source code, but does not otherwise change the product implementation.|


## Scopes (*optional*)
>Is used to **tag** a **package** or **module** of the product that the commit affects.

## Description
>A very short summary of the intent or content included in the comment. <br/>
The "description field" can be used as a title to introduce the change and then use the "body field" to provide more details of the change.

- **start** message in **lower case**.
- **52 characters or less** are recommended when body text is present to display the "title" correctly.  (*Git will indent commit messages by 8 spaces, this will ensure that the body is readable in the terminal.*)
- **use future tense and imperative**, *instead of `fixed bug`, write `fix bug` or instead of `created class MyClass`, write `create class MyClass`.

## Body (*optional*)
>Messages should focus more on explaining **why** a change was made rather than how.  
(*Differences can be seen in the source code or in the diff view between commits.*)

- Can provide additional details in multiple paragraphs.
- Is recommended for all, except for very 'simple' commits.
- Informs other developers of the changes that occurred in the code by reading the "Git commit log".

## Footers (*optional*)
>Can provide additional metadata for a commit; be used to alert readers and tools to significant changes such as breaking changes; or can link commits to issues or pull requests.

```bash
<token>: <value>
```
