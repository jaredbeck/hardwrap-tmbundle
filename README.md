Why
===

You use textmate and you want to change this *long* line:

    # Irony lo-fi 3 wolf moon, pitchfork +1 wayfarers bespoke mustache retro wolf kale chips direct trade keytar.

to this:

    # Irony lo-fi 3 wolf moon, pitchfork +1 wayfarers bespoke
    # mustache retro wolf kale chips direct trade keytar.

You also want to do the same with other prefixes, like
doubleslash (`//`), multiline slashstar, or any level of nested
email quoting (`>`).

Install
=======

Sorry, but for now you need `rbenv` and a very specific ruby.
I know that's silly.  Feel free to submit a pull request.

    brew install rbenv
    brew install ruby-build
    rbenv install 1.9.3-p327
    rbenv rehash
    gem install activesupport

    tmbundles="$HOME/Library/Application Support/TextMate/Bundles"
    mkdir -p "$tmbundles"
    cd "$tmbundles"

    githardwrap='git://github.com/jaredbeck/hardwrap-tmbundle.git'
    git clone $githardwrap "Hardwrap.tmbundle"

    osascript -e 'tell app "TextMate" to reload bundles'
