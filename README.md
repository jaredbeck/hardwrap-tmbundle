Why
===

You use textmate and you want to change this *long* line:

    # Irony lo-fi 3 wolf moon, pitchfork +1 wayfarers bespoke mustache retro wolf kale chips direct trade keytar. Pop-up synth wolf, bespoke viral cosby sweater farm-to-table messenger bag typewriter you probably haven't heard of them bicycle rights scenester fingerstache blog.

to this:

    # Irony lo-fi 3 wolf moon, pitchfork +1 wayfarers bespoke mustache
    # retro wolf kale chips direct trade keytar. Pop-up synth wolf,
    # bespoke viral cosby sweater farm-to-table messenger bag
    # typewriter you probably haven't heard of them bicycle rights
    # scenester fingerstache blog.

You also want to do the same with doubleslash (`//`), multiline
slashstar, or any level of nested email quoting (`>`).

Install
=======

Sorry, but for now you need `rvm`.  I know that's silly.  Feel free
to submit a pull request.

    rvm use 1.9.3
    gem install activesupport

    tmbundles='~/Library/Application\ Support/TextMate/Bundles'
    githardwrap='git://github.com/jaredbeck/hardwrap-tmbundle.git'

    mkdir -p $tmbundles
    cd $tmbundles

    git clone $githardwrap "Hardwrap.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'
