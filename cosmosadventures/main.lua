function _init()
   create_player()
   create_rocket_fire()
   create_toxic_smoke()
   --create_enemies()
end 
    
function _update()
   player_movement()
   update_camera()
   update_rocket_fire()
   update_toxic_smoke()
   --update_enemies()
end
    
function _draw()
   draw_map()
   change_color() 
   draw_rocket_fire()
   draw_toxic_smoke()
   draw_player()
   --draw_enemies()
end

