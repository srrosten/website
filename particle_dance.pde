/*
 * Particle Dance
 * A visualization of particles.
 * Steve-Roger Rosten
 * February, 2016
 */

float t = 0;
float dt = 0.03;

void setup()
{
    size(650, 350);                     //canvas size
    colorMode(HSB, 2 * PI, 1, 1, 1);    //sets color range for hue, saturation, brightness and alpha
    smooth();                           //uses anti-aliasing
    noStroke();                         //removes strokes on elements
}

void draw()
{
    clear();                            //calls function 
    fill(10, 0, 1, 0.3);                //uses fill color on elements and alpha value
    randomSeed(5000);                   //sets random to return same pseudo-random number
    
    for(int i = 0; i < 1500; i++) {     //number of particles displayed
        particle(t);                    //calls function with parameter initialized above
    }
   
   t += dt;                             //assigns variable dt to variable t
}

void clear()
{
    fill(0, 0, 0, 0.05);                //changes fill color
    rect(0, 0, width, height);          //and draws a new canvas
}

void particle(float t)
{
    //initializes local variables
    float x = random(-1, 1);
    float y = random(-1, 1);
    float d = 0;
    
    //maps elements to create movement
    float xx = map(x * cos(y * t - cos(t * x)), -1, 1, 0, width);
    float yy = map(y * cos(x * t - cos(t * y)), -1, 1, 0, height);
    
    //sets diameter on elements
    d = 0.5 + 3 * x * cos(y * t);
    
    //draws particles/points on canvas
    ellipse(xx, yy, d, d);
}