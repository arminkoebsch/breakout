void game(){
  fill(150, 50);
  rect(0, 0, width, height);
  
  //paddle
  fill(255);
  circle(px, height, pd);
  
  //paddles move
  if (dkey == true && px < width-pd/2) px = px + 5;
  //if (skey == true && ly < height-rd/2) ly = ly + 5;
  
  //ball
  fill(255);
  circle(bx, by, bd);
  
  //ball move
  if (timer < 0) {
    bx = bx + vx;
    by = by + vy;
  }
  
  //bouncing
  if (bx < 0 + bd/2 || bx > width - bd/2) {
    vx = vx * -1;
  }
  if (by < 0 + bd/2 || by > height - bd/2) {
    vy = vy * -1;
  }
  
  
  
  
  
  
  
  
  //timer
  timer = timer - 1;
  
}

void gameClicks(){
  
}
