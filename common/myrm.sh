#
# Author        : Summer
# Description   : myrm
# 
# Revision      : 
# Rev.    Date        Designer    Description
# 1.0     2026-10-10  Summer      Initial version
# 1.1     2026-10-13  Summer      兼容 -rf/-f/-r 参数；修复 printf 格式与 exit 隐患
# 

myrm() {
    local trash_root="${SUMMER_MYRM_TRASH}"

    if [ $# -eq 0 ]; then
        echo "missing operand" >&2
        return 1
    fi

    mkdir -p "$trash_root"

    local src abs id entry
    for src in "$@"; do
        case "$src" in
            -r|-R|-f|-rf|-fr|-Rf|-fR) continue ;;
        esac

        if [ ! -e "$src" ] && [ ! -L "$src" ]; then
            printf "cannot remove $src: No such file or directory\n" "$src" >&2
            continue
        fi

        if [ -d "$src" ]; then
            abs="$(cd "$src" && pwd)"
        else
            abs="$(cd "$(dirname "$src")" && pwd)/$(basename "$src")"
        fi

        id="$(date +%Y%m%d-%H%M%S)-$$-$RANDOM-$(basename "$src")"
        entry="$trash_root/$id"
        mkdir -p "$entry"
        printf '%s\n' "$abs" > "$entry/path"

        if ! mv -- "$abs" "$entry/data" 2>/dev/null; then
            cp -a -- "$abs" "$entry/data"
            rm -rf -- "$abs"
        fi
    done
}

