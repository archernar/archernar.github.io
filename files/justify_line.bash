function justify_line() {

    local tmp1=$(mktemp)
    echo "$1" | gawk -v num=$2 '
        function justify(szIn,  l,n,i,sz,m,k,A, flag) {
            sz = "";
            n =  split(szIn,A," ");
            r = 1
            delim = ""
            flag=0
            for (i=1; i<=n; i++) {
                sz = delim sz A[i] " ";
                delim = ""
                l = l + length(A[i] " ");
                if (l > (num*r)) {
                    r=r+1;
                    sz = sz "\n"
                    flag=1
                    delim = ""
                }
            }
            if (flag == 1) sz = sz "\n"
            return sz;
        }
        {
            print justify($0);
        }' > "$tmp1"

    cat "$tmp1"
    rm -f "$tmp1" >/dev/null 2>&1
}
function justify_line() {

    local tmp1=$(mktemp)
    echo "$1" | gawk -v num=$2 '
        function justify(szIn,  l,n,i,sz,m,k,A, flag) {
            sz = "";
            n =  split(szIn,A," ");
            r = 1
            delim = ""
            flag=0
            for (i=1; i<=n; i++) {
                sz = delim sz A[i] " ";
                delim = ""
                l = l + length(A[i] " ");
                if (l > (num*r)) {
                    r=r+1;
                    sz = sz "\n"
                    flag=1
                    delim = ""
                }
            }
            if (flag == 1) sz = sz "\n"
            return sz;
        }
        {
            print justify($0);
        }' > "$tmp1"

    cat "$tmp1"
    rm -f "$tmp1" >/dev/null 2>&1
}
function justify_line() {

    local tmp1=$(mktemp)
    echo "$1" | gawk -v num=$2 '
        function justify(szIn,  l,n,i,sz,m,k,A, flag) {
            sz = "";
            n =  split(szIn,A," ");
            r = 1
            delim = ""
            flag=0
            for (i=1; i<=n; i++) {
                sz = delim sz A[i] " ";
                delim = ""
                l = l + length(A[i] " ");
                if (l > (num*r)) {
                    r=r+1;
                    sz = sz "\n"
                    flag=1
                    delim = ""
                }
            }
            if (flag == 1) sz = sz "\n"
            return sz;
        }
        {
            print justify($0);
        }' > "$tmp1"

    cat "$tmp1"
    rm -f "$tmp1" >/dev/null 2>&1
}
function justify_line() {

    local tmp1=$(mktemp)
    echo "$1" | gawk -v num=$2 '
        function justify(szIn,  l,n,i,sz,m,k,A, flag) {
            sz = "";
            n =  split(szIn,A," ");
            r = 1
            delim = ""
            flag=0
            for (i=1; i<=n; i++) {
                sz = delim sz A[i] " ";
                delim = ""
                l = l + length(A[i] " ");
                if (l > (num*r)) {
                    r=r+1;
                    sz = sz "\n"
                    flag=1
                    delim = ""
                }
            }
            if (flag == 1) sz = sz "\n"
            return sz;
        }
        {
            print justify($0);
        }' > "$tmp1"

    cat "$tmp1"
    rm -f "$tmp1" >/dev/null 2>&1
}
