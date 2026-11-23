# Sample Salesforce Release Checklist

## Before deployment
- Confirm approved pull request and target environment.
- Review metadata dependencies and destructive changes.
- Confirm tests and validation results.
- Confirm backup and rollback approach.
- Verify pipeline secrets and org authentication.

## Deployment
- Deploy the approved manifest.
- Run required Apex tests.
- Review deployment output and errors.

## After deployment
- Perform smoke tests.
- Confirm key business flows.
- Record release version, deployment result, and follow-up actions.
