Car myCar1;
Car myCar2;
Car myCar3;//objetos 

void setup() {
  size(500,600);
  myCar1 = new Car(color(255,0,0),0,150,2.4); 
  myCar2 = new Car(color(0,0,255),0,300,2.3);
  myCar3 = new Car(color(255,255,0),0,450,2.5);//aca se muestra tanto el color del objeto como la posicion y velocidad de movimiento del objeto
 
}

void draw() {
  background(128,128,128);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
  myCar3.drive();
  myCar3.display();//Mostrar objeto
}

class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,40,20);//dimensiones del objeto
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {//se realiza un movimiento continuo en el eje horizontal(x)
      xpos = 0;
    }
  }
}
