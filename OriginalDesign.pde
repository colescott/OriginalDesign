void setup()
{
	size(500,500,P3D);
	background(0);
}

float sphereX = 250;
float sphereY = 250;
float sphereZ = 0;

float boxX = -10;
float boxY = 500;
float boxZ = 20;

float playerX = 0;
float playerY = 0;
float playerZ = 0;
float playerSpeed = 2.5;

boolean keys[] = {false, false, false, false, false, false};

void drawSphere()
{
	translate(sphereX, sphereY, sphereZ);
	sphere(50);
	translate(-sphereX, -sphereY, -sphereZ);
}

void drawBox()
{
	translate(boxX, boxY, boxZ);
	box(50);
	translate(-boxX, -boxY, -boxZ);
}

void draw()
{
	if(keys[0])
		playerZ += playerSpeed;
	if(keys[1])
		playerZ -= playerSpeed;
	if(keys[2])
		playerX += playerSpeed;
	if(keys[3])
		playerX -= playerSpeed;
	if(keys[4])
		playerY += playerSpeed;
	if(keys[5])
		playerY -= playerSpeed;
	
	background(255);
	fill(255,0,255,0);
	translate(playerX, playerY, playerZ);
	drawSphere();
	drawBox();
	translate(-playerX, -playerY, -playerZ);
}

void keyPressed()
{
	if(key == 'W' || key == 'w')
    	keys[0]=true;
	if(key == 'S' || key == 's')
    	keys[1]=true;
	if(key == 'A' || key == 'a')
		keys[2] = true;
	if(key == 'D' || key == 'd')
		keys[3] = true;
	if(key == ' ')
		keys[4] = true;
	if(key == CODED)
		if(keyCode == SHIFT)
			keys[5] = true;
}

void keyReleased()
{
	if(key == 'W' || key == 'w')
    	keys[0] = false;
	if(key == 'S' || key == 's')
    	keys[1] = false;
	if(key == 'A' || key == 'a')
		keys[2] = false;
	if(key == 'D' || key == 'd')
		keys[3] = false;
	if(key == ' ')
		keys[4] = false;
	if(key == CODED)
		if(keyCode == SHIFT)
			keys[5] = false;
} 

