function _init()
   create_player()
   create_rocket_fire()
end 
    
function _update()
   player_movement()
   update_camera()
   update_rocket_fire()
end
    
function _draw()
   draw_map() 
   draw_player()
   draw_rocket_fire()
end

