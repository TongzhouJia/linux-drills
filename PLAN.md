# Drill Plan & Progress

85 knowledge points (KPs) across 9 domains, ~774 exercises. Drills are generated on demand:
name a KP and a fresh batch appears. Nothing is reused — every batch is new.

---

## Rules

- **English only.** Drills, task statements, acceptance criteria.
- **No repeats.** Every task randomizes its parameters (usernames, sizes, paths, UIDs, ports,
  permission bits), so the tasks within one KP never look alike.
- **Format.** One-sentence task + explicit acceptance criteria (what counts as done).
  Answers are delivered separately and **not committed** — this repo holds drills and my own work.
- **Pace.** One KP at a time, 6–12 tasks. ⭐⭐⭐ KPs may split into two batches.

## Directory convention

One folder per KP, two files inside:

```
01-essential-tools/D1.1-io-redirection/
├── D1.1-io-redirection.md   ← the drill
└── D1.1-io-redirection.sh   ← my practice log (written after doing it)
```

`.sh` present = practiced. `ls` shows progress.

## Environment

- VM at 192.168.89.10 (CentOS Stream 10, root login), repo at `/home/bash-practice/linux-drills`.
- ⚠️ **Single-host limit.** Domains 04/05/07/09 (storage, filesystems, networking, SELinux) —
  23 KPs — need a second host and spare disks. Drills are written and stored anyway; hands-on
  waits for the environment.
- `samples/` holds the sample data drills reference. `setup/bootstrap.sh` restores a rebuilt VM.
  `lib/skeleton.sh` is the script starting point.

---

## Progress

Status: ⬜ not written / 📝 drill ready, not done / ✅ practiced (`.sh` exists)

### 01 · Essential Tools (10 KPs)

| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| D1.1 | I/O redirection and pipes: `> >> 2> 2>&1 \| tee` | 10 | ⭐⭐ | 📝 |
| D1.2 | grep and regular expressions | 10 | ⭐⭐ | 📝 |
| D1.3 | find / locate | 10 | ⭐⭐ | 📝 |
| D1.4 | Archiving and compression: tar/gzip/bzip2 | 10 | ⭐⭐ | 📝 |
| D1.5 | File and directory ops: cp/mv/rm/mkdir | 6 | ⭐ | 📝 |
| D1.6 | Hard links and symlinks | 8 | ⭐⭐ | 📝 |
| D1.7 | Standard permissions: ugo/rwx, chmod | 10 | ⭐⭐ | 📝 |
| D1.8 | Documentation: man/info/`/usr/share/doc` | 6 | ⭐ | 📝 |
| D1.9 | Editing with vim | 6 | ⭐ | 📝 |
| D1.10 | SSH access + scp/rsync transfers | 8 | ⭐⭐ | 📝 |

### 02 · Bash (33 KPs) ⭐ main track

The deepest domain here, and the reason the repo exists. **Pure Bash** — no Ansible, no Python.
The only non-Bash tool is `jq`, marked optional.

**Bar to clear:** starting from an empty file, write a 30–60 line script that takes arguments and
uses `set -euo pipefail`, solving a real task — e.g. "scan `/var/log`, find the 10 IPs causing the
most 5xx in the last hour, alert above a threshold" — and be able to read and debug someone else's
script.

Three things that matter most: **awk** (B2.4–2.6 — most log analysis rides on it),
**robustness** (`set -euo pipefail`, `trap`, quoting, `[[ ]]`), and
**reading and fixing broken scripts** (B6.2).

#### B1 · Command-line foundations
| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| B1.1 | Quoting and expansion order: quotes, escapes, `$( )`, `$(( ))`, `{a,b}`, `~` | 12 | ⭐⭐⭐ | ✅ |
| B1.2 | Globbing: `* ? [ ]`, extglob, nullglob, dotglob | 8 | ⭐ | ⬜ |
| B1.3 | Parameter expansion: `${v:-} ${v:=} ${#v} ${v%p} ${v#p} ${v/a/b} ${v:i:n} ${v^^}` | 12 | ⭐⭐⭐ | ⬜ |
| B1.4 | Redirection in depth: `&>`, `2>&1` ordering traps, here-doc, here-string, `exec`, `tee` | 10 | ⭐⭐ | ⬜ |
| B1.5 | Pipes, exit codes, grouping: `$?`, `&& \|\|`, `{ }` vs `( )`, `pipefail` | 10 | ⭐⭐ | ⬜ |

#### B2 · Text processing: grep / sed / awk ⭐ core
| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| B2.1 | grep and regex: BRE/ERE, `-E -o -P -c -v -i -A/-B/-C`, character classes, groups | 10 | ⭐⭐ | ⬜ |
| B2.2 | sed basics: `s///g`, addresses, delete/print lines, `-n p`, in-place `-i` | 10 | ⭐⭐ | ⬜ |
| B2.3 | sed advanced: multiple commands, range addresses, backreferences `\1` | 8 | ⭐⭐ | ⬜ |
| B2.4 | awk basics: `$1..$NF`, `NR/NF`, `-F`, `print/printf`, pattern{action} | 10 | ⭐⭐ | ⬜ |
| B2.5 | awk further: conditionals, regex matching, `BEGIN/END`, accumulators, sums and averages | 10 | ⭐⭐ | ⬜ |
| B2.6 | awk associative arrays and reports: `count[$k]++`, dedup, top-N, grouped summaries | 12 | ⭐⭐⭐ | ⬜ |
| B2.7 | Fields and sets: `cut sort uniq -c tr paste join comm wc column` | 10 | ⭐⭐ | ⬜ |

#### B3 · Writing real scripts
| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| B3.1 | Script skeleton and safety header: shebang, `set -euo pipefail`, `IFS`, `usage()` | 8 | ⭐ | ⬜ |
| B3.2 | Conditionals: `[[ ]]` vs `[ ]`, string/numeric/file tests, regex `=~` | 10 | ⭐⭐ | ⬜ |
| B3.3 | Loops and reading input: `for/while`, `while read -r`, splitting on `IFS=` | 10 | ⭐⭐ | ⬜ |
| B3.4 | Functions: arguments, `local`, return value vs output, `source`-ing a library | 10 | ⭐⭐ | ⬜ |
| B3.5 | Argument parsing: `getopts`, short and long options, validating required flags | 8 | ⭐⭐ | ⬜ |
| B3.6 | Arrays: indexed, associative, the `"${a[@]}"` expansion traps | 10 | ⭐⭐ | ⬜ |
| B3.7 | `trap` and error handling: `EXIT/INT/TERM`, temp-file cleanup, meaningful exit codes | 8 | ⭐⭐ | ⬜ |
| B3.8 | Arithmetic: `(( ))`, `$(( ))`, working around no floats via `awk`/`bc` | 8 | ⭐⭐ | ⬜ |

#### B4 · Scripts that do real work ⭐
| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| B4.1 | Log analysis: parse `/var/log`, count errors, top IPs, filter by time window | 12 | ⭐⭐⭐ | ⬜ |
| B4.2 | Health checks: disk/memory/CPU/load thresholds and alerts | 12 | ⭐⭐⭐ | ⬜ |
| B4.3 | Process and service monitoring: heavy processes, service watchdog, `systemctl is-active` | 10 | ⭐⭐ | ⬜ |
| B4.4 | Bulk users/files/permissions: list-driven create, modify, audit | 10 | ⭐⭐ | ⬜ |
| B4.5 | Backup and rotation: `tar`/`rsync`, date-stamped names, keep N and prune | 10 | ⭐⭐ | ⬜ |
| B4.6 | Idempotent and defensive: dry-run, check before acting, lock files against concurrency | 8 | ⭐⭐ | ⬜ |

#### B5 · Automation across hosts
| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| B5.1 | Batch ssh: loop over hosts, key auth, collect results, continue past failures | 10 | ⭐⭐ | ⬜ |
| B5.2 | Parallelism: `xargs -P`, `& ... wait`, capping concurrency | 8 | ⭐⭐ | ⬜ |
| B5.3 | Scheduled runs: scripts under cron and systemd timers (locking, logging, idempotency) — pairs with D6.1/6.2 | 8 | ⭐⭐ | ⬜ |
| B5.4 | (Optional) `jq` for JSON: `curl` an API, extract fields | 8 | ⭐⭐ | ⬜ |

#### B6 · Debugging and quality
| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| B6.1 | Debugging: `bash -x`, `set -x/-v`, `PS4`, pinpointing the failing line | 8 | ⭐ | ⬜ |
| B6.2 | Read a broken script and fix it | 12 | ⭐⭐⭐ | ⬜ |
| B6.3 | `shellcheck` and common traps: unquoted variables, word splitting, `[ ]` pitfalls | 8 | ⭐ | ⬜ |

### 03 · Operating Running Systems (7 KPs)

| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| D3.1 | Boot targets: get/set-default, isolate | 8 | ⭐⭐ | 📝 |
| D3.2 | Rescue mode, interrupting boot, resetting the root password | 12 | ⭐⭐⭐ | 📝 |
| D3.3 | Finding and killing CPU/memory hogs | 8 | ⭐⭐ | 📝 |
| D3.4 | Process priority: nice/renice | 6 | ⭐⭐ | 📝 |
| D3.5 | Tuning profiles: tuned-adm | 6 | ⭐ | 📝 |
| D3.6 | Logs and journalctl | 8 | ⭐⭐ | 📝 |
| D3.7 | Persistent journal | 6 | ⭐ | 📝 |

### 04 · Local Storage (6 KPs) ⚠️ weak area · needs spare disks

| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| D4.1 | Partitioning MBR/GPT (fdisk/parted) | 12 | ⭐⭐⭐ | 📝 |
| D4.2 | Physical volumes and volume groups | 10 | ⭐⭐ | 📝 |
| D4.3 | Creating and removing logical volumes | 10 | ⭐⭐ | 📝 |
| D4.4 | Boot-time mounts by UUID/LABEL | 10 | ⭐⭐ | 📝 |
| D4.5 | Non-destructively adding partitions/LVs/swap | 12 | ⭐⭐⭐ | 📝 |
| D4.6 | Swap: partition-based and file-based | 10 | ⭐⭐ | 📝 |

### 05 · File Systems (6 KPs) ⚠️ weak area · NFS/autofs need a second host

| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| D5.1 | Creating and mounting vfat/ext4/xfs | 10 | ⭐⭐ | 📝 |
| D5.2 | NFS mounts | 10 | ⭐⭐ | 📝 |
| D5.3 | autofs | 12 | ⭐⭐⭐ | 📝 |
| D5.4 | Extending logical volumes | 10 | ⭐⭐ | 📝 |
| D5.5 | set-GID collaborative directories | 10 | ⭐⭐ | 📝 |
| D5.6 | Diagnosing and fixing permission problems | 10 | ⭐⭐ | 📝 |

### 06 · Deploy / Configure / Maintain (8 KPs)

| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| D6.1 | at and cron | 10 | ⭐⭐ | 📝 |
| D6.2 | systemd timers | 8 | ⭐⭐ | 📝 |
| D6.3 | Service enable/disable at boot | 6 | ⭐ | 📝 |
| D6.4 | Time sync with chrony | 8 | ⭐⭐ | 📝 |
| D6.5 | Installing and updating software: dnf/rpm | 10 | ⭐⭐ | 📝 |
| D6.6 | Configuring repositories: BaseOS/AppStream/local | 8 | ⭐⭐ | 📝 |
| D6.7 | Boot configuration: grubby / grub2-mkconfig | 8 | ⭐⭐ | 📝 |
| D6.8 | Flatpak | 8 | ⭐⭐ | 📝 |

### 07 · Basic Networking (3 KPs)

| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| D7.1 | Static IPv4/IPv6 with nmcli | 12 | ⭐⭐⭐ | 📝 |
| D7.2 | Hostname resolution: hostnamectl, `/etc/hosts` | 6 | ⭐ | 📝 |
| D7.3 | Firewall: firewall-cmd | 10 | ⭐⭐ | 📝 |

### 08 · Users & Groups (4 KPs)

| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| D8.1 | Users: useradd/usermod/userdel | 10 | ⭐⭐ | 📝 |
| D8.2 | Password aging: chage | 8 | ⭐⭐ | 📝 |
| D8.3 | Groups and membership | 8 | ⭐⭐ | 📝 |
| D8.4 | sudo / sudoers | 10 | ⭐⭐ | 📝 |

### 09 · Security (8 KPs) ⚠️ SELinux is the big one

| KP | Topic | Tasks | Level | Status |
|----|-------|-------|-------|--------|
| D9.1 | Default permissions: umask | 8 | ⭐⭐ | 📝 |
| D9.2 | Special permissions: setuid/setgid/sticky | 8 | ⭐⭐ | 📝 |
| D9.3 | SSH key authentication | 8 | ⭐⭐ | 📝 |
| D9.4 | SELinux modes: enforcing/permissive | 6 | ⭐ | 📝 |
| D9.5 | SELinux contexts and restorecon | 12 | ⭐⭐⭐ | 📝 |
| D9.6 | SELinux port labelling | 8 | ⭐⭐ | 📝 |
| D9.7 | SELinux booleans | 8 | ⭐⭐ | 📝 |
| D9.8 | Troubleshooting SELinux | 12 | ⭐⭐⭐ | 📝 |

---

## Totals

| | KPs | Tasks |
|---|-----|-------|
| Domains 01, 03–09 | 52 | ≈ 464 |
| Domain 02 (Bash) | 33 | ≈ 310 |
| **Total** | **85** | **≈ 774** |
