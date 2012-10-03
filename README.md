Install
=======

    tmbundles='~/Library/Application\ Support/TextMate/Bundles'
    githardwrap='git://github.com/jaredbeck/hardwrap-tmbundle.git'

    mkdir -p $tmbundles
    cd $tmbundles

    git clone $githardwrap "Hardwrap.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'
