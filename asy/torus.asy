settings.render=0;

import graph3;
import contour;
defaultpen(fontsize(10pt));


size(3cm,0);

currentprojection=perspective(1.3,1.5,.3);


triple  f(pair z) {return (sin(z.x), cos(z.y)*(2+cos(z.x)), sin(z.y)*(2+cos(z.x)));}

draw((-3,0,0)--(0,0,0),black + linewidth(.7pt));
draw((0,0,0)--(0,1,0),black + linewidth(.7pt));
draw((0,0,0)--(0,0,1),black + linewidth(.7pt));

draw(surface(f,(0,0),(2*pi,2*pi), nu=20,nv=20,Spline),
     white,meshpen=black+thick(),nolight);
     
draw((0,0,0)--(3,0,0),black + linewidth(.7pt),Arrow3(size=4));
draw((0,3,0)--(0,4.25,0),black + linewidth(.7pt),Arrow3(size=4));
draw((0,0,3)--(0,0,4.25),black + linewidth(.7pt),Arrow3(size=4));
draw((0,-1,0)--(0,0,0),black + linewidth(.7pt));
draw((0,0,-1)--(0,0,0),black + linewidth(.7pt));
