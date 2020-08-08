level = 1
game_state = 0
game_over = false
player.alive = true
players = {}
enemies = {}
enemy_speed = 0.1
playerr_speed = 0.5
bullet_speed = 0.6

//physics
enemy_randomness = 0.1

function _init()
  cartdata("donut_sprinkles_by_gina_collecchia")
  hs = dget(0)
  music(0)
end

function _update60()
  if (game_state == 0) then
    if (game_over == false) then
      if (player.alive) then
        playercontrols()
      end
      foreach(enemies, swarm)
    end
  else
  end
end

function _draw()
  cls()
  color(1)
  if (game_state == 0) then
  end
end

function playercontrols()
  // buttons 0-5 are the left/right/up/down/o/x keys: i: 0..5: left right up down button_o button_x
  if (btn(0)) then
    player.vx = mover(player.vx, player_speed)
  end
  if (btn(1)) then
    player.vx = mover(player.vx, player_speed)
  end
  if (btn(2)) then
    player.vy = mover(player.vy, player_speed)
  end
  if (btn(3)) then
    player.vy = mover(player.vy, player_speed)
  end
  if (btn(4)) then
    shoot(player)
  end
  if (btn(5)) then
    skillshot(player)
  end
end

function shoot(plyr)
  sfx(0)
  local bl = addsprinkle()
end
    