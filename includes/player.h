#ifndef PLAYER_H
#define PLAYER_H

#include "globals.h"
#include "animatedsprite.h"
#include "slope.h"

class Graphics;

class Player : public AnimatedSprite {
public:
	Player();
	Player(Graphics &graphics, Vector2 spawnPoint);
	void draw(Graphics &graphics);
	void update(float elapsedTime);

	// void moveLeft
	// Moves the playerleft by -dx
	void moveLeft();

	// void moveRight
	// Moves the player right by +dx
	void moveRight();

	// void stopMoving
	// Stops moving the player
	void stopMoving();

	// void jump()
	// Starts jumping
	void jump();

	virtual void animationDone(std::string currentAnimation);
	virtual void setupAnimations();

	void handleTileCollisions(std::vector<Rectangle> &others);
	void handleSlopeCollisions(std::vector<Slope> &others);

	float getX() const;
	float getY() const;
private:
	float _dx, _dy;

	Direction _facing;

	bool _grounded;
};

#endif
