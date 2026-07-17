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
if [[ ! -f "$HOME/.ssh/id_ed25519" ]]; then
    ssh-keygen -t ed25519 -N '' -C "bash-practice-vm" -f "$HOME/.ssh/id_ed25519"
    echo
    echo "  ⚠️  新生成了 key，push 之前要先加到 GitHub。在 Mac 上跑："
    echo
    echo "      ssh root@$(hostname -I | awk '{print $1}') 'cat ~/.ssh/id_ed25519.pub' | \\"
    echo "        gh ssh-key add - --title bash-practice-vm"
    echo
fi
ssh-keyscan -t ed25519 github.com >> "$HOME/.ssh/known_hosts" 2>/dev/null
sort -u "$HOME/.ssh/known_hosts" -o "$HOME/.ssh/known_hosts"

echo "==> 拉仓库"
if [[ -d "$REPO_DIR/.git" ]]; then
    git -C "$REPO_DIR" pull --ff-only
else
    git clone "$REPO_SSH" "$REPO_DIR"
fi

echo
echo "✅ 好了：$REPO_DIR"
echo "   题目 → drills/    你的答案 → solutions/    骨架 → lib/skeleton.sh"
