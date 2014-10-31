//tribute to jasper johns

int pWidth = 30; //panel width
int pHeight = 49; //panel height
int gap = 1;
int y0, y1, y2, y3, y4, y5, y6, y7, y8;
float speed = 3;

void setup() {
  size(300, 350);
  background(214, 41, 2);

  int x = width/2; //sets ellipse to center
  int y = height - x;
  int eWidth = width - 50; //sets padding around target

  for (int spacing = 50; eWidth > 0; eWidth = eWidth - 2*spacing) { //double spacing to acount for both ellipses
    noStroke();
    fill (2, 104, 127); //blue
    ellipse(x, y, eWidth, eWidth);

    fill (252, 226, 30); //yellow
    ellipse(x, y, eWidth - spacing, eWidth - spacing );
  }
}



void draw() {
  //draw background of panels
  fill(121, 73, 51);
  rect( 0, 0, width, pHeight + gap); 

  //draw panels with different fills
  for (int i=0; i<9; i++) {
    if (i==0) {
      fill(66, 9, 67); //purple
    }
    if (i==1) {
      fill(22, 100, 165); //blue
    }
    if (i==2) {
      fill(255); //white
    }
    if (i==3) {
      fill(214, 41, 2); //red
    }
    if (i==4) {
      fill(250, 201, 220); //pink
    }
    if (i==5) {
      fill(255, 102, 0); //orange
    }
    if (i==6) {
      fill(96, 120, 96); //green
    }
    if (i==7) {
      fill(255, 170, 0); //light orange
    }
    if (i==8) {
      fill(34, 51, 85); //navy blue
    } 

    rect(i*pWidth+i*gap, 0, pWidth, pHeight);
  }


  if (mouseY < pHeight) {
    if (mouseX>0 && mouseX <= pWidth) {
      y0 -= speed;
    } else if (mouseX > pWidth) {
      y0 = 0;
    }

    if (mouseX> pWidth+gap && mouseX <= 2*pWidth + 2*gap) {
      y1 -= speed;
    } else if (mouseX < pWidth || mouseX > 2*pWidth + 2*gap) {
      y1 = 0;
    }

    if (mouseX> 2*pWidth + 2*gap && mouseX <= 3*pWidth + 3*gap) {
      y2 -= speed;
    } else if (mouseX < 2*pWidth + 2*gap || mouseX > 3*pWidth + 3*gap) {
      y2 = 0;
    }

    if (mouseX> 3*pWidth + 3*gap && mouseX <= 4*pWidth + 4*gap) {
      y3 -= speed;
    } else if (mouseX < 3*pWidth + 3*gap || mouseX > 4*pWidth + 4*gap) {
      y3 = 0;
    }

    if (mouseX> 4*pWidth + 4*gap && mouseX <= 5*pWidth + 5*gap) {
      y4 -= speed;
    } else if (mouseX < 4*pWidth + 4*gap || mouseX > 5*pWidth + 5*gap) {
      y4 = 0;
    }

    if (mouseX> 5*pWidth + 5*gap && mouseX <= 6*pWidth + 6*gap) {
      y5 -= speed;
    } else if (mouseX < 5*pWidth + 5*gap || mouseX > 6*pWidth + 6*gap) {
      y5 = 0;
    }

    if (mouseX> 6*pWidth + 6*gap && mouseX <= 7*pWidth + 7*gap) {
      y6 -= speed;
    } else if (mouseX < 6*pWidth + 6*gap || mouseX > 7*pWidth + 7*gap) {
      y6 = 0;
    }

    if (mouseX> 7*pWidth + 7*gap && mouseX <= 8*pWidth + 8*gap) {
      y7 -= speed;
    } else if (mouseX < 7*pWidth + 7*gap || mouseX > 8*pWidth + 8*gap) {
      y7 = 0;
    }

    if (mouseX> 8*pWidth + 8*gap && mouseX <= 9*pWidth + 9*gap) {
      y8 -= speed;
    } else if (mouseX < 8*pWidth + 8*gap || mouseX > 9*pWidth + 9*gap) {
      y8 = 0;
    }
  }




  fill(181, 107, 31);
  rect(0, y0, pWidth, pHeight);
  rect(1*pWidth + 1*gap, y1, pWidth, pHeight);
  rect(2*pWidth + 2*gap, y2, pWidth, pHeight);
  rect(3*pWidth + 3*gap, y3, pWidth, pHeight);
  rect(4*pWidth + 4*gap, y4, pWidth, pHeight);
  rect(5*pWidth + 5*gap, y5, pWidth, pHeight);
  rect(6*pWidth + 6*gap, y6, pWidth, pHeight);
  rect(7*pWidth + 7*gap, y7, pWidth, pHeight);
  rect(8*pWidth + 8*gap, y8, pWidth, pHeight);
}
//   if (mouseX > 0 && mouseX < pWidth + gap) {
//     fill(0, 255, 0);
//     rect(pWidth+gap, 0, pWidth, pHeight);
//   } else {
//     fill(0);
//     rect(pWidth+gap, 0, pWidth, pHeight);
//   }

// for (int i = 0; mouseX > i * pWidth && mouseX < (i+1) * pWidth; i++){
//   if(i==0){
//     rect(30, 40, 20, 20);
//   }
//   if(i==2){
//     rect(60, 60, 30, 30);
//   }
//}


// if (mouseX > panelWidth + gap && mouseX < 2*panelWidth + 2*gap) {
//   fill(0, 255, 0);
//   rect(panelWidth+gap, 0, panelWidth, panelHeight);
// }

// 
