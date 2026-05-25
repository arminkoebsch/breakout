void game() {

  theme.play();

  fill(150, 50);
  rect(0, 0, width, height);

  //paddle
  fill(255);
  circle(px, height, pd);

  //paddles move
  if (dkey == true && px < width-pd/2) px = px + 8;
  if (akey == true && px > 0+pd/2)px = px - 8;

  //ball
  fill(255);
  circle(bx, by, bd);

  //ball move
  if (timer < 0) {
    bx = bx + vx;
    by = by + vy;
  }

  //ball direction fix
  if (vx == 0) {
    vx = vx + random(1, -1);
  }

  if (vy == 0) {
    vy = vy + random(1, -1);
  }

  //bouncing
  if (bx < 0 + bd/2 || bx > width - bd/2) {
    vx = vx * -1;
  }
  if (by < 0 + bd/2) {
    vy = vy * -1;
  }

  //paddle bouncing
  if (dist(px, 1000, bx, by)*2 <= pd + bd) {
    vx = (bx - px)/5;
    vy = (by - 1000)/5;
    score++;
  }

  //bricks
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBricks(i);
    }
    i++;
  }

  //Gameover
  if (by > height - bd/2) {
    bx = 500;
    by = 600;
    bd = 10;
    vx = 1;
    vy = 5;

    timer = 100;
    score = 0;

    theme.rewind();

    i = 0;
    while (i < n) {
      alive[i] = true;
      i++;
    }
  }

  //score
  textAlign(CENTER, CENTER);
  fill(0);
  textSize(30);
  text("score : " + score, 100, 900);


  //timer
  timer = timer - 1;

  //wining
  int c = 0;
  i = 0;
  while (i < n) {
    if (alive[i] == true) {
    c++;
    }
    i++;
  }
  if (c == 0) {
    
    mode = gameover;
  }
}


void gameClicks() {
}

void manageBricks(int i) {
  circle(x[i], y[i], brickd);

  if (dist(bx, by, x[i], y[i])*2 <= bd + brickd) {
    vx = ((bx - x[i]))/2;
    vy = (by - y[i])/2;
    alive[i] = false;
  }
}
