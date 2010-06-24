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
    Hai U
                                    
    ,--.  ,--.        ,--.    ,--. ,--. 
    |  '--'  | ,--,--.`--'    |  | |  | 
    |  .--.  |' ,-.  |,--.    |  | |  | 
    |  |  |  |\ '-'  ||  |    '  '-'  ' 
    `--'  `--' `--`--'`--'     `-----'  
or from an argument

    legolas:~ cowboyd$ asciimo -m "Hai U"

    ,--.  ,--.        ,--.    ,--. ,--. 
    |  '--'  | ,--,--.`--'    |  | |  | 
    |  .--.  |' ,-.  |,--.    |  | |  | 
    |  |  |  |\ '-'  ||  |    '  '-'  ' 
    `--'  `--' `--`--'`--'     `-----'  

change the font

    legolas:~ cowboyd$ asciimo -m "Str Wrz" -f "Star_Wars.flf"
         _______..___________..______         ____    __    ____ .______      ________  
        /       ||           ||   _  \        \   \  /  \  /   / |   _  \    |       /  
       |   (----``---|  |----`|  |_)  |        \   \/    \/   /  |  |_)  |   `---/  /   
        \   \        |  |     |      /          \            /   |      /       /  /    
    .----)   |       |  |     |  |\  \----.      \    /\    /    |  |\  \----. /  /----.
    |_______/        |__|     | _| `._____|       \__/  \__/     | _| `._____|/________|

Use it from Ruby
================

    require 'asciimo'
    
    Asciimo.text("Star_Wars.flf", "Str Wrz", "yellow")


    