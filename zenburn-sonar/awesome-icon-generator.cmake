# {{{ Find external utilities
macro(a_find_program var prg req)
    set(required ${req})
    find_program(${var} ${prg})
    if(NOT ${var})
        message(STATUS "${prg} not found.")
        if(required)
            message(FATAL_ERROR "${prg} is required to build awesome")
        endif()
    else()
        message(STATUS "${prg} -> ${${var}}")
    endif()
endmacro()

# theme graphics
a_find_program(CONVERT_EXECUTABLE convert TRUE)
# }}}

# {{{ Theme icons
file(GLOB icon_sources RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/titlebar/*.png)

foreach (icon ${icon_sources})
    # Copy all icons to the build dir to simplify the following code.
    # Source paths are interpreted relative to ${SOURCE_DIR}, target paths
    # relative to ${BUILD_DIR}.
    get_filename_component(icon_path ${icon} PATH)
    get_filename_component(icon_name ${icon} NAME)
    file(COPY ${icon} DESTINATION ${icon_path})
    set(ALL_ICONS ${ALL_ICONS} "${icon_path}/${icon_name}")
endforeach()


macro(a_icon_convert match replacement input)
    string(REPLACE ${match} ${replacement} output ${input})

    if(NOT ${input} STREQUAL ${output} AND NOT ";${ALL_ICONS};" MATCHES ";${output};")
        set(ALL_ICONS ${ALL_ICONS} ${output})

        add_custom_command(
            COMMAND ${CONVERT_EXECUTABLE} ${input} ${ARGN} ${output}
            OUTPUT  ${output}
            DEPENDS ${input}
            VERBATIM)
    endif()
endmacro()

foreach(icon ${ALL_ICONS})
    # Make unfocused icons translucent
    a_icon_convert("_focus" "_normal" ${icon}
        -colorspace rgb -gamma 0.6 -channel A -evaluate Multiply 0.4)
endforeach()

foreach(icon ${ALL_ICONS})
    # Make inactive icons grayscale
    a_icon_convert("_active" "_inactive" ${icon}
        -colorspace Gray)
endforeach()

add_custom_target(generated_icons ALL DEPENDS ${ALL_ICONS})
# }}}
