

// Set up the Box2D World

var worldAABB = new b2AABB();
worldAABB.minVertex.Set(-700, -700);
worldAABB.maxVertex.Set(1100, 800);
var gravity = new b2Vec2(0, 0);
var doSleep = true;
var world = new b2World(worldAABB, gravity, doSleep);

//create a 'ground' boundary

    var groundSdRight = new b2BoxDef();
    groundSdRight.extents.Set(50,600);
    groundSdRight.restitution = .8;
    groundSdRight.friction = 0;
    // groundSdRight.density = 200;
    var groundBdRight = new b2BodyDef();
    groundBdRight.AddShape(groundSdRight);
    groundBdRight.position.Set(-50,0);
    var groundBodyRight = world.CreateBody(groundBdRight);
    
    var groundSdLeft = new b2BoxDef();
    groundSdLeft.extents.Set(50,600);
    groundSdLeft.restitution = .8;
    groundSdLeft.friction = 0;
    //  groundSdLeft.density = 200;
    var groundBdLeft = new b2BodyDef();
    groundBdLeft.AddShape(groundSdLeft);
    groundBdLeft.position.Set(1050,0);
    var groundBodyLeft = world.CreateBody(groundBdLeft);
	
	var groundSd = new b2BoxDef();
	groundSd.extents.Set(1000, 50);
	groundSd.restitution = .8; //was .2
	groundSd.friction = 0;
    //	groundSd.density = 20;
	var groundBd = new b2BodyDef();
	groundBd.AddShape(groundSd);
	groundBd.position.Set(0, -50);
	var groundBody = world.CreateBody(groundBd);
	
	var groundSdTop = new b2BoxDef();
	groundSdTop.extents.Set(1000, 50);
	groundSdTop.restitution = .8; //was .2
	groundSdTop.friction = 0;
	var groundBdTop = new b2BodyDef();
	groundBdTop.AddShape(groundSdTop);
	groundBdTop.position.Set(0, 650);
	var groundBodyTop = world.CreateBody(groundBdTop);

int ballsHulu = 66; //was 132
Object[][] ballHulu = new Object[ballsHulu][4];

// Iterate through, creating new ballsHulu
for(int i=0; i < ballsHulu; i++){
  
  // Set the XY pos for the ball
  randPosX = random(0, 1000);
  randPosY = random(0, 600);
  
  int x=randPosX, y=randPosY;
    
  // Create a Box2D circle
  ballHulu[i][0]=new b2CircleDef();
  ballHulu[i][0].density = 10; //was 10
  ballHulu[i][0].radius = 8.8;
  ballHulu[i][0].restitution = .9; //was .9
  ballHulu[i][0].friction = 0;    
  
  // Create Box2D Body for Circle
  ballHulu[i][1]=new b2BodyDef();
  ballHulu[i][1].AddShape(ballHulu[i][0]);
  ballHulu[i][1].position.Set(x,y);    
  ballHulu[i][2]=world.CreateBody(ballHulu[i][1]);
  randForceX = random(-4000000, 4000000)
  randForceY = random(-4000000, 4000000)
  // Apply an initial, random force
  ballHulu[i][2].ApplyForce( new b2Vec2( randForceX, randForceY ), new b2Vec2( ballHulu[i][2].m_position.x, ballHulu[i][2].m_position.y ) );
}

int ballsNetflix = 28; //was 56
Object[][] ballNetflix = new Object[ballsNetflix][4];

// Iterate through, creating new ballsNetflix
for(int i=0; i < ballsNetflix; i++){
  
  // Set the XY pos for the ballYouTubesYouTube
  randPosX = random(0, 1000);
  randPosY = random(0, 600);
  
  int x=randPosX, y=randPosY;
    
  // Create a Box2D circle
  ballNetflix[i][0]=new b2CircleDef();
  ballNetflix[i][0].density = 10; //was 10
  ballNetflix[i][0].radius = 17.85;
  ballNetflix[i][0].restitution = .9; //was .9
  ballNetflix[i][0].friction = 0;    
  
  // Create Box2D Body for Circle
  ballNetflix[i][1]=new b2BodyDef();
  ballNetflix[i][1].AddShape(ballNetflix[i][0]);
  ballNetflix[i][1].position.Set(x,y);    
  ballNetflix[i][2]=world.CreateBody(ballNetflix[i][1]);
  randForceX = random(-4000000, 4000000)
  randForceY = random(-4000000, 4000000)
  ballNetflix[i][2].ApplyForce( new b2Vec2( randForceX, randForceY ),
                    new b2Vec2( ballNetflix[i][2].m_position.x, ballNetflix[i][2].m_position.y ) );
  
}

int ballsYouTube = 406; //was 812
Object[][] ballYouTube = new Object[ballsYouTube][4];

// Iterate through, creating new ballsYouTube
for(int i=0; i < ballsYouTube; i++){
  
  // Set the XY pos for the ballYouTubesYouTube
  randPosX = random(0, 1000);
  randPosY = random(0, 600);
  
  int x=randPosX, y=randPosY;
    
  // Create a Box2D circle
  ballYouTube[i][0]=new b2CircleDef();
  ballYouTube[i][0].density = 10; //was 10
  ballYouTube[i][0].radius = 9.5;
  ballYouTube[i][0].restitution = .9; //was .9
  ballYouTube[i][0].friction = 0;    
  
  // Create Box2D Body for Circle
  ballYouTube[i][1]=new b2BodyDef();
  ballYouTube[i][1].AddShape(ballYouTube[i][0]);
  ballYouTube[i][1].position.Set(x,y);    
  ballYouTube[i][2]=world.CreateBody(ballYouTube[i][1]);
  randForceX = random(-4000000, 4000000)
  randForceY = random(-4000000, 4000000)
  ballYouTube[i][2].ApplyForce( new b2Vec2( randForceX, randForceY ),
                    new b2Vec2( ballYouTube[i][2].m_position.x, ballYouTube[i][2].m_position.y ) );
  
}

// Set up the animation speed and the calculations per frame 

var timeStep = 1.0/30;
var iteration = 12;

// Set up the Processing.js Canvas

PImage title;
PImage legend;
PImage helpButton;
PImage info;
oldX = 0;
oldY = 0;
netflixAssembleOn = false;

void setup(){

    size(1000,600);
    title = loadImage("newtitle.png");
    legend = loadImage("legend.png");
    helpButton = loadImage("helpButton.png");
    info = loadImage("info.png");
    frameRate(60);
    stroke(255); 

} 


// Define color range
color color1 = color(255,0,0,100);
color color2 = color(0,255,0,100);
color colorHulu = color (0,255,0,100);

// Begin the draw loop

void draw(){

    background(242,231,213,255); //was background(232,221,203,255);    
  
    // fill(230,230,230,255);
    // rect(20,20,20,20);
  
    // Ask Box2D to calculate another step in the world
    world.Step(timeStep, iteration);
    // Loop through the ballHulu array and draw everything
    
    for(int i=0; i < ballsHulu; i++){    
    
        b=ballHulu[i];
        bWoah = ballHulu[i][2];
        fill( 142,194,140,200 );
        // fill( 3,111,110,200 ); //was   fill( 3,101,100,200 );
        stroke(220,215,207,255);
    
        // This code isn't being called right now.
        
        if (netflixAssembleOn == true){
            rForcePlease = random(-10000, 10000);
            if (bWoah.m_position.x > 800){
                tForceX = -400000+ rForcePlease;
            }
            if (bWoah.m_position.x < 800){
                tForceX = 400000+ rForcePlease;
            }
            if (bWoah.m_position.y > 100){
                tForceY = -400000+ rForcePlease;
            }
            if (bWoah.m_position.y < 100){
                tForceY = 400000+ rForcePlease;
            }

            bWoah.ApplyForce( new b2Vec2( tForceX, tForceY ),
                    new b2Vec2( bWoah.m_position.x, bWoah.m_position.y ) );
        } 
    
        ellipse( b[2].m_position.x,
            b[2].m_position.y, 
            b[0].radius*2,
            b[0].radius*2 );
    }
   
    // Loop through the ballYouTube array and draw everything
    
    for(int i=0; i < ballsYouTube; i++){    
    
        b=ballYouTube[i];
        bWoah = ballYouTube[i][2];    
        fill( 3,10,40,200 ); // was 22 and 54
        stroke(220,215,207,255);
   
        if (netflixAssembleOn == true){
            rForcePlease = random(-10000, 10000);
            if (bWoah.m_position.x > 500){
                tForceX = -40000 + rForcePlease;
            }
            if (bWoah.m_position.x < 500){
                tForceX = 40000 + rForcePlease;
            }
            if (bWoah.m_position.y > 300){
                tForceY = -40000 + rForcePlease;
            }
            if (bWoah.m_position.y < 300){
                tForceY = 40000 + rForcePlease;
            }
        
            bWoah.ApplyForce( new b2Vec2( tForceX, tForceY ),
                    new b2Vec2( bWoah.m_position.x, bWoah.m_position.y ) );
        } 
     
        ellipse( b[2].m_position.x,
                b[2].m_position.y, 
                b[0].radius*2,
                b[0].radius*2 );
    }
  
    for(int i=0; i < ballsNetflix; i++){    
    
        b=ballNetflix[i];
        bWoah = ballNetflix[i][2];
        stroke(220,215,207,255);
        fill( 232,58,37,200 );
        //   fill( 30,80,100,200 ); //was  fill( 3,54,73,200 );
        strokeWeight(1.5);

        if (netflixAssembleOn == true){
            rForcePlease = random(-10000, 10000);
            if (bWoah.m_position.x > 100){
                tForceX = -400000 + rForcePlease;
            }
            if (bWoah.m_position.x < 100){
                tForceX = 4000000  + rForcePlease;
            }
            if (bWoah.m_position.y > 500){
                tForceY = -400000 + rForcePlease;
            }

            if (bWoah.m_position.y < 500){
                tForceY = 4000000 + rForcePlease;
            }

            bWoah.ApplyForce( new b2Vec2( tForceX, tForceY ),
                    new b2Vec2( bWoah.m_position.x, bWoah.m_position.y ) );
        } 
    
        ellipse( b[2].m_position.x,
             b[2].m_position.y, 
             b[0].radius*2,
             b[0].radius*2 );
        }


        image(title, 20, 20);
        image(legend,550,534);
        image(helpButton,940,534);
  
        if (mouseX > 940 && mouseX < 980 && mouseY > 534 && mouseY < 574) {
            image(info,480,395);
        }
    }


    void mouseClicked() {
        if (mouseX < 500) {
            // netflixAssembleOn = true;
        } else {
            netflixAssembleOn = false;
        }
    }

    // Apply an impulse to force any ball when it is mouseOver'ed

    void mouseMoved(){
        for(int i=0; i < ballsYouTube; i++){
            b=ballYouTube[i][2];
            r=ballYouTube[i][0].radius;
            if( dist( mouseX,
              mouseY, 
              b.m_position.x,
              b.m_position.y ) < r )
            {
                b.WakeUp();
      
                if (mouseX < oldX){
                    rForceX = random(-4000000, -2000000)
                }
                if (mouseX > oldX){
                    rForceX= random(2000000, 4000000)
                }
                if (mouseY < oldY){
                    rForceY = random(-4000000, -2000000)
                }
                if (mouseY > oldY){
                    rForceY= random(2000000, 4000000)
                }
      
                // rForceX = random(-4000000, 4000000)

                b.ApplyForce( new b2Vec2( rForceX, rForceY ),
                    new b2Vec2( b.m_position.x, b.m_position.y ) );
            }
        }
     
        for(int i=0; i < ballsHulu; i++){
            b=ballHulu[i][2];
            r=ballHulu[i][0].radius;
            if( dist( mouseX,
              mouseY, 
              b.m_position.x,
              b.m_position.y ) < r )
            {
                b.WakeUp();
                if (mouseX < oldX){
                    rForceX = random(-4000000, -2000000)
                }
                if (mouseX > oldX){
                    rForceX= random(2000000, 4000000)
                }
                if (mouseY < oldY){
                    rForceY = random(-4000000, -2000000)
                }
                if (mouseY > oldY){
                    rForceY= random(2000000, 4000000)
                }
      
                b.ApplyForce( new b2Vec2( rForceX, rForceY ),
                    new b2Vec2( b.m_position.x, b.m_position.y ) );
            }
        }
     
        for(int i=0; i < ballsNetflix; i++){
            b=ballNetflix[i][2];
            r=ballNetflix[i][0].radius;
    
            if( dist( mouseX,
              mouseY, 
              b.m_position.x,
              b.m_position.y ) < r )
            {
                b.WakeUp();
                if (mouseX < oldX){
                    rForceX = random(-4000000, -2000000)
                }
                if (mouseX > oldX){
                    rForceX= random(2000000, 4000000)
                }
                if (mouseY < oldY){
                    rForceY = random(-4000000, -2000000)
                }
                if (mouseY > oldY){
                    rForceY= random(2000000, 4000000)
                }
                
                b.ApplyForce( new b2Vec2( rForceX, rForceY ),
                    new b2Vec2( b.m_position.x, b.m_position.y ) );
            }
        } 
  
        oldX = mouseX;
        oldY = mouseY;
    }