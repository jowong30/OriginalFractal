float rtx =0;
public void setup(){
	
  	size(1200,900,P3D);
  	background(0);

}

public void draw(){
	rtx+=0.1;
	translate(500,350);
    
	background(0);


	
	rotateX(rtx);
    myFractal(500,350,200);
}

public void myFractal(int x, int y, int sizee){
	if(sizee<1000){
		translate(0,0);
		box(sizee);

	}else{
		myFractal(x+300, y, sizee/2);
	}
}