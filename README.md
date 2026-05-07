# AutoCommiter

A lightweight, automated tool designed to maintain a continuous GitHub contribution graph. 

AutoCommiter utilizes GitHub Actions to automatically append the current date to a log file and push the changes, ensuring a persistent GitHub streak without requiring local execution.

## Features

- **Zero Maintenance:** Operates entirely in the cloud via GitHub Actions.
- **Automated Workflow:** Requires only a one-time configuration.
- **Customizable Schedule:** Defaults to committing daily at 10:00 AM UTC.
- **Secure Execution:** Utilizes built-in GitHub Action permissions, avoiding the need for external Personal Access Tokens (PATs).

## Usage Instructions

1. **Repository Setup:**
   Create a new repository on your GitHub account. A private repository is recommended if you prefer to keep your automated activity logs hidden.

2. **Push Configuration:**
   Initialize Git in your local project directory and push the configuration files to your new GitHub repository:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: AutoCommiter setup"
   git branch -M main
   git remote add origin <YOUR_GITHUB_REPO_URL>
   git push -u origin main
   ```

3. **Verification:**
   Once pushed, GitHub Actions will automatically process the workflow defined in `.github/workflows/streak.yml` according to the designated schedule.

### Manual Execution
To manually verify the workflow execution:
1. Navigate to the **Actions** tab within your GitHub repository.
2. Select **Daily GitHub Streak** from the left sidebar.
3. Click the **Run workflow** button to trigger an immediate commit.

## Configuration

To adjust the execution time, modify the cron schedule within the `.github/workflows/streak.yml` file:
```yaml
  schedule:
    - cron: '0 10 * * *' # Defines execution time (in UTC)
```
Standard cron syntax applies.

## Disclaimer

This automation tool is designed to sustain contribution activity metrics. It is recommended to use this script in conjunction with, rather than as a replacement for, substantive code contributions.
