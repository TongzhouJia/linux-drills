# bash-practice

Linux 刷题库：**RHCSA EX200 v10 考纲** + **数据中心运维岗的纯 Bash 训练**（换掉原考纲里过浅的 Shell Scripts 那一格）。
共 85 个知识点（KP）、约 774 道题的素材池。出题计划与进度见 **[PLAN.md](PLAN.md)**。

## 目录结构

顶层 9 个文件夹 = 9 个领域，每个 KP 一个子文件夹，里面就两个文件：

```
01-essential-tools/
└── D1.1-io-redirection/
    ├── D1.1-io-redirection.md   ← 题目（英文，只读）
    └── D1.1-io-redirection.sh   ← 你的练习记录（做完才有）
```

`02-bash/` 内容多，中间多一层领域：

```
02-bash/B1-basics/B1.1-quoting-expansion/
├── B1.1-quoting-expansion.md
└── B1.1-quoting-expansion.sh
```

| 目录 | 放什么 |
|------|--------|
| `01-essential-tools/` … `09-security/` | 9 个领域的题目 + 你的记录 |
| `samples/` | 题目要用的样例数据（access.log / users.csv…），题目里用相对路径引用 |
| `lib/` | 复用的脚本骨架 |
| `setup/` | 虚机重装/回滚后的一键恢复 |

**`.sh` 文件存在 = 这个 KP 练过了。** `ls` 一眼看进度，不用另记。

## 练习环境

练习机 `bash-practice`（192.168.89.10，CentOS Stream 10，root 登录），仓库在 `/home/bash-practice/bash-practice`。

⚠️ 领域 04/05/07/09（存储、文件系统、网络、SELinux）需要双机 + 多块磁盘，当前单机做不了，题目先存着。

## 日常流程

在练习机上：

```bash
cd /home/bash-practice/bash-practice
git pull                                  # 开工前：拿新题

# ...做题，记录写到对应 KP 目录下的同名 .sh...

git add -A
git commit -m "D1.1 done"
git push                                  # 收工前：存档
```
