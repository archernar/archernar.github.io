function util.silencer() {
        if [[ "$SILENT" -gt 0 ]]; then
            cat /dev/stdin >/dev/null 2>&1;
        else
            cat /dev/stdin
        fi
    fi
}
