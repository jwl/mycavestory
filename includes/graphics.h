#ifndef GRAPHICS_H
#define GRAPHICS_H

// Forward declaring these variables now since they're just pointers and will properly reference SDL in implementation files
struct SDL_Window;
struct SDL_Renderer;

class Graphics {
public:
	Graphics();
	~Graphics();
private:
	SDL_Window* _window;
	SDL_Renderer* _renderer;
};

#endif
