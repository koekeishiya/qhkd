#run build();

build :: () {
    TARGET_PATH :: "bin";
    TARGET_NAME :: "qhkd";

    build_release := false;

    w := compiler_create_workspace();
    options := get_build_options();

    args := options.compile_time_command_line;
    for arg: args {
        if arg == {
        case "release";
            build_release = true;
        case;
            compiler_report(tprint("Command-line argument #%, '%', is invalid. Valid options are: 'release'.\n", it_index+1, arg));
        }
    }

    options.output_path = TARGET_PATH;
    options.output_executable_name = TARGET_NAME;
    options.cpu_target = .ARM64;

    if build_release {
        options.stack_trace = false;
        set_optimization(*options, .OPTIMIZED);
        // set_optimization(*options, .VERY_OPTIMIZED);
    } else {
        set_optimization(*options, .DEBUG);
    }

    set_build_options(options, w);
    add_build_file("src/main.jai", w);

    set_build_options_dc(.{do_output=false});
}

#import "Basic";
#import "Compiler";
