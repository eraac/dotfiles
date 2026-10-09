# Dotfiles Setup Guide & Manual Runbooks

Some configuration steps are not yet fully automated with [chezmoi.io](https://chezmoi.io/). These manual setup and post-installation steps are documented below until they are scripted.

## Runbooks

### Fresh Laptop Setup

Run the following command to bootstrap chezmoi and apply the dotfiles:

```sh
cd ~
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply eraac
# Clean up temporary installer binary (chezmoi is managed via Homebrew)
rm -rf ./bin/
```

Refer to the [Documentation](#documentation) section below for additional manual steps and tool configuration.

## Pending Manual Steps

The following manual installations and configuration tasks are not yet automated:

- Sign in to Apple ID / iCloud account
- Enable iCloud Drive
- Install and configure Google Chrome
- Install and configure Google Drive
- Apply macOS system settings and preferences
- Untracked configuration files:
  - `~/.ssh/config` references files in `~/.config/ssh/*`, which are not tracked in this repository
  - `~/.config/git/work` (work-specific Git configuration) is not tracked in this repository
  - `~/.config/git/personal` (personal-specific Git configuration) is not tracked in this repository
  - `~/.config/zsh/work` (work-specific ZSH configuration) is not tracked in this repository

## Documentation

### Directory Structure: Personal vs. Work

Separate personal projects from work projects to keep configurations isolated:

- **Personal:** Placed under `${HOME}/personal/` (e.g., personal Git repositories).
- **Work:** Placed under `${HOME}/work/` (e.g., company projects and repositories).

---

### GPG & SSH Keys

#### Key Restoration

SSH and GPG keys are stored securely in a KeePass database.

1. **SSH Keys:**
   - Copy private and public keys into `~/.ssh/`.
   - Set restrictive permissions:
     ```sh
     chmod 700 ~/.ssh
     chmod 600 ~/.ssh/id_*
     chmod 644 ~/.ssh/id_*.pub
     ```

2. **GPG Keys:**
   - Export or download `private.gpg` from the KeePass database.
   - Import and trust the key:
     ```sh
     gpg --import-options restore --import private.gpg
     gpg --edit-key <email>
     gpg> trust
     # Select option 5 (ultimate trust)
     gpg> quit
     ```

#### Generating New Keys

1. **New SSH Key:**
   ```sh
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```
   Save the key passphrase and backup the key files in your KeePass database.

2. **New GPG Key:**
   ```sh
   gpg --full-generate-key
   ```
   Back up the secret key to your KeePass database:
   ```sh
   gpg --list-secret-keys --keyid-format LONG
   gpg -o private.gpg --export-options backup --export-secret-keys <email>
   ```

---

### Git Configuration

Work identity must be configured in `~/.config/git/work` and `~/.config/git/personal`:

```ini
[user]
	name = Kevin Labesse
	email = <user>@<company.tld>
	signingkey = <gpg-key-id>
```

To use a dedicated SSH key for work Git hosts, configure an `IdentityFile` in `~/.config/ssh/work`.

If you need to split personal and work accounts on the same host (e.g., GitLab or GitHub), refer to this [guide on setting up multiple accounts](https://medium.com/uncaught-exception/setting-up-multiple-gitlab-accounts-82b70e88c437).

---

### Golang Private Modules

To access private Go modules:

1. Configure the `GOPRIVATE` environment variable in `~/.config/zsh/work.zsh`:
   ```sh
   export GOPRIVATE="gitlab.com/<company>/*"
   ```

2. Rewrite HTTPS requests to SSH in `~/.config/git/work`:
   ```ini
   [url "git@gitlab.com:<company>/"]
       insteadOf = https://gitlab.com/<company>/
   ```

3. Ensure the SSH host configuration in `~/.config/ssh/work` references the correct `IdentityFile`.

---

### Google Cloud CLI (gcloud)

Authenticate user and application default credentials:

```sh
gcloud auth login
gcloud application default login
```

---

### Telegram

Update the default download directory:
- Default path: `~/Downloads/Telegram` 
- Target path: `~/personal/telegram`
- Path setting: **Settings** > **Advanced** > **Download path**

---

### KeeWeb

After opening your `.kdbx` database file in KeeWeb, configure an automatic daily backup to a separate storage location (e.g., iCloud Drive).

---

### Taskwarrior

To restore tasks, copy your Taskwarrior SQLite database file to the directory defined in the `data.location` configuration setting.

