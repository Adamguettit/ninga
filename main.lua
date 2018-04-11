-----------------------------------------------------------------------------------------
--
-- main.lua
-- created on : april 8
-- createb by : Adam
-- This code is a ninga that does cool things like moving and making sound.
-----------------------------------------------------------------------------------------

local ninga = display.newImageRect( "./assets/sprites/ninga.png", 539, 495 )
ninga.x = display.contentCenterX 
ninga.y = display.contentCenterY 
ninga.id = " ninga "


local leftarrow = display.newImageRect( "./assets/sprites/leftarrow.png", 200, 200 )
leftarrow.x = display.contentCenterX - 800 
leftarrow.y = display.contentCenterY + 600
leftarrow.id = " leftarrow "

local rightarrow = display.newImageRect( "./assets/sprites/rightarrow.png", 200, 200 )
rightarrow.x = display.contentCenterX - 500 
rightarrow.y = display.contentCenterY + 600
rightarrow.id = " rihgtarrow "

local drums = audio.loadsound('drums')

local function leftarrowTouch( event )
	ninga.x = ninga.x - 50

	if ninga.x < 0 then
		ninga.x = display.contentCenterX
	end
end

local function rightarrowTouch( event )
	ninga.x = ninga.x + 50

	if ninga.x > 2048 then
		ninga.x = display.contentCenterX
	end
end



local function ningaTouch()
	audio.play('drums')
end 


leftarrow:addEventListener( "touch", leftarrowTouch )
rightarrow:addEventListener( "touch", rightarrowTouch )
ninga:addEventListener("touch", ningaTouch)
