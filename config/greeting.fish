function typewrite
    for arg in $argv
        for i in (seq (string length $arg))
            echo -n (string sub -s $i -l 1 $arg)
            sleep 0.01
        end
    end
    echo ""
end

function fish_greeting
    mkdir -p ~/.config/fish/cache
    set datefile ~/.config/fish/cache/fish_greeting_date
    set today (date '+%Y-%m-%d')

    if test -f $datefile
        set lastdate (cat $datefile)
    else
        set lastdate ""
    end

    if test "$lastdate" != "$today"
        # execute the greeting only if the date has changed
        typewrite "" 
        typewrite " Hello, " (whoami) "!"
        typewrite " Welcome back! Today is " (date '+%A, %B %d, %Y') "."
        typewrite " The current time is " (date '+%H:%M:%S') "."
        typewrite " Remember, every day is a new opportunity to shine! 🚀"
        typewrite ""

        # update the date file
        echo $today > $datefile
    end
end
