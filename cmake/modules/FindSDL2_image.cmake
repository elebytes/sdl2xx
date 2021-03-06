find_path(SDL2_IMAGE_INCLUDE_DIR SDL_image.h PATH_SUFFIXES SDL2)
find_library(SDL2_IMAGE_LIBRARY SDL2_image)

add_library(SDL2::SDL2_image SHARED IMPORTED)
set_target_properties(SDL2::SDL2_image PROPERTIES
	INTERFACE_INCLUDE_DIRECTORIES "${SDL2_IMAGE_INCLUDE_DIR}"
	IMPORTED_LOCATION "${SDL2_IMAGE_LIBRARY}"
)
