#!/usr/bin/env bash
#
# 脚本骨架 —— 从 B3.1 起每道题都从这儿开始。
# 用法：cp lib/skeleton.sh solutions/B4.1/your-script.sh
#
# set -e          任一命令失败就退出
# set -u          用到未定义变量就报错（打错变量名不再静默变空）
# set -o pipefail 管道里任一环失败，整条管道就算失败（不然只看最后一个命令）
set -euo pipefail

# 只按换行和制表符切词，不按空格 —— 带空格的文件名不会被拆开
IFS=$'\n\t'

readonly SCRIPT_NAME="${0##*/}"

usage() {
    cat <<EOF
Usage: $SCRIPT_NAME [-h] [-v] -f FILE

  -f FILE   input file (required)
  -v        verbose
  -h        show this help
EOF
}

die() {
    echo "$SCRIPT_NAME: $*" >&2
    exit 1
}

main() {
    local file="" verbose=0

    while getopts ':f:vh' opt; do
        case "$opt" in
            f) file="$OPTARG" ;;
            v) verbose=1 ;;
            h) usage; exit 0 ;;
            :) die "option -$OPTARG requires an argument" ;;
            \?) die "unknown option -$OPTARG" ;;
        esac
    done

    [[ -n "$file" ]] || { usage >&2; die "missing required -f"; }
    [[ -r "$file" ]] || die "cannot read: $file"

    (( verbose )) && echo "reading $file" >&2

    # ---- 正文写这儿 ----

}

main "$@"
