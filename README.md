This project is based on [@Limeoats'](http://twitter.com/limeoats) excellent Cave Story tutorial [video series](https://www.youtube.com/watch?v=ETvApbD5xRo&list=PLNOBk_id22bw6LXhrGfhVwqQIa-M2MsLa). It differs in that it's written primarily for Linux on C++11 using clang and Make.

Assets are taken from [cavestory.org](http://www.cavestory.org/downloads_game.php) and should be converted to .png and placed in `/content` in the appropriate subdirectory.


### HOWTO Build and Launch
* from root directory, execute: `make` to build game
	* to compile a debug build, use `make DEBUG=1`
	* once a debug build has been made, use `lldb` to debug it
		* `lldb ./bin/mycavestory$`
		* `run`
		* see [http://meowni.ca/posts/unscary-lldb/](http://meowni.ca/posts/unscary-lldb/) for a crash course in using lldb
* From root directory, to launch game execute `./bin/mycavestory`


### Resources and References
* [http://www.willusher.io/sdl2%20tutorials/2013/08/15/lesson-0-setting-up-sdl/](http://www.willusher.io/sdl2%20tutorials/2013/08/15/lesson-0-setting-up-sdl/)
* [http://lazyfoo.net/tutorials/SDL/01_hello_SDL/linux/cli/index.php](http://lazyfoo.net/tutorials/SDL/01_hello_SDL/linux/cli/index.php)
* tmux cheatsheet: [https://gist.github.com/MohamedAlaa/2961058](https://gist.github.com/MohamedAlaa/2961058)
* Makefiles:
	* [https://www.cs.bu.edu/teaching/cpp/writing-makefiles/](https://www.cs.bu.edu/teaching/cpp/writing-makefiles/)
	* [http://www.willusher.io/sdl2%20tutorials/2013/08/15/lesson-0-linux-command-line/](http://www.willusher.io/sdl2%20tutorials/2013/08/15/lesson-0-linux-command-line/)
  * [https://gist.github.com/yorickvP/3171926](https://gist.github.com/yorickvP/3171926)





