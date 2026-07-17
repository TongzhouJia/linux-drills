# bash-practice

数据中心运维岗 · 纯 Bash 刷题库。题目全英文，33 个知识点（KP）、约 310 道题的素材池。
出题计划与进度见 **[PLAN.md](PLAN.md)**。

## 目录

| 目录 | 放什么 |
|------|--------|
| `drills/` | 题目 + 答案（按领域 B1–B6 分）。练习时**只读** |
| `fixtures/` | 题目要用的样例数据（`sample-access.log` 等），题目里用相对路径引用 |
| `solutions/` | **你自己写的脚本和笔记** —— 这个仓库真正的资产 |
| `lib/` | 复用的脚本骨架 |
| `setup/` | 虚机重装/回滚后的一键恢复 |

题目和答案放在一起，靠文件名区分：

```
drills/B1-basics/B1.1-quoting-expansion.md          ← 题目
drills/B1-basics/B1.1-quoting-expansion.answers.md  ← 答案（先自己做完再看）
```

## 练习环境

练习机 `bash-practice`（CentOS Stream 10，root 登录）。B5.1/B5.2 的 ssh 批量和并行题需要第二台机器当对端，到时候用 `server2`。

## 日常流程

在练习机上：

```bash
cd ~/bash-practice
git pull                                  # 开工前：拿新题

# ...做题，脚本写到 solutions/B1.1/ 下...

git add -A
git commit -m "B1.1 done"
git push                                  # 收工前：存档
```

> **回滚快照会吃掉没 push 的东西。** B4/B5 那些会把机器搞脏的题，动手前先 push 一次。

## 虚机重装或回滚后

```bash
curl -fsSL https://raw.githubusercontent.com/TongzhouJia/bash-practice/main/setup/bootstrap.sh | bash
```

## 写脚本从骨架开始

`lib/skeleton.sh` 是带 `set -euo pipefail` + `usage()` 的模板。B3.1 之后每道题都要这个头，别每次重敲：

```bash
cp ~/bash-practice/lib/skeleton.sh solutions/B4.1/top-ips.sh
```

## 记笔记

`solutions/Bx.y/notes.md` 记你卡在哪、为什么错。这个比正确答案有用 —— 尤其 B6.2（读并修 bug）那批。
