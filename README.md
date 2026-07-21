# linux-drills

Linux practice drills. 85 knowledge points (KPs) across 9 domains, ~774 exercises to draw from.
Drills are written in English; answers are not stored here — the point is to write them yourself.

A KP folder holding a `.sh` file means that KP has been practised — `ls` is the progress table.

## Layout

Nine domain directories at the top level. Every KP gets its own folder holding two files:

```
01-essential-tools/
└── D1.1-io-redirection/
    ├── D1.1-io-redirection.md   ← the drill (read-only)
    └── D1.1-io-redirection.sh   ← my practice log (exists only once done)
```

`02-bash/` is large enough to need one extra level:

```
02-bash/B1-basics/B1.1-quoting-expansion/
├── B1.1-quoting-expansion.md
└── B1.1-quoting-expansion.sh
```

| Path | Contents |
|------|----------|
| `01-essential-tools/` … `09-security/` | Drills and practice logs, by domain |
| `samples/` | Sample data the drills reference (access.log, users.csv, …), by relative path |
| `lib/` | Reusable script skeleton |
| `setup/` | One-shot restore after rebuilding the practice VM |

**A `.sh` file existing means that KP has been practiced.** `ls` is the progress tracker.

## Practice machine

VM at 192.168.89.10 (CentOS Stream 10, root login). Repo lives at
`/home/bash-practice/linux-drills`.

Heads up: domains 04, 05, 07 and 09 (storage, filesystems, networking, SELinux) need a second
host and spare disks. They can't be done on the single VM yet — the drills are stored regardless.

## Daily loop

On the practice machine:

```bash
cd /home/bash-practice/linux-drills
git pull                                  # start of session: get new drills

# ...work through a KP, log commands into that KP's .sh...

git add -A
git commit -m "D1.1 done"
git push                                  # end of session: archive
```
