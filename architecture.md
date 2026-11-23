# Sample Salesforce DevOps Architecture

This illustrative workflow uses Git as the source of truth.

1. Developers create feature branches.
2. Pull requests trigger automated validation.
3. CI installs Salesforce CLI and validates the metadata manifest.
4. Reviewers approve changes before merging.
5. A release pipeline deploys approved metadata to the target environment.

Authentication must use secure pipeline secrets or service connections. Do not store credentials in source control.
