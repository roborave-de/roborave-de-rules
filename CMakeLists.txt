#        _
#  _ __ | |__   ___ __ _ __   _____   ___   _ _ __ ___
# | '_ \| '_ \ |__ `_ \ '_ \ / _ \ \ / / | | | '_ ` _ \
# | |_) | | | |/ _  __/ | | | (_) \ V /| |_| | | | | | |
# | .__/|_| |_|\__,___|_| |_|\___/ \_/  \__,_|_| |_| |_|
# |_|
#
cmake_minimum_required(VERSION 3.10)
project(roborave-de-rules VERSION 2020)

find_program(GIT_BIN git)
find_program(XELATEX_BIN xelatex)

# -----------------------------------------------------------------------------
# Set document ID
# -----------------------------------------------------------------------------
if(NOT GIT_BIN)
	set(COMMIT_ID "")
	set(TAG_YEAR "")
	set(COMMIT_DATE "")
	message(WARNING "git not found!")
else()
	execute_process(
		COMMAND ${GIT_BIN} rev-parse --short=8 HEAD
		OUTPUT_VARIABLE COMMIT_ID
		OUTPUT_STRIP_TRAILING_WHITESPACE
		COMMAND_ECHO STDOUT
		)
	execute_process(
		COMMAND ${GIT_BIN} describe --tags --abbrev=0
		OUTPUT_VARIABLE TAG_YEAR
		OUTPUT_STRIP_TRAILING_WHITESPACE
		COMMAND_ECHO STDOUT
		)
	execute_process(
		COMMAND ${GIT_BIN} --no-pager show -s --format=%as HEAD
		OUTPUT_VARIABLE COMMIT_DATE
		OUTPUT_STRIP_TRAILING_WHITESPACE
		COMMAND_ECHO STDOUT
		)
endif()

configure_file(version.tex.in version.tex @ONLY)

function(add_latex_document LATEX_FILE)

	get_filename_component(TARGET_NAME ${LATEX_FILE} NAME_WE)

	add_custom_command(OUTPUT ${TARGET_NAME}.aux ${TARGET_NAME}.log ${TARGET_NAME}.pdf
		COMMAND ${XELATEX_BIN} -output-directory ${CMAKE_CURRENT_BINARY_DIR}
		${LATEX_FILE} ${CMAKE_CURRENT_BINARY_DIR}/version.tex
		WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
		DEPENDS ${LATEX_FILE})

	add_custom_target(${TARGET_NAME} ALL SOURCES ${TARGET_NAME}.pdf)
endfunction()

add_latex_document(firefighting_de.tex)
add_latex_document(amazeing_de.tex)
add_latex_document(jousting_de.tex)
add_latex_document(linefollowing_de.tex)
add_latex_document(sumobot_de.tex)
