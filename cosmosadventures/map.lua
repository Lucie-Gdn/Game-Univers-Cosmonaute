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
    camx=mid(0, (p.x-7.5)*8+p.ox, (31-15)*8)
    camy=mid(0, (p.y-7.5)*8+p.oy, (31-15)*8)
    camera(camx, camy)
end