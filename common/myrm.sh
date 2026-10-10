#
# Author        : Summer
# Description   : myrm
# 
# Revision      : 
# Rev.    Date        Designer    Description
# 1.0     2026-10-10  Summer      Initial version
# 

myrm() {
    local trash_root="${MYTRASH_DIR:-$HOME/.local/share/mytrash}"

    if [ $# -eq 0 ]; then
        echo "missing operand" >&2
        exit 1
    fi

    mkdir -p "$trash_root"

    local src abs id entry
    for src in "$@"; do
        if [ ! -e "$src" ] && [ ! -L "$src" ]; then
            printf "annot remove $src: No such file or directory" "$src" >&2
            continue
        fi

        if [ -d "$src" ]; then
            abs="$(cd "$src" && pwd)"
        else
            abs="$(cd "$(dirname "$src")" && pwd)/$(basename "$src")"
        fi

        id="$(date +%Y%m%d-%H%M%S)-$$-$RANDOM-$(basename $src)"
        entry="$trash_root/$id"
        mkdir -p "$entry"
        printf '%s\n' "$abs" > "$entry/path"

        if ! mv -- "$abs" "$entry/data" 2>/dev/null; then
            cp -a -- "$abs" "$entry/data"
            rm -rf -- "$abs"
        fi
    done
}

