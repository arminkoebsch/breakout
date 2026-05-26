void intro() {
  background(0);

  textSize(100);
  fill(0, 255, 0);
  
  if (mouseX > 500 - 150 && mouseX < 500 + 150 && mouseY > 500 - 50 && mouseY < 500 + 50) {
    fill(255);
  }
  text("START", 500, 500);
}

void introClicks() {
  if (mouseX > 500 - 150 && mouseX < 500 + 150 && mouseY > 500 - 50 && mouseY < 500 + 50) {
    mode = game;
    
    fill(155);
    rect(0, 0, 1000, 1000);

    bx = 500;
    by = 600;
    bd = 10;
    vx = 1;
    vy = 5;

    timer = 100;
    score = 0;
  }
}
