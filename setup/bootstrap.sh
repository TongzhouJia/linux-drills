#!/usr/bin/env bash
#
# 练习机重装 / 快照回滚之后，一条命令把环境拉回来：
#
#   curl -fsSL https://raw.githubusercontent.com/TongzhouJia/bash-practice/main/setup/bootstrap.sh | bash
#
set -euo pipefail

REPO_SSH="git@github.com:TongzhouJia/bash-practice.git"
REPO_DIR="$HOME/bash-practice"
GIT_NAME="Tom Jia"
GIT_EMAIL="jiatongzhou111@gmail.com"

echo "==> 装工具"
dnf install -y git vim-enhanced ShellCheck >/dev/null 2>&1 || dnf install -y git vim-enhanced >/dev/null 2>&1

echo "==> 配 git 身份"
git config --global user.name "$GIT_NAME"
git config --global user.email "$GIT_EMAIL"
git config --global init.defaultBranch main

echo "==> SSH key"
mkdir -p "$HOME/.ssh" && chmod 700 "$HOME/.ssh"
NEW_KEY=0
if [[ ! -f "$HOME/.ssh/id_ed25519" ]]; then
    ssh-keygen -t ed25519 -N '' -C "bash-practice-vm" -f "$HOME/.ssh/id_ed25519" -q
    NEW_KEY=1
fi

# GitHub 的 22 端口在这边网络会被重置（TCP 连得上，SSH 握手被掐），
# 改走官方的 443 入口 ssh.github.com。
echo "==> SSH config（GitHub 走 443）"
if ! grep -q '^Host github.com$' "$HOME/.ssh/config" 2>/dev/null; then
    cat >> "$HOME/.ssh/config" <<'CFG'
Host github.com
    HostName ssh.github.com
    Port 443
    User git
    IdentityFile ~/.ssh/id_ed25519
CFG
    chmod 600 "$HOME/.ssh/config"
fi
ssh-keyscan -p 443 -t ed25519 ssh.github.com >> "$HOME/.ssh/known_hosts" 2>/dev/null
sort -u "$HOME/.ssh/known_hosts" -o "$HOME/.ssh/known_hosts"

if (( NEW_KEY )); then
    echo
    echo "  ⚠️  新生成了 key，push 之前要先注册到 GitHub。在 Mac 上跑："
    echo
    echo "      ssh root@$(hostname -I | awk '{print $1}') 'cat ~/.ssh/id_ed25519.pub' > /tmp/vm.pub"
    echo "      gh repo deploy-key add /tmp/vm.pub --repo TongzhouJia/bash-practice \\"
    echo "        --title bash-practice-vm --allow-write"
    echo
    read -rp "  加完按回车继续…" _
fi

echo "==> 拉仓库"
if [[ -d "$REPO_DIR/.git" ]]; then
    git -C "$REPO_DIR" pull --ff-only
else
    git clone "$REPO_SSH" "$REPO_DIR"
fi

echo
echo "✅ 好了：$REPO_DIR"
echo "   题目 → drills/    你的答案 → solutions/    骨架 → lib/skeleton.sh"
