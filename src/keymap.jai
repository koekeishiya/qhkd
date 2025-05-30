add_keymap :: () {
    shell_bind("kitty --single-instance -d ~ &> /dev/null", Mod_Cmd, kVK_Return);
    shell_bind("screencapture -i -c", Mod_Shift|Mod_Cmd, kVK_ANSI_S);

    bind(#code {
        success, rsp := yabai("window\x00--toggle\x00music");
        if !success shell("open -a Music");
    }, Mod_Cmd|Mod_Alt, kVK_ANSI_M);

    bind(#code {
        success, rsp := yabai("window\x00--toggle\x00spotify");
        if !success shell("open -a Spotify");
    }, Mod_Cmd|Mod_Alt, kVK_ANSI_S);

    bind(#code {
        success, rsp := yabai("window\x00--toggle\x00discord");
        if !success shell("open -a Discord");
    }, Mod_Cmd|Mod_Alt, kVK_ANSI_D);

    bind(#code {
        success, rsp := yabai("window\x00--toggle\x00transmission");
        if !success shell("open -a Transmission");
    }, Mod_Cmd|Mod_Alt, kVK_ANSI_T);

    #insert #run yabai_bind("window\x00--focus", .[
        .{"west",    Mod_Alt, kVK_ANSI_H},
        .{"south",   Mod_Alt, kVK_ANSI_J},
        .{"north",   Mod_Alt, kVK_ANSI_K},
        .{"east",    Mod_Alt, kVK_ANSI_L},
        .{"recent",  Mod_Alt, kVK_ANSI_X},
    ]);

    #insert #run yabai_bind("window\x00--swap", .[
        .{"west",   Mod_Shift|Mod_Alt, kVK_ANSI_H},
        .{"south",  Mod_Shift|Mod_Alt, kVK_ANSI_J},
        .{"north",  Mod_Shift|Mod_Alt, kVK_ANSI_K},
        .{"east",   Mod_Shift|Mod_Alt, kVK_ANSI_L},
        .{"recent", Mod_Shift|Mod_Alt, kVK_ANSI_X},
    ]);

    #insert #run yabai_bind("window\x00--warp", .[
        .{"west",   Mod_Shift|Mod_Cmd, kVK_ANSI_H},
        .{"south",  Mod_Shift|Mod_Cmd, kVK_ANSI_J},
        .{"north",  Mod_Shift|Mod_Cmd, kVK_ANSI_K},
        .{"east",   Mod_Shift|Mod_Cmd, kVK_ANSI_L},
        .{"recent", Mod_Shift|Mod_Cmd, kVK_ANSI_X},
    ]);

    #insert #run yabai_bind("window\x00--insert", .[
        .{"west",   Mod_Control|Mod_Alt, kVK_ANSI_H},
        .{"south",  Mod_Control|Mod_Alt, kVK_ANSI_J},
        .{"north",  Mod_Control|Mod_Alt, kVK_ANSI_K},
        .{"east",   Mod_Control|Mod_Alt, kVK_ANSI_L},
        .{"stack",  Mod_Control|Mod_Alt, kVK_ANSI_I},
    ]);

    #insert #run yabai_bind("window\x00--grid", .[
        .{"1:1:0:0:1:1", Mod_Shift|Mod_Alt|Mod_Fn, kVK_UpArrow},
        .{"1:2:0:0:1:1", Mod_Shift|Mod_Alt|Mod_Fn, kVK_LeftArrow},
        .{"1:2:1:0:1:1", Mod_Shift|Mod_Alt|Mod_Fn, kVK_RightArrow},
        .{"6:6:1:1:4:4", Mod_Shift|Mod_Alt|Mod_Fn, kVK_DownArrow},
    ]);

    #insert #run yabai_bind("window\x00--space", .[
        .{"recent\x00--focus", Mod_Shift|Mod_Cmd, kVK_ANSI_X},
        .{"prev\x00--focus",   Mod_Shift|Mod_Cmd, kVK_ANSI_Z},
        .{"next\x00--focus",   Mod_Shift|Mod_Cmd, kVK_ANSI_C},
        .{"1\x00--focus",      Mod_Shift|Mod_Cmd, kVK_ANSI_1},
        .{"2\x00--focus",      Mod_Shift|Mod_Cmd, kVK_ANSI_2},
        .{"3\x00--focus",      Mod_Shift|Mod_Cmd, kVK_ANSI_3},
        .{"4\x00--focus",      Mod_Shift|Mod_Cmd, kVK_ANSI_4},
        .{"5\x00--focus",      Mod_Shift|Mod_Cmd, kVK_ANSI_5},
    ]);

    yabai_bind("window\x00--toggle\x00zoom-fullscreen", Mod_Alt, kVK_ANSI_F);
    yabai_bind("window\x00--toggle\x00zoom-parent", Mod_Alt, kVK_ANSI_D);
    yabai_bind("window\x00--toggle\x00split", Mod_Alt, kVK_ANSI_E);
    yabai_bind("window\x00--toggle\x00sticky", Mod_Alt, kVK_ANSI_S);
    yabai_bind("window\x00--toggle\x00pip", Mod_Alt, kVK_ANSI_P);
    yabai_bind("window\x00--toggle\x00float\x00--grid\x004:4:1:1:2:2",  Mod_Alt, kVK_ANSI_T);

    #insert #run yabai_bind("space\x00--focus", .[
        .{"recent", Mod_Cmd|Mod_Alt, kVK_ANSI_X},
        .{"prev",   Mod_Cmd|Mod_Alt, kVK_ANSI_Z},
        .{"next",   Mod_Cmd|Mod_Alt, kVK_ANSI_C},
        .{"1",      Mod_Cmd|Mod_Alt, kVK_ANSI_1},
        .{"2",      Mod_Cmd|Mod_Alt, kVK_ANSI_2},
        .{"3",      Mod_Cmd|Mod_Alt, kVK_ANSI_3},
        .{"4",      Mod_Cmd|Mod_Alt, kVK_ANSI_4},
        .{"5",      Mod_Cmd|Mod_Alt, kVK_ANSI_5},
    ]);

    yabai_bind("space\x00--equalize", Mod_Shift|Mod_Cmd, kVK_ANSI_I);
    yabai_bind("space\x00--balance",  Mod_Shift|Mod_Alt, kVK_ANSI_I);
    yabai_bind("space\x00--toggle\x00padding\x00--toggle\x00gap",  Mod_Alt, kVK_ANSI_A);
}
