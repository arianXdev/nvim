return {
    'goolord/alpha-nvim',
    config = function()
        local startify = require 'alpha.themes.startify'
        startify.file_icons.enabled = false
        startify.section.header.val = {
            '              :::!~!!!!!:.                                                                          ',
            '          .xUHWH!! !!?M88WHX:.                                                                      ',
            '        .X*#M@$!!  !X!M$$$$$$WWx:.                                                                  ',
            '       :!!!!!!?H! :!$!$$$$$$$$$$8X:                .                                   _            ',
            '      !!~  ~:~!! :~!$!#$$$$$$$$$$8X:            .-/ \\                                 / =-.         ',
            '     :!~::!H!<   ~.U$X!?R$$$$$$$$MM!        _.-~ /   \\___  ______ __  _    _     _   /___| ~-._ ',
            '     ~!~!!!!~~ .:XW$$$U!!?$$$$$$RMM!        \\ /  -~||  __||_  __//  || |  | |  /| | / __/| .\\ / ',
            '       !:~~~ .:!M"T#$$$$WX??#MRRMMM!         / . . ||  __| | |\\ / \' || |__| |_/ | || (_/ |   \\  ',
            '       ~?WuxiW*`   `"#$$$$8!!!!??!!!        / / ~| ||____| |_| /_/|_||____|____||_| \\___\\| |\\ \\ ',
            '     :X- M$$$$       `"T#$T~!8$WUXU~       / /   |-~\\    \\ \\ \\ | || ||    |    // / /   /~-| \\ \\',
            '    :%`  ~#$$$m:        ~!~ ?$$$$$$       / /__ / \\  \\____\\|\\_\\|_/|_||____|___//_/\\/___/  / __\\ \\ ',
            '  :!`.-   ~T$$$$8xx.  .xWW- ~""##*"      /  .-~\\   \\-~                                 ~-/\\/~-.  \\ ',
            '-~~:<` !    ~?T#$$@@W@*?$$      /`      /.-~    \\                                         /    ~-\\.  ',
            ' .!~~ !!     .:XUW$W!~ `"~:    :       /~      .-           WELCOME BACK, ARIAN.          -.      ~\\',
            '%`!!  !H:   !WM$$$$Ti.: .!WUn+!`       \\    .-~                  XXXXXXXXXXX                ~-.    /',
            ':X~ .: ?H.!u "$$$B$$$!W:U!T$$M~         \\.-~                                                   ~-./ ',
            '@!.-~   ?@WTWo("*$$$W$TH$! `                                                                        ',
            '!-~    : ?$$$B$Wu("**$RM!                                                                            ',
            '!     :   ~$$$$$B$$en:``                                                                            ',
            '~    :     ~"##*$$$$M~                                                                               ',
        }

        startify.config.layout = {
            { type = 'padding', val = 1 },
            startify.section.header,
            { type = 'padding', val = 2 },
            startify.section.mru_cwd,
            startify.section.mru,
            { type = 'padding', val = 1 },
        }

        require('alpha').setup(startify.config)
    end,
}
