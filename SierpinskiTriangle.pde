int sizeX = 750;
int sizeY = 750;
public void setup()
{
	size(750,750);
}
public void draw()
{
	background(0);
	sierpinski(0,sizeY,sizeY);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len >= mouseY/1.5+1){
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	} else {
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
}