# 🛠️ Personal Dotfiles

A comprehensive and portable [chezmoi](https://www.chezmoi.io/) dotfiles setup for managing a consistent, secure development environment across multiple machines and containers.


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

* [Akeyless CLI](https://docs.akeyless.io/docs/cli)

Install Akeyless CLI (if not already installed):

```bash
curl -o akeyless https://akeyless-cli.s3.us-east-2.amazonaws.com/cli/latest/production/cli-linux-amd64
chmod +x akeyless
./akeyless
```

---

### 🔐 Setup Akeyless

To configure Akeyless for secret retrieval:

```bash
akeyless configure \
    --profile default \
    --access-id <access-id> \
    --access-key <access-key> 
```

Once configured, the CLI will save your profile in:

```bash
~/.akeyless/profiles/default.yaml
```

P.S - Make sure to move your akeyless bin to `~/.akeyless/bin/`

---

## 📦 Usage

To initialize your dotfiles on a new system:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/Jdavid77/dotfiles-demo.git
```


