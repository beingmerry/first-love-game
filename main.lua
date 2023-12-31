function love.load()
    -- Load assets
    player = {
        image = love.graphics.newImage("assets/graphics/player.png"),
        x = 50,
        y = 50,
        speed = 200
    }

    background = love.graphics.newImage("assets/graphics/background.png")

    -- Other initial game state setup
end

function love.update(dt)
    -- Update the game state
    -- Example: Move player to the right
    if love.keyboard.isDown('d') then
        player.x = player.x + player.speed * dt
    end
    if love.keyboard.isDown('a') then
        player.x = player.x - player.speed * dt
    end
    if love.keyboard.isDown('w') then
        player.y = player.y - player.speed * dt
    end
    if love.keyboard.isDown('s') then
        player.y = player.y + player.speed * dt
    end

end

function love.draw()
    -- Draw the background
    love.graphics.draw(background, 0, 0)

    -- Draw the player
    love.graphics.draw(player.image, player.x, player.y)
end
