# 🛠️ Personal Dotfiles

A comprehensive and portable [chezmoi](https://www.chezmoi.io/) dotfiles setup for managing a consistent, secure development environment across multiple machines and containers.


---

## 🖥️ Compatible Operating Systems

Currently only supports:

- macOS
- Ubuntu Desktop
- DevContainers

Will add more in the future if needed.


---

## ✨ Inspired By

Credit and inspiration from these dotfiles repositories:

* [bjw-s-labs/dotfiles](https://github.com/bjw-s-labs/dotfiles)
* [the-technat/dotfiles](https://github.com/the-technat/dotfiles)
* [rafaribe/dotfiles](https://github.com/rafaribe/dotfiles)
* [a-inacio/dotfiles](https://github.com/a-inacio/dotfiles)
* [mischavandenburg/dotfiles](https://github.com/mischavandenburg/dotfiles)
* [DanielMSchmidt/dotfiles](https://github.com/DanielMSchmidt/dotfiles)

---

## 🚀 Getting Started

### 🔧 Pre-requisites

* [Bitwarden CLI](https://bitwarden.com/help/cli/) (`bw`)

---

### 🔐 Setup Bitwarden

Secrets are read from these vault items:

* `SOPS` (secure note) - age key for SOPS, in the notes field
* `Main` (SSH key) - SSH private key

Log in with your personal API key and unlock the vault before applying:

```bash
bw config server <server-url>
bw login --apikey   # prompts for client_id / client_secret
export BW_SESSION="$(bw unlock --raw)"
```

---

## 📦 Usage

To initialize your dotfiles on a new system:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/Jdavid77/dotfiles-demo.git
```