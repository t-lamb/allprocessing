int shootingX = 100;
int shootingY = 200;
int shootingX2 = 900;
int shootingY2 = 300;
int shootstroke = 0;
int shootstroke2 = 0;

void setup(){
size(1000, 600);
background(48, 60, 71);

//stars 1
stroke(236, 246, 245, 60);
strokeWeight(2);
point(100, 200);
point(70, 205);
point(20, 305);
point(305, 10);
point(500, 35);
point(40, 310);
point(400, 260);
point(320, 505);
point(500, 400);
point(410, 160);
point(570, 380);
point(700, 425);
point(540, 500);
point(600, 250);
point(870, 330);

//stars 2
strokeWeight(3);
point(830, 480);
point(810, 240);
point(910, 210);
point(780, 110);
point(335, 100);
point(245, 405);
point(40, 25);
point(670, 60);
point(900, 50);
point(820, 70);
point(570, 180);
point(400, 460);
point(50, 480);
point(740, 560);
point(140, 35);
point(200, 265);
point(975, 265);
point(150, 550);
point(950, 570);
point(670, 290);


//constellations
stroke(236, 246, 245, 20);
strokeWeight(10);
fill(236, 246, 245, 80);

//ursa major
//1
ellipse(145, 200, 8, 8);
//2
ellipse(230, 230, 8, 8);
//3
ellipse(255, 285, 8, 8);
//4
ellipse(305, 355, 6, 6);
//5
ellipse(280, 420, 10, 10);
//6
ellipse(370, 480, 10, 10);
//7
ellipse(425, 430, 10, 10);

//ursa minor
//8
ellipse(490, 80, 6, 6);
//9
ellipse(590, 45, 5, 5);
//10
ellipse(515, 130, 6, 6);
//11
ellipse(600, 100, 8, 8);
//12
ellipse(690, 102, 6, 6);
//13
ellipse(760, 140, 6, 6);

//polaris 
fill(236, 246, 245, 100);
strokeWeight(15);
ellipse(800, 190, 8, 8);
noStroke();
fill(236, 246, 245, 10);
ellipse(800, 190, 40, 40);
fill(236, 246, 245, 5);
ellipse(800, 190, 60, 60);
}


void draw(){
fill(236, 246, 245, 10);
noStroke();

//ursa major glow
//1
if(mouseX>=125 && mouseX<165 && mouseY>=180 && mouseY<220){
  ellipse(145, 200, 8, 8);
}
//2
if(mouseX>=210 && mouseX<250 && mouseY>=210 && mouseY<250){
  ellipse(230, 230, 8, 8);
}
//3
if(mouseX>=225 && mouseX<275 && mouseY>=265 && mouseY<305){
  ellipse(255, 285, 8, 8);
}
//4
if(mouseX>=285 && mouseX<325 && mouseY>=335 && mouseY<375){
  ellipse(305, 355, 6, 6);
}
//5
if(mouseX>=260 && mouseX<300 && mouseY>=400 && mouseY<440){
  ellipse(280, 420, 10, 10);
}
//6
if(mouseX>=350 && mouseX<390 && mouseY>=460 && mouseY<500){
  ellipse(370, 480, 10, 10);
}
//7
if(mouseX>=405 && mouseX<445 && mouseY>=410 && mouseY<450){
  ellipse(425, 430, 10, 10);
}

//ursa minor glow
//8
if(mouseX>=470 && mouseX<510 && mouseY>=60 && mouseY<100){
  ellipse(490, 80, 6, 6);
}
//9
if(mouseX>=570 && mouseX<610 && mouseY>=25 && mouseY<65){
  ellipse(590, 45, 6, 6);
}
//10
if(mouseX>=495 && mouseX<535 && mouseY>=110 && mouseY<150){
  ellipse(515, 130, 6, 6);
}
//11
if(mouseX>=580 && mouseX<620 && mouseY>=80 && mouseY<120){
  ellipse(600, 100, 6, 6);
}
//12
if(mouseX>=670 && mouseX<710 && mouseY>=82 && mouseY<122){
  ellipse(690, 102, 6, 6);
}
//13
if(mouseX>=740 && mouseX<780 && mouseY>=120 && mouseY<160){
  ellipse(760, 140, 6, 6);
}
//Polaris
if(mouseX>=780 && mouseX<820 && mouseY>=170 && mouseY<210){
  ellipse(800, 190, 8, 8);
}


//surprise shooting star right
stroke(236, 246, 245, shootstroke);
strokeWeight(3);
if(mouseX>=900 && mouseX<width && mouseY>=500 && mouseY<height){
  point(shootingX, shootingY);
  shootingX = shootingX + 5;
  shootingY = shootingY + 2;
  shootstroke = shootstroke + 1;
}  


//surprise shooting star left
stroke(236, 246, 245, shootstroke2);
strokeWeight(3);
if(mouseX>0 && mouseX<=100 && mouseY>=500 && mouseY<height){
  point(shootingX2, shootingY2);
  shootingX2 = shootingX2 - 5;
  shootingY2 = shootingY2 + 2;
  shootstroke2 = shootstroke2 + 1;
} 

}
