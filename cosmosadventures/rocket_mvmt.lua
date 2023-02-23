function create_rocket_fire()
rocket_fire={
    sprite = 19,
    x = 2,
    y = 5
}
end 

function draw_rocket_fire()
    spr(rocket_fire.sprite,rocket_fire.x*8,rocket_fire.y*8,2,2)
end 

function update_rocket_fire()
    rocket_fire.sprite +=2
    if rocket_fire.sprite > 27 then 
        rocket_fire.sprite=19
    end
end




