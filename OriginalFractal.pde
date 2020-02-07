float rtx = 0;
PImage img;
int flipper = 0;
public void setup() {

	size(1200, 900, P3D);
	background(255);
	

}
public void mousePressed(){
	if (flipper == 0){
		flipper = 1;
	}else{
		flipper = 0;
	}

}
public void draw() {
	rtx += 0.01;
	translate(500, 450,-1000);

	background(255);
	rotateZ(PI/2);

	rotateY(map(mouseY, 0, width, -PI, PI));
	rotateX(map(mouseX, 0, width, -PI, PI));

	if(flipper == 0){
		
		myFractal(0, 0, 0, 400);
	}else{
		beginShape();
		texture(img);
		vertex(400,0,0,440,300);
		vertex(0,400,0,230,300);
		vertex(0,0,400, 250,0);

		endShape();

		beginShape();
		texture(img);
		vertex(-400,0,0,440,300);
		vertex(0,-400,0,230,300);
		vertex(0,0,400, 250,0);
		endShape();

		beginShape();
		texture(img);
		vertex(400,0,0,440,300);
		vertex(0,-400,0,230,300);
		vertex(0,0,400, 250,0);
		endShape();

		beginShape();
		texture(img);
		vertex(-400,0,0,440,300);
		vertex(0,400,0,230,300);
		vertex(0,0,400, 250,0);

		endShape();

		
		beginShape();
		vertex(0,400,0);
		vertex(400,0,0);
		vertex(0,-400,0);
		vertex(-400,0,0);
		endShape();

	}

	//rotateX(mouseX/1500);
	//rotateY(mouseY/1000);
	
	img = loadImage("obama.png");
	textureMode(IMAGE);
	//noStroke();
	



	


}

public void myFractal(int x, int y,int z ,int sizee) {
		translate(x, y,z);
		fill(255, 255, 255, 1000);
			beginShape();
		//texture(img);
		fill(200,0,200);
		vertex(sizee,0,0,400,0);
		vertex(0,sizee,0,400,1000);
		vertex(0,0,sizee);
		endShape();
	
		beginShape();
		fill(0,0,255);
		vertex(-sizee,0,0);
		vertex(0,-sizee,0);
		vertex(0,0,sizee);
		endShape();

		beginShape();
		fill(0,255,0);
		vertex(sizee,0,0);
		vertex(0,-sizee,0);
		vertex(0,0,sizee);
		endShape();

		beginShape();
		fill(255,0,0);
		vertex(-sizee,0,0);
		vertex(0,sizee,0);
		vertex(0,0,sizee);
		endShape();

		/*
		beginShape();
		fill(0);
		vertex(0,sizee,0);
		vertex(sizee,0,0);
		vertex(0,-sizee,0);
		vertex(-sizee,0,0);
		endShape();
		*/
	translate(-x, -y,-z);
	if (sizee < 100) {
		return;
	
	} else {
		myFractal(x + sizee/2, y, z, sizee / 2);
		myFractal(x - sizee/2, y, z, sizee / 2);
		myFractal(x , y+sizee/2, z, sizee / 2);
		myFractal(x , y-sizee/2, z, sizee / 2);

		myFractal(x + sizee/2 *3, y, z, sizee / 2);
		myFractal(x - sizee/2 *3, y, z, sizee / 2);
		myFractal(x , y+sizee/2*3, z, sizee / 2);
		myFractal(x , y-sizee/2*3, z, sizee / 2);
		//myFractal((-x + sizee), y, z, sizee / 2);
		//myFractal((-x - sizee), y, z, sizee / 2);
		
		//myFractal(x, y+ sizee, z, sizee / 2);
		//myFractal(x - 20, y + sizee/3, z, sizee / 2);
		//myFractal(x - 20, y - sizee/3, z, sizee / 2);
	}
}









