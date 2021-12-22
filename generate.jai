/*
 * This is based on the ImGui generator.jai code from jai/modules/ImGui
 */

// To generate bindings, download GraphBLAS from https://github.com/DrTimothyAldenDavis/GraphBLAS and
// update the following path after you have compiled it and installed it (on Linux) or copied it
// to the windows/ directory (on Windows).
GB_PATH :: "GraphBLAS";

// We have custom declarations for these in module.jai:
GB_TYPES_TO_OMIT :: string.[
   "GxB_FC32_t",
   "GxB_FC64_t",
];

#run {
    set_build_options_dc(.{do_output=false});

    write_file := true;
    user_args := compiler_get_command_line_arguments();
    for user_args {
        if it == "-no_write"    write_file = false;
    }
    generate_bindings(write_file = write_file);
};


generate_bindings :: (write_file := true) {
    gb_data: GB_Bindings_Gen_Data;

    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .LINUX {
            array_add(*libpaths,      "linux"); // this is redundant.
            output_filename          = "unix.jai";
        } else #if OS == .WINDOWS {
            array_add(*libpaths,      "windows");
            output_filename          = "windows.jai";
        } else {
            assert(false);
        }

        array_add(*libnames,      "libgraphblas");
        array_add(*system_include_paths, "../../jai/modules/Bindings_Generator/bin/clang/11.1.0/include");
        array_add(*source_files,  tprint("%/Include/GraphBLAS.h", GB_PATH));
        strip_prefix             = "";	// We'll keep GrB_ and GxB_
        auto_detect_enum_prefixes = false;
        user_data                = *gb_data;
        will_print_bindings = () {
            // we'll also walk all the declarations recursively, making some
            // changes. see gb_visitor below.
            for context.compiler.global_scope.members {
                visit_declarations(gb_visitor, it);
            }
        };
        //get_func_args_for_printing = gb_get_function_arg_for_printing;
    }

    bindings_builder, success := generate_bindings(opts);
    if !success     return;
    defer free_buffers(*bindings_builder);
    show_generator_results();

    if write_file {
        success = write_entire_file(output_filename, bindings_builder);
        if !success {
            log_error("Could not write generated output to \"%\"\n", output_filename);
            return;
        }    
        log("\nOK! generated '%'\n", output_filename);
    }
}

GB_Bindings_Gen_Data :: struct {
    begin_end_string_args: [..]*Declaration;
}


gb_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
    // TODO: We want to do a few things here
    // - Manage complex numbers
    // - Clear up the anonymous enums
    
    return .RECURSE;
}


#import "Basic";
#import "Bindings_Generator";
#import "Compiler";
#import "File";
#import "String";
#import "System";