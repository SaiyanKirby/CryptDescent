var half_tile = tile_size / 2;

if(global.current_player == playerNumber)
	{
	//hop animation when moving
	var hop = sin((moveTimer / moveTime) * pi) * half_tile;
	draw_sprite(sprPlayer,playerClass,x+half_tile,y+(half_tile)-hop);
	
	//draw cursor
	if(global.game_state == "explore" && !isMoving && playerMovement < playerSpeed)
		{
		var t = floor(cursorTimer / 8) % 3;

		if(scrCanMove(x - tile_size, y))
			{draw_sprite(sprCursor, t, x - tile_size, y);}
		if(scrCanMove(x, y - tile_size))
			{draw_sprite(sprCursor, t, x, y - tile_size);}
		if(scrCanMove(x + tile_size, y))
			{draw_sprite(sprCursor, t, x + tile_size, y);}
		if(scrCanMove(x, y + tile_size))
			{draw_sprite(sprCursor, t, x, y + tile_size);}
		}
	}
else
	{
	var xoffset = (playerNumber * (tile_size / 4)) - (tile_size / 8);
	var yoffset = tile_size * 0.75;
	draw_sprite_ext(sprPlayer,playerClass,x + xoffset,y + yoffset,0.5,0.5,0,c_white,1);
	};