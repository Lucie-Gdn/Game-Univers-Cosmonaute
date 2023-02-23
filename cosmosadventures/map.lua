function draw_map()
    cls()
    map(0,0,0,0,127,63)   
end

function check_flag(flag,x,y)
    local sprite=mget(x,y)
    return fget(sprite,flag)
end
-- renvoi true ou false

function update_camera()
    local camx=mid(0,p.x-7,5,127-5)
    local camy=mid(0,p.y-7,5,63-5)
    camera(camx*8,camy*8)
end