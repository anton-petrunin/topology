settings.render=32;

import graph3;
import contour;
defaultpen(fontsize(10pt));

size(3cm,0cm);

currentprojection=perspective(-6,6,3);

triple f(pair z)
{
  real u = z.x;
  real v = z.y;

  real X, Y, Z;

  if(v < pi) {
    X = (2.5 - 1.5*cos(v))*cos(u);
    Y = (2.5 - 1.5*cos(v))*sin(u);
    Z = -2.5*sin(v);
  }
  else if(v < 2*pi) {
    X = (2.5 - 1.5*cos(v))*cos(u);
    Y = (2.5 - 1.5*cos(v))*sin(u);
    Z = 3*v - 3*pi;
  }
  else if(v < 3*pi) {
    X = -2 + (2 + cos(u))*cos(v);
    Y = sin(u);
    Z = (2 + cos(u))*sin(v) + 3*pi;
  }
  else {
    X = -2 + 2*cos(v) - cos(u);
    Y = sin(u);
    Z = -3*v + 12*pi;
  }

  return (X,Y,-Z);
}

draw(surface(f,(0,0),(2*pi,4*pi), nu=40, nv=40),
     white, meshpen=black+thick(), nolight);
