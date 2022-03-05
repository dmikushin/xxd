cmake_minimum_required(VERSION 3.0)

# Read the resulting HEX content into variable
file(READ ${FILE_HEX} CONTENT_HEX)

string(SHA256 FILE_NAME_HASH ${FILE_KEY})

find_program(XDG_MIME xdg-mime)
if (XDG_MIME)
execute_process(COMMAND ${XDG_MIME} query filetype ${FILE_PATH} OUTPUT_VARIABLE FILE_MIME)
else()
set(FILE_MIME "unsupported")
endif()

# Substitute encoded HEX content into template source file
configure_file("${CMAKE_CURRENT_INCLUDE_DIR}/xxd.in" ${EMBED_FILE_PATH})

