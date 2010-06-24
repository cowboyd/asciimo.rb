Asciimo.rb
=======

A ruby wrapper around asciimo

* homepage: [http://asciimo.com](http://asciimo.com)
* asciimo.js: [http://github.com/Marak/asciimo](http://github.com/Marak/asciimo)
* asciimo.rb: [http://github.com/cowboyd/asciimo.rb](http://github.com/cowboyd/asciimo.rb)

Install
=======

    gem install asciimo

Use it from the Command Line
============================

    legolas:~ cowboyd$ asciimo -h
    Usage: asciimo [options]
        -f, --font FONT                  Render TEXT with this font
        -c, --color [COLOR]              Render TEXT with this color
        -m MESSAGE                       render MESSAGE instead of STDIN
            --list-colors                List possible colors
            --list-fonts                 List possible fonts
        -h                               show help

from stdin

    legolas:~ cowboyd$ asciimo 
    Hello World
     _ _       _  _        _ _ _            _    _ 
    | | | ___ | || | ___  | | | | ___  _ _ | | _| |
    |   |/ ._>| || |/ . \ | | | |/ . \| '_>| |/ . |
    |_|_|\___.|_||_|\___/ |__/_/ \___/|_|  |_|\___|

or from an argument

    legolas:~ cowboyd$ asciimo -m "Hello World"
     _ _       _  _        _ _ _            _    _ 
    | | | ___ | || | ___  | | | | ___  _ _ | | _| |
    |   |/ ._>| || |/ . \ | | | |/ . \| '_>| |/ . |
    |_|_|\___.|_||_|\___/ |__/_/ \___/|_|  |_|\___|

change the font and color
    
    legolas:~ cowboyd$ asciimo -m "Str Wrz" --font starwars --color yellow
         _______..___________..______         ____    __    ____ .______       ________  
        /       ||           ||   _  \        \   \  /  \  /   / |   _  \     |       /  
       |   (----``---|  |----`|  |_)  |        \   \/    \/   /  |  |_)  |    `---/  /   
        \   \        |  |     |      /          \            /   |      /        /  /    
    .----)   |       |  |     |  |\  \----.      \    /\    /    |  |\  \----.  /  /----.
    |_______/        |__|     | _| `._____|       \__/  \__/     | _| `._____| /________|

(trust me it's yellow)
Use it from Ruby
================

    require 'asciimo'
    
    Asciimo.text("Star_Wars.flf", "Str Wrz", "yellow")


    