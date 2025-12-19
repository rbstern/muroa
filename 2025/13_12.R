#   X Y Z
# X X+Y Y+Z Z
#  2X+Y   X+2Y+Z   2Z+Y
#    3X + 3Y + Z   ; X + 3Y + 3Z

resp = FALSE
while(!resp)
{
  dt = sample(9, 3, replace = TRUE) 
  cond_1 = 3*dt[1] + 3*dt[2] + dt[3] == 37
  cond_2 = dt[1] + 3*dt[2] + 3*dt[3] == 43
  if(cond_1 & cond_2) resp = TRUE
}
dt

