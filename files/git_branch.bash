     #git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
     if [ -d ".git" ]; then
         git branch 2> /dev/null | sed 's/^..//' | sed 's/master/m/'
     fi
}
