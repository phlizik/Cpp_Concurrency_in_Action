# urls: 
# - http://stackoverflow.com/questions/30734136/cmake-linking-error-pthread-enable-multithreading-to-use-stdthread-operation
# - https://cmake.org/cmake/help/v3.0/command/string.html
# - http://stackoverflow.com/questions/24986392/looping-over-a-string-list
# - https://cmake.org/cmake/help/v3.0/command/foreach.html

cmake_minimum_required (VERSION 2.6)
project (CCiA_Listings)
SET(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} "-std=c++11 -pthread")

find_package (Threads)

macro(create_from_listing num0 num1)
	SET(LISTING_NAME "listing_${num0}.${num1}")
	SET(LISTING_SRC_NAME src/${LISTING_NAME}.cpp)
	add_executable (${LISTING_NAME} ${LISTING_SRC_NAME})
	target_link_libraries (${LISTING_NAME} ${CMAKE_THREAD_LIBS_INIT})
endmacro(create_from_listing)

function(has_boost_dependency num0 num1 result_bool)
	SET(LISTING_NAME "listing_${num0}.${num1}")
	SET(LISTING_SRC_NAME src/${LISTING_NAME}.cpp)
endfunction(has_boost_dependency)

# url: https://cmake.org/cmake/help/v3.0/command/execute_process.html
execute_process(
	COMMAND sh SCRIPTS/list_pair_numbers_listings_with_main.sh
	WORKING_DIRECTORY ../.
	OUTPUT_VARIABLE output_pair_numbers
	)

#message(list pair numbers: "${list_pair_numbers}")

foreach(str_pair_numbers ${output_pair_numbers})
	#message(str_pair_numbers: ${str_pair_numbers})
	STRING(REPLACE "." ";" str_pair_numbers ${str_pair_numbers} )
	#message(str_pair_numbers: ${str_pair_numbers})
	list(GET str_pair_numbers 0 NUM_MAJ)
	list(GET str_pair_numbers 1 NUM_MIN)
	#message(MAJ: ${NUM_MAJ}\tMIN: ${NUM_MIN})
	create_from_listing(${NUM_MAJ} ${NUM_MIN})
endforeach(str_pair_numbers)
