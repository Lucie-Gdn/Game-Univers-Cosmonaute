function create_player()
p={
    sprite = 3, --"sprite" and holds the sprite number.
    x = 0, --holds the horizontal position of the player
    y = 6, --holds the vertical position of the player
    ox = 0, oy = 0,
    start_ox=0, start_oy=0,
    anim_t=0,  
} 
p.speed=15
end

function draw_player()
spr(p.sprite,p.x*8+p.ox,p.y*8+p.oy,1, 1, p.flip) 
    if p.anim_t>=0.7 then 
        p.sprite +=1
            if p.sprite > 7 then 
                p.sprite=3
            end
    end
    
end

function player_movement()
    newx = p.x 
    newy = p.y
    
    if btnp(⬅️) then
            if p.x!=16 then
            newx -= 1
            newox = 8
            newoy = 0
            p.flip = true
            end

    elseif btnp(➡️) then
        newx += 1
        newox = -8
        newoy = 0
        p.flip = false

    elseif btnp(⬆️) then
            if p.x>15 then 
            newy -= 1
            newox = 0
            newoy = 8
            end

    elseif btnp(⬇️) then
        newy += 1
        newox = 0
        newoy = -8
    end

  
    if (newx !=p.x or newy !=p.y) and not check_flag(0,newx,newy) then -- vérifie qu'il y a bien déplacement p.x inégal à newx
        -- verifie que la case newx,newy n'est pas un flag, if not flag then ...
        p.x=mid(0,newx,127)
        p.y=mid(0,newy,63)
        p.start_ox=newox
        p.start_oy=newoy
        p.anim_t=1
        -- verifie que p.x est entre les extremes de la map soit 0 (init) - 128 (l) - 64 (L)
    end

    --Animation
    p.anim_t=max(p.anim_t-0.125,0)
    p.ox=p.start_ox*p.anim_t
    p.oy=p.start_oy*p.anim_t

end


  



