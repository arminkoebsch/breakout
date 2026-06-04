void keyPressed(){
  if (key == 'd' || key == 'd') dkey = true;
  if (key == 'a' || key == 'a') akey = true;
}

void keyReleased(){
  if (key == 'd' || key == 'd') dkey = false;
  if (key == 'a' || key == 'a') akey = false;
  
  
  if ( key == 'p') {
    if (mode == pause) {
      mode = game;
    }else if (mode == game) {
      
      fill(200, 150);
      rect(0, 0, width, height);
      mode = pause;
    }
    
    
  }
}
