input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../top}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";



beginfig(10) 
save u;
u:=1cm;

z.a=(0,0)*u;
z.b=(1,0)*u;
z.d=z.b rotated 60;
z.c=z.d-z.b;
z.e=z.d+z.b;
z.shift=(2,0)*u;

draw ((z.c+(3,-10)--z.d--z.e+(-3,-10)) yscaled -1 shifted (0,y.d));
draw ((z.a+(4,0)--z.d--z.b+(-4,0)) yscaled -1 shifted (0,y.d));

draw (z.a--z.b--(-.5)[z.d,z.c]--.5[z.d,z.c]--cycle) shifted (1*z.shift);

draw (z.c--z.a--z.b--z.e) shifted (2*z.shift);
draw (z.b--z.d) shifted (2*z.shift);

draw (z.b--z.d--z.a--z.b--z.e) shifted (3*z.shift);

label.bot(btex (a) etex, .5[z.a,z.b]);
label.bot(btex (b) etex, .5[z.a,z.b]+1*z.shift);
label.bot(btex (c) etex, .5[z.a,z.b]+2*z.shift);
label.bot(btex (d) etex, .5[z.a,z.b]+3*z.shift);
endfig;

beginfig(20) 
save u,n;
u:=2cm;
n=9;

draw (0,0)*u--(1,0)*u;
fill circle((0,1)*u,.7) withcolor 0;
fill circle((0,0)*u,.7) withcolor 0;
draw circle((0,1)*u,1/3.5*u) dashed evenly;

for i=1 step 1 until 3:
draw (1/i,0)*u--(1/i,1)*u;
endfor

for i=4 step 1 until n:
draw (1/i,0)*u--(1/i,1)*u penhair;
endfor

label.lft(btex {\scriptsize $\dots$} etex, (1/n,.5)*u+(4,0));
label.lft(btex $y$ etex, (0,1)*u);
label.lft(btex $x$ etex, (0,0)*u);

label.bot(btex $I$ etex, (.5,0)*u);
label.rt(btex $J_1$ etex, (1,.5)*u);
label.rt(btex $J_2$ etex, (.5,.5)*u);
endfig;

beginfig(30) 
save u,t;
u:=1.4cm;
t1:=.7;
t2:=.4;


drawarrow ddline((0,0)*u,(1,0)*u)(.2,.3);
drawarrow ddline((0,0)*u,(0,1)*u)(.2,.3);
draw (0,0)*u--(.5,t1)*u--(1,1)*u pensemibold;
draw (0,t1)*u--(.5,t1)*u--(.5,0)*u dashed evenly;
draw (0,1)*u--(1,1)*u--(1,0)*u dashed evenly;

label.bot(btex 1 etex, (1,0)*u);
label.lft(btex 1 etex, (0,1)*u);
label.lft(btex $\tau$ etex, (0,t1)*u);
label.bot(btex $\tfrac12$ etex, (.5,0)*u);

endfig;

beginfig(31) 
save u,t;
u:=1.4cm;
t1:=.7;
t2:=.4;

z.shift=(0,-2)*u;

drawarrow ddline((0,0)*u,(1,0)*u)(.2,.3);
drawarrow ddline((0,0)*u,(0,1)*u)(.2,.3);
draw (0,0)*u--(.5,t1)*u--(1,0)*u pensemibold;
draw (0,t1)*u--(.5,t1)*u--(.5,0)*u dashed evenly;
draw (0,1)*u--(1,1)*u--(1,0)*u dashed evenly;

label.bot(btex 1 etex, (1,0)*u);
label.lft(btex 1 etex, (0,1)*u);
label.lft(btex $\tau$ etex, (0,t1)*u);
label.bot(btex $\tfrac12$ etex, (.5,0)*u);

%drawarrow (ddline((0,0)*u,(1,0)*u)(.2,.3)) shifted z.shift;
%drawarrow (ddline((0,0)*u,(0,1)*u)(.2,.3)) shifted z.shift;
%draw ((0,1)*u--(.5,t2)*u--(1,1)*u) shifted z.shift pensemibold;
%draw ((0,t2)*u--(.5,t2)*u--(.5,0)*u) shifted z.shift dashed evenly;
%draw ((0,1)*u--(1,1)*u--(1,0)*u) shifted z.shift dashed evenly;

%label.bot(btex 1 etex, (1,0)*u+z.shift);
%label.lft(btex 1 etex, (0,1)*u+z.shift);
%label.lft(btex $1-\tau$ etex, (0,t2)*u+z.shift);
%label.bot(btex $\tfrac12$ etex, (.5,0)*u+z.shift);
endfig;

beginfig(32) 
save u,t;
u:=1.4cm;
t1:=.2;

drawarrow ddline((0,0)*u,(1,0)*u)(.2,.3);
drawarrow ddline((0,0)*u,(0,1)*u)(.2,.3);
draw (0,0)*u--(.5,(1+t1)/4)*u--(.75,(2+t1)/4)*u--(1,1)*u pensemibold;
draw (0,(1+t1)/4)*u--(.5,(1+t1)/4)*u--(.5,0)*u dashed evenly;
draw (0,(2+t1)/4)*u--(.75,(2+t1)/4)*u--(.75,0)*u dashed evenly;
draw (0,1)*u--(1,1)*u--(1,0)*u dashed evenly;

label.bot(btex 1 etex, (1,0)*u);
label.lft(btex 1 etex, (0,1)*u);
label.lft(btex $\tfrac{1+\tau}4$ etex, (0,(1+t1)/4)*u+(0,-3));
label.lft(btex $\tfrac{2+\tau}4$ etex, (0,(2+t1)/4)*u+(0,3));
label.bot(btex $\tfrac12$ etex, (.5,0)*u);
label.bot(btex $\tfrac34$ etex, (.75,0)*u);

endfig;

beginfig(40) 
save u,k;
u:=1cm;
k:=.3;

z.a=(0,0)*u;
z.b=(1,0)*u;
z.c=(1,1)*u;
z.d=(0,1)*u;
z.shift=(3,0)*u;

draw z.a--z.b--z.c--z.d--cycle pensemibold;
draw .5[z.a,z.d]--.5[z.b,z.c] pensemibold;

draw (z.a--z.b--z.d--z.c--cycle) shifted z.shift pensemibold;

draw (z.a--z.b--k[z.b,z.c]--k[z.a,z.d]--cycle) shifted (2*z.shift) pensemibold;
draw (z.d--z.c--(1-k)[z.b,z.c]--(1-k)[z.a,z.d]--cycle) shifted (2*z.shift) pensemibold;
draw (.5[k[z.b,z.c],k[z.a,z.d]]--.5[(1-k)[z.b,z.c],(1-k)[z.a,z.d]]) shifted (2*z.shift) pensemibold;
endfig;

beginfig(50)
save u,p;
path p[];
u:=2cm;

z.o=origin;
z.a=(1,0)*u;
z.b=z.a rotated 60;

picture triangle[];
triangle1=image( fill z.o--z.a--z.b--cycle withcolor 0);
triangle2=image(
draw triangle1 scaled .5;
draw triangle1 shifted z.a scaled .5;
draw triangle1 shifted z.b scaled .5;
);
triangle3=image(
draw triangle2 scaled .5;
draw triangle2 shifted z.a scaled .5;
draw triangle2 shifted z.b scaled .5;
);
triangle4=image(
draw triangle3 scaled .5;
draw triangle3 shifted z.a scaled .5;
draw triangle3 shifted z.b scaled .5;
);
triangle5=image(
draw triangle4 scaled .5;
draw triangle4 shifted z.a scaled .5;
draw triangle4 shifted z.b scaled .5;
);
triangle6=image(
draw triangle5 scaled .5;
draw triangle5 shifted z.a scaled .5;
draw triangle5 shifted z.b scaled .5;
);
triangle7=image(
draw triangle6 scaled .5;
draw triangle6 shifted z.a scaled .5;
draw triangle6 shifted z.b scaled .5;
);

draw triangle7;

endfig;

beginfig(51)
save u,p;
path p[];
u:=2cm;

z.o=origin;
z.a=(1,0)*u;
z.b=z.a rotated 60;

picture triangle[];
triangle1=image( fill z.o--z.a--z.b--cycle withcolor 0);
triangle2=image(
draw triangle1 scaled .5;
draw triangle1 shifted z.a scaled .5;
draw triangle1 shifted z.b scaled .5;
);
triangle3=image(
draw triangle2 scaled .5;
draw triangle2 shifted z.a scaled .5;
draw triangle2 shifted z.b scaled .5;
);
triangle4=image(
draw triangle3 scaled .5;
draw triangle3 shifted z.a scaled .5;
draw triangle3 shifted z.b scaled .5;
);
triangle5=image(
draw triangle4 scaled .5;
draw triangle4 shifted z.a scaled .5;
draw triangle4 shifted z.b scaled .5;
);
triangle6=image(
draw triangle5 scaled .5;
draw triangle5 shifted z.a scaled .5;
draw triangle5 shifted z.b scaled .5;
);
triangle7=image(
draw triangle6 scaled .5;
draw triangle6 shifted z.a scaled .5;
draw triangle6 shifted z.b scaled .5;
);

draw triangle7;



z.x=.5[z.b,z.o];
z.y=.5[z.o,z.a];
z.z=.5[z.a,z.b];
dOt z.x,z.y,z.z;

label.ulft (btex $x$ etex, z.x);
label.bot (btex $y$ etex, z.y);
label.urt (btex $z$ etex, z.z);
endfig;

beginfig(60)
save u,p;
path p[];
u:=.6cm;

z.shift=(3,0)*u;

picture ball[];
ball1=image(
drawarrow ddline((-1,0)*u,(1,0)*u)(.2,.2);
drawarrow ddline((0,-1)*u,(0,1)*u)(.2,.2);
p1=(-1,0)*u--(0,1)*u--(1,0)*u--(0,-1)*u--cycle;
draw p1 pensemibold;
hatchfill p1  withcolor (67, 1mm, -.5bp);
);

ball2=image(
drawarrow ddline((-1,0)*u,(1,0)*u)(.2,.2);
drawarrow ddline((0,-1)*u,(0,1)*u)(.2,.2);
p2= circle(origin,1*u);
draw p2 pensemibold;
hatchfill p2  withcolor (67, 1mm, -.5bp);
);

ball3=image(
drawarrow ddline((-1,0)*u,(1,0)*u)(.2,.2);
drawarrow ddline((0,-1)*u,(0,1)*u)(.2,.2);
p3=(-1,-1)*u--(-1,1)*u--(1,1)*u--(1,-1)*u--cycle;
draw p3 pensemibold;
hatchfill p3  withcolor (67, 1mm, -.5bp);
);

draw ball1 shifted z.shift;
draw ball2 shifted (2*z.shift);
draw ball3 ;

endfig;

beginfig(70)
save u,p;
path p[];
u:=1.4cm;

z.a=(.2,-1)*u;
z.b=(1,-.3)*u;
z.c=(0,1)*u;
z.d=(-1,.1)*u;

z.ab=(.35,-.35)*u;
z.bc=(.45,.25)*u;
z.cd=(-.25,.25)*u;
z.da=(-.35,-.45)*u;

z.x=origin;
z.y=(.7,-.1)*u;

p1=z.a{right}..z.ab..z.b{up}..z.bc..z.c{left}..z.cd..z.d{down}..z.da..cycle;

hatchfill p1  withcolor (67, 2mm, -.5bp);
draw p1 dashed evenly;

draw z.x--z.y;
dOt z.x, z.y;

whitelabel.lft(btex $p$ etex, z.x);
whitelabel.bot(btex $x$ etex, z.y);
whitelabel(btex $V$ etex, (0,-.5)*u);
endfig;

beginfig(71)
save u,p,k;
path p[];
u:=1cm;
k:=.5;

z.o=origin;
z0=(2,1)*u;
z1=z0 xscaled -1;
z2=-z0;
z3=-z1;


p1=(k*z0){z0 rotated 90}..{z1 rotated 90}(k*z1)--
z1{z1 rotated 90}..{z2 rotated 90}z2--
(k*z2){z2 rotated 90}..{z3 rotated 90}(k*z3)--
z3{z3 rotated 90}..{z0rotated 90}z0 --cycle;

hatchfill p1  withcolor (67, 2mm, -.5bp);
draw p1 dashed evenly;


endfig;

beginfig(72)
save u,p,n,N,r,R;
path p[];
u:=.5cm;
n:=20;
N:=19;
R:=2*u;
r:=1*u;

p0=
for i = -n upto -1:
(R-((-1)**i)*r,0) rotated (360/(1.5**(-i))){(0,1) rotated (360/(1.5**(-i)))}..{(0,1) rotated (360/(1.5**(-i-1)))}
(R-((-1)**i)*r,0) rotated (360/(1.5**(-i-1)))
--
endfor
(R-r,0)
;

%draw p0;
for i = 0 upto N:  draw subpath((length p0)*i/(N+1),(length p0)*(i+1)/(N+1)) of p0 withcolor (1-(i/N)**.7); endfor;

endfig;

beginfig(80)
save u,p;
path p[];
u:=1.4cm;

z.p=(0,0)*u;
z.q=(2,0)*u;

for i=1 upto 8:
draw z.p{dir (45+6*i)}..{dir (-10*i)}z.q;
endfor
draw z.p{dir (45+6*0)}..{dir (-10*0)}z.q pensemibold;
draw z.p{dir (45+6*9)}..{dir (-10*9)}z.q pensemibold;

dOt z.p,z.q;

label.lft(btex $p$ etex, z.p);
label.rt(btex $q$ etex, z.q);
endfig;


beginfig(110)
save u,n;
u:=.4cm;
n:=7;

z.shift=(3,0)*u;

for i=0 upto n:
fill
((-(1),-(1-i/n))*u{down}..{right}(-(1-i/n),-(1))*u
--
((1-i/n),-(1))*u{right}..{up}((1),-(1-i/n))*u
--
((1),(1-i/n))*u{up}..{left}((1-i/n),(1))*u
--
(-(1-i/n),(1))*u{left}..{down}(-(1),(1-i/n))*u
--
cycle) shifted (i*z.shift)
withcolor .5;
endfor

endfig;

beginfig(120)
save u,p;
path p[];
u:=.4cm;

z.shift=(3,0)*u;
z.a=(.41,0)*u;
z.b=(.45,0)*u;

p0=(1,0)*u..(0,1)*u..(-1,0)*u..(0,-1)*u..cycle;
p1=(reverse p0) scaled .25;
p2= p1 rotated 180;

fill p0 withcolor .5;
fill (p0--p1--cycle) shifted (z.shift) withcolor .5;
fill
(((p0 rotated 90)--(p2 shifted z.a)--cycle)--(p1  shifted -z.a)--cycle) shifted (2*z.shift)  withcolor .5;
fill ((((p2 shifted z.b rotated 90)--p0--cycle)--(p2 shifted z.b rotated 210)--cycle)--(p2 shifted z.b rotated 330)--cycle) shifted (3*z.shift) withcolor .5;
endfig;

beginfig(150)
save u,gap,p;
path p[];
u:=1.4cm;

z1=(1.5,0)*u;

p0=(0,0)*u--(1,0)*u--(1,1)*u--(0,1)*u--cycle;

p1=(0,0)*u--(1,1)*u;

vardef cont(text t) =
  begingroup
    save res, first, pp, sh;
    path res;
    boolean first;
    pair sh;

    first := true;
    for pp = t:
      if first:
        res := pp;
        first := false;
      else:
        sh := (point length res of res) - (point 0 of pp);
        res := res & (pp shifted sh);
      fi
    endfor
    res
  endgroup
enddef;

p2= cont(p1,p1 yscaled -1, p1,p1,p1 yscaled -1,p1) xscaled 1/6 yscaled 1/2;
p3= cont(p2,p2 yscaled -1, p2,p2,p2 yscaled -1,p2) xscaled 1/6 yscaled 1/2;


draw p1 pensemibold;
draw p2 shifted z1 pensemibold;
draw p3 shifted (2*z1) pensemibold;

draw p0 penhair;
draw p0 shifted z1 penhair;
draw p0 shifted (2*z1) penhair;

endfig;

beginfig(365)
save u,p,k,a,n;
path p[];
picture k[];
u:=.2cm;
a:=10cm;
n:=7;

p0=(0,0)--(a,0)--(a,u)--(0,u)--cycle;

k0=image(fill p0);
k1=image(draw k0 xscaled 1/3 shifted ((0,-2.5*u)); draw k0 xscaled 1/3 shifted ((2/3)*(a,0)+ (0,-2.5*u)));
k2=image(draw k1 xscaled 1/3 shifted ((0,-2.5*u)); draw k1 xscaled 1/3 shifted ((2/3)*(a,0)+ (0,-2.5*u)));
k3=image(draw k2 xscaled 1/3 shifted ((0,-2.5*u)); draw k2 xscaled 1/3 shifted ((2/3)*(a,0)+ (0,-2.5*u)));
k4=image(draw k3 xscaled 1/3 shifted ((0,-2.5*u)); draw k3 xscaled 1/3 shifted ((2/3)*(a,0)+ (0,-2.5*u)));
k5=image(draw k4 xscaled 1/3 shifted ((0,-2.5*u)); draw k4 xscaled 1/3 shifted ((2/3)*(a,0)+ (0,-2.5*u)));
k6=image(draw k5 xscaled 1/3 shifted ((0,-2.5*u)); draw k5 xscaled 1/3 shifted ((2/3)*(a,0)+ (0,-2.5*u)));
k7=image(draw k6 xscaled 1/3 shifted ((0,-2.5*u)); draw k6 xscaled 1/3 shifted ((2/3)*(a,0)+ (0,-2.5*u)));

draw k0;
draw k1;
draw k2;
draw k3;
draw k4;
draw k5;

label.lft(btex $\c{C}_0$ etex, (0,u/2));
label.lft(btex $\c{C}_1$ etex, (0,u/2)+ (0,-2.5*u));
label.lft(btex $\c{C}_2$ etex, (0,u/2)+ 2*(0,-2.5*u));
label.lft(btex $\c{C}_3$ etex, (0,u/2)+ 3*(0,-2.5*u));
label.lft(btex $\c{C}_4$ etex, (0,u/2)+ 4*(0,-2.5*u));
label.lft(btex $\c{C}_5$ etex, (0,u/2)+ 5*(0,-2.5*u));
endfig;

beginfig(405)
save u,p,a;
path p[];
u:=1cm;
a:=60;

z.a=(1,0)*u;
z.b=-z.a;
z.shift=(3,0)*u;

p0=z.a{.7,1}..z.b{-.4,-1}..cycle;

draw p0 penbold;
draw z.a--z.b;
hatchfill  p0 withcolor (a, 1mm, -.5bp);

draw (subpath (0,1) of p0) xscaled -1 shifted z.shift penbold;
draw (subpath (1,2) of p0) shifted z.shift penbold;
draw (z.a--z.b) shifted z.shift;
hatchfill  ((subpath (0,1) of p0) xscaled -1 shifted z.shift)--cycle withcolor (180-a, 1mm, -.5bp);
hatchfill  ((subpath (1,2) of p0) shifted z.shift)--cycle withcolor (a, 1mm, -.5bp);

dOt z.a,z.b,z.a shifted z.shift,z.b shifted z.shift;

whitelabel.top(btex $L_1$ etex, origin);
whitelabel.bot(btex $L_2$ etex, origin);
whitelabel.top(btex $L_1'$ etex, z.shift);
whitelabel.bot(btex $L_2$ etex, z.shift);

label.bot(btex $F$ etex, point 1.6 of p0);
label.bot(btex $F'$ etex, z.shift+ point 1.6 of p0);
endfig;

beginfig(540)
save u,p;
path p[];
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.x=(.8,.2)*u;


p1=z.a{(1,2)}..z.b{(1,-1.9)}..tension 1.4..cycle;
p2=z.a{(1,-1.8)}..z.b{(1,1.7)}..tension 1.6..cycle;
p3=.1[z.a,z.b]{up}..tension 1.6..(.6)[z.a,z.b]{down}..tension 1.7..cycle;

fill p3 withcolor .7;
drawoptions(withcolor .5);
hatchfill p1  withcolor (30, 2mm, -.5bp);
hatchfill p2 withcolor (-60, 2mm, -.5bp);
drawoptions();

draw p1 dashed evenly;
draw p2 dashed evenly;
draw p3 dashed evenly;

dOt z.x;


whitelabel.lrt(btex $x$ etex, z.x);
whitelabel.top(btex $B_1$ etex, point 1.5 of p1);
whitelabel.bot(btex $B_2$ etex, point 1.5 of p2);
whitelabel.rt(btex $B$ etex, point 0 of p3);
endfig;

beginfig(685)
save u,p, a;
path p[];
u:=.7cm;
a:=10;

z.x=(.6*a*u,-1*u);

p1=(.03,.3)*a*u--(.8,.3)*a*u--(.8,.6)*a*u--(.03,.6)*a*u--cycle;
p2=(.1,1)*a*u--(.1,.5)*a*u--(.7,.5)*a*u--(.7,1)*a*u;
p3=(.5,0)*a*u--(.5,.4)*a*u--(1,.4)*a*u--(1,0)*a*u;
p0=(.5,0)*a*u--(.5,1)*a*u--(.7,1)*a*u--(.7,0)*a*u--cycle;

draw p1 dashed evenly;
fill p1 withcolor .9;
draw p2 dashed evenly;
fill p2--cycle withcolor .9;
draw subpath (0,2) of p3 dashed evenly;
fill p3--cycle withcolor .9;
hatchfill p0  withcolor (45, 1mm, -.5bp);
draw subpath (0,2) of p0 dashed evenly;
draw subpath (2,3) of p0 dashed evenly;

draw (0,0)*u--(a,0)*u--(a,a)*u--(0,a)*u--cycle;
draw (0,-1)*u--(a,-1)*u ;
draw (-1,0)*u--(-1,a)*u ;
draw (x.x,0)--(x.x,1*a*u) pensemibold;

draw (.5*a*u,-1*u)--(.7*a*u,-1*u) penbold withcolor .5;

dOt z.x;

label.bot(btex $x$ etex, z.x);
label.lrt(btex $\c{X}$ etex, (0,-1*u));
label.ulft(btex $\c{Y}$ etex, (-1*u,0));
whitelabel(btex $N_x\times\c{Y}$ etex, (x.x,.45*a*u));
whitelabel(btex $\{x\}\times\c{Y}$ etex rotated 90, (x.x,.7*a*u)+(7,0));
label.urt(btex $N_x$ etex , z.x+(5,0)) withcolor (.5);
label.urt(btex $V_{\alpha_1}\times W_{\alpha_1}$ etex, (.03,.3)*a*u);
label.lrt(btex $V_{\alpha_2}\times W_{\alpha_2}$ etex, (.1,1)*a*u);
label.ulft(btex $V_{\alpha_3}\times W_{\alpha_3}$ etex, (1,0)*a*u);
label.urt(btex $\c{X}\times \c{Y}$ etex, (0,0)*a*u);
endfig;

beginfig(686)
save u,p, a;
path p[];
u:=.7cm;
a:=10;

z.p=(.6*a*u,.48*a*u);

p1=(.4,.4)*a*u--(.7,.4)*a*u--(.7,.6)*a*u--(.4,.6)*a*u--cycle;
p2=(.3,.3)*a*u..tension 1.7..(.8,.7)*a*u..tension 1.7..cycle;

fill p2 withcolor .9;
fill p1 withcolor .7;
draw p2 dashed evenly;
draw p1 dashed evenly;

draw (0,0)*u--(a,0)*u--(a,a)*u--(0,a)*u--cycle;
draw (0,-1)*u--(a,-1)*u ;
draw (-1,0)*u--(-1,a)*u ;

draw (.4*a*u,-1*u)--(.7*a*u,-1*u) penbold withcolor .5;
draw (-1*u,.4*a*u)--(-1*u,.6*a*u) penbold withcolor .5;

dOt z.p, (x.p,-1*u), (-1*u, y.p);

label.bot(btex $x$ etex, (x.p,-1*u));
label.lft(btex $y$ etex, (-1*u,y.p));
label.ulft(btex $V$ etex, (x.p,-1*u)+(-10,0)) withcolor .5;
label.urt(btex $W$ etex, (-1*u,y.p)+(0,10)) withcolor .5;
label.top(btex $(x,y)$ etex, z.p);
label.lrt(btex $\c{X}$ etex, (0,-1*u));
label.ulft(btex $\c{Y}$ etex, (-1*u,0));
label.urt(btex $V\times W$ etex, (.4,.4)*a*u);
label.llft(btex $O$ etex, (.8,.7)*a*u);
label.urt(btex $\c{X}\times \c{Y}$ etex, (0,0)*a*u);
endfig;

beginfig(750)
save u,p;
path p[];
u:=2cm;

z.x=(0,0)*u;
z.r=(1,0)*u;
z.a=(-.2,0)*u;

p1=circle(z.x,z.r);
p2=circle(z.a,z.r/2);
p3=-2*z.r{(.2,1)}..tension 1.3..{(-.1,-1)}1.6*z.r..tension 1.2..cycle;

fill p3 withcolor .9;
fill p1 withcolor .7;
fill p2 withcolor .5;

draw p3 dashed evenly;
draw p1 dashed evenly;
draw p2 dashed evenly;


dOt z.x,z.a;

label.top(btex $x$ etex, z.x);
label.top(btex $a$ etex, z.a);
label.lft(btex $\Ball(x,\eps)$ etex, point 0 of p1);
label.top(btex $\Ball(a,\tfrac1n)$ etex, (0,2)+point 3 of p2);
label.lrt(btex $V$ etex, point 0 of p3);
endfig;

beginfig(770)
save u,p;
path p[];
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.x=(1.2,1)*u;

p1=z.a..z.x{1,-.5}..z.b--cycle;

hatchfill p1  withcolor (67, 2mm, -.5bp);
draw p1 penbold;

dOt z.a,z.b;

label.top (btex $\gamma$ etex, point 1 of p1);
whitelabel (btex $F$ etex, (z.a+z.b+point .7 of p1)/3);

endfig;

beginfig(775)
save u,p;
path p[];
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.x=(.7,1)*u;
z.y=(1.4,.8)*u;
z.v=.5[z.x,z.y]+(0,-.2)*u;


p1=z.a{(-1,1)}..z.x{z.y-z.x}..z.v..{z.y-z.x}z.y..z.b..tension 2..cycle;

%hatchfill p1  withcolor (67, 2mm, -.5bp);
draw p1 penbold;
draw (subpath (1,3) of p1) reflectedabout(z.x, z.y);

%draw z.x--z.y;
%dOt z.a,z.b;

%whitelabel (btex $F$ etex, (z.a+point 1 of p1)/2);

endfig;

beginfig(776)
save u,p;
path p[];
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;

p1=z.a{up}..tension 1.5..{down}z.b;

z.x=point .7 of p1;

hatchfill p1--z.x--cycle  withcolor (67, 2mm, -.5bp);
draw p1 penbold;
draw z.a--z.x--z.b--cycle;

drawarrow arc(z.a-z.x, (z.a-z.x) rotated 10 , (z.a-z.x) rotated 30) scaled .3 shifted z.x;

dOt z.a,z.b,z.x;

label.bot (btex $a$ etex, z.a);
label.bot (btex $b$ etex, z.b);
label.top (btex $x$ etex, z.x);
whitelabel (btex $F_a$ etex, point .4 of p1);
whitelabel (btex $F_b$ etex, point .8 of p1);

endfig;

beginfig(777)
save u,p;
path p[];
u:=1cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.x=.5[z.b,z.b rotated 70];
z.m=.5[z.a,z.b];

p1=z.a{up}..z.x..{down}z.b;

rimmark(z.a--z.m,z.b--z.m,z.x--z.m);
mark_rt_angle(z.a, z.x, z.b);
arcs(z.m, z.a, z.x, 11);
arcs(z.m, z.x, z.a, 11);
arcs2(z.m, z.b, z.x, 11);
arcs2(z.m, z.x, z.b, 11);

draw p1 penbold;
draw z.a--z.x--z.b--cycle;
draw z.x--z.m;


dOt z.a,z.b,z.x,z.m;

label.bot (btex $a$ etex, z.a);
label.bot (btex $b$ etex, z.b);
label.bot (btex $m$ etex, z.m);
label.top (btex $x$ etex, z.x);

endfig;

beginfig(790)
save u,p,n;
path p[];
u:=1.4cm;
n:=30;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.x=(1.2,1)*u;

p1=z.a..z.x{1,-.8}..z.b..tension 2..cycle;

hatchfill p1  withcolor (67, 1mm, -.5bp);
draw p1 penbold;

numeric L;
L := arclength p1;

for i = 0 upto n-1:
draw circle(point (arctime (i/n) * L of p1) of p1, 2*L/n);
endfor;
dOt
for i = 0 upto n-1:
point (arctime (i/n) * L of p1) of p1,
endfor;

whitelabel (btex $F_{\gamma_1}$ etex, .6[z.a,point 1 of p1]);
endfig;

beginfig(870)
save u,p;
path p[];
u:=2.6cm;

p1=(0,0)*u--(1,0)*u--(1,1)*u--(0,1)*u--cycle;

vardef midarrow(expr A,B) =
  save m,u;
  pair m,u;
  m := 0.5[A,B];
  u := unitvector(B-A);           % direction A -> B
  draw m-1*u +2*u rotated 90  -- (m + 1*u)--m-1*u +2*u rotated -90;
enddef;

vardef midarrowtwo(expr A,B) =
  save m,u;
  pair m,u;
  m := 0.5[A,B];
  u := unitvector(B-A);           % direction A -> B
  draw m +2*u rotated 90-- (m + 2*u)--m +2*u rotated -90;
  draw m +2*u rotated 90 -2*u-- (m)--m +2*u rotated -90-2*u;
enddef;

for i = 0 upto 19:
draw (i/20,0)*u--(i/20,1)*u penhair withcolor .5;
draw (0,i/20)*u--(1,i/20)*u penhair withcolor .5;
endfor;

draw p1;
midarrow((0,0)*u,(1,0)*u);
midarrow((0,1)*u,(1,1)*u);
midarrowtwo((0,0)*u,(0,1)*u);
midarrowtwo((1,0)*u,(1,1)*u);
drawarrow (1.25,.5)*u--(1.5,.5)*u;

label.top (btex $f$ etex, .5[(1.25,.5)*u,(1.5,.5)*u]);

endfig;

beginfig(940)
save u,p,m;
path p[];
u:=2cm;
m:=30;

z.shift=(0,.2)*u;

p1=(0,.6)*u{1,-.1}..{1,-.2}(1,1.6)*u;

p2=
point 0 of p1 +z.shift
--
for i=1 upto m-1:
(p1 intersectionpoint ((i/m,-10)*u--(i/m,10)*u))+(-1)**i*z.shift
--
endfor
point 1 of p1+(-1)**m*z.shift;

draw p1 pensemibold;
draw p2;
drawarrow (0,-.1)*u--(0,2)*u;
drawarrow (-.1,0)*u--(1.1,0)*u;

endfig;

beginfig(980)
save u,p;
path p[];
u:=.5cm;

draw circle(origin,1*u);
draw (sqrt(2)-1,-(sqrt(2)-1))*u--(1,-1)*u;
endfig;

beginfig(1030)
save u,p,n, N;
path p[];
u:=2cm;
n:=20;
N:=100;

p0=
(0,0)*u
for i = 1 upto n:
..(0,(-1)**i*(-1+1/i))*u{(-1)**i*(1,-.3183/i)}
endfor
;

for i = 0 upto N-1:
  draw subpath(n*i/N,n*(i+1)/N) of p0 withcolor ((i/N));
endfor;

endfig;

beginfig(1105)
save u,p,n;
path p[];
u:=2cm;
n:=10;

for i = n step -1 until 0:
draw (0,0)*u--(1,1/2**i)*u withcolor (i/n);
endfor;

draw (0,0)*u--(1,0)*u;

label.bot (btex $J_\infty$ etex, .5[(0,0)*u,(1,0)*u]);
label.top (btex $J_0$ etex, .5[(0,0)*u,(1,1)*u]+(0,2));

endfig;



beginfig(1260)
save u,p;
path p[];
u:=.3cm;

p1=circle((0,5)*u,5*u);
p2=circle((0,3)*u,1*u);
p3=circle((0,7)*u,1*u);

hatchfill reverse p2--p1-- reverse p3--cycle  withcolor (67, 1mm, -.5bp);
draw p1;
draw p2;
draw p3;

endfig;

beginfig(1265)
save u,p;
path p[];
u:=2.6cm;

p1=(0,0)*u--(1,0)*u--(1,1)*u--(0,1)*u--cycle;

vardef midarrow(expr A,B) =
  save m,u;
  pair m,u;
  m := 0.5[A,B];
  u := unitvector(B-A);           % direction A -> B
  draw m-1*u +2*u rotated 90  -- (m + 1*u)--m-1*u +2*u rotated -90;
enddef;

vardef midarrowtwo(expr A,B) =
  save m,u;
  pair m,u;
  m := 0.5[A,B];
  u := unitvector(B-A);           % direction A -> B
  draw m +2*u rotated 90-- (m + 2*u)--m +2*u rotated -90;
  draw m +2*u rotated 90 -2*u-- (m)--m +2*u rotated -90-2*u;
enddef;

for i = 1 upto 24:
draw (i/25,0)*u--(i/25,1)*u penhair withcolor .5;
endfor;

for i = 1 upto 4:
draw (0,i/5)*u--(1,i/5)*u penhair withcolor .5;
endfor;

draw p1;
midarrow((0,0)*u,(0,1)*u);
midarrow((1,1)*u,(1,0)*u);
drawarrow (1.25,.5)*u--(1.5,.5)*u;

endfig;

beginfig(1305)
save u,p;
path p[];
u:=1.4cm;


z.p=(0,0)*u;
z.q=(2,0)*u;
z.r=(4,0)*u;

for i=1 upto 8:
draw z.p{dir (35+6*i)}..{dir (-10*i)}z.q;
draw z.q{dir (-20+8*i)}..{dir (20-12*i)}z.r;
endfor
draw z.p{dir (35+6*0)}..{dir (-10*0)}z.q pensemibold;
draw z.q{dir (-20+8*0)}..{dir (20-12*0)}z.r pensemibold;
draw z.p{dir (35+6*9)}..{dir (-10*9)}z.q pensemibold;
draw z.q{dir (-20+8*9)}..{dir (20-12*9)}z.r pensemibold;

dOt z.p,z.q,z.r;


label.llft (btex $p$ etex, z.p);
label.bot (btex $q$ etex, z.q);
label.lrt (btex $r$ etex, z.r);
label.bot (btex $a_0$ etex, point .5 of (z.p{dir (35)}..{dir (0)}z.q));
label.bot (btex $b_0$ etex, point .5 of (z.q{dir (-20)}..{dir (20)}z.r));
label.top (btex $a_1$ etex, point .5 of (z.p{dir (35+6*9)}..{dir (-10*9)}z.q));
label.top (btex $b_1$ etex, point .5 of (z.q{dir (-20+8*9)}..{dir (20-12*9)}z.r));

endfig;

beginfig(1335)
save u,p;
path p[];
u:=1.4cm;

z.p=(0,0)*u;
z.q=(2,0)*u;

for i=1 upto 8:
draw z.p{dir (45+6*i)}..{dir (-10*i)}z.q;
endfor
p0=z.p{dir (45+6*0)}..{dir (-10*0)}z.q;
p1=z.p{dir (45+6*9)}..{dir (-10*9)}z.q;
draw p0 pensemibold;
draw p1 pensemibold;

dOt z.p,z.q;

label.lft(btex $p$ etex, z.p);
label.rt(btex $q$ etex, z.q);
label.bot(btex $a$ etex, point .5 of p0);
label.top(btex $b$ etex, point .5 of p1);
endfig;

beginfig(1340)
save u,p;
path p[];
u:=1.4cm;

z.x0=origin;
z.p=(.5,1)*u;
z.q=(2,.3)*u;

p1=z.p{(1,1.4)}..{(1,-1)}z.q;
p2=z.p{(1,-1)}..{(1,0)}z.q;
p3=z.x0{(-.1,1)}..{(1,.3)}z.p;
p4=z.x0{(1,-.1)}..{(1,.5)}z.q;

drawarrow subpath(0,.5) of p1 pensemibold;
draw subpath(.5,1) of p1 pensemibold;
drawarrow subpath(0,.5) of p2 pensemibold;
draw subpath(.5,1) of p2 pensemibold;
drawarrow subpath(0,.5) of p3 pensemibold;
draw subpath(.5,1) of p3 pensemibold;
drawarrow subpath(0,.5) of p4 pensemibold;
draw subpath(.5,1) of p4 pensemibold;

dOt z.x0,z.p,z.q;

label.bot (btex $x_0$ etex, z.x0);
label.ulft (btex $p$ etex, z.p);
label.lrt (btex $q$ etex, z.q);
label.urt (btex $a$ etex, point .5 of p1);
label.urt (btex $b$ etex, point .5 of p2);
label.ulft (btex $c$ etex, point .5 of p3);
label.bot (btex $d$ etex, point .5 of p4);
endfig;


beginfig(1345)
save u,p,n;
path p[];
u:=2cm;
n:=10;

z.p=(-1,.5)*u;
z.q=(1,.4)*u;
z.c=(1,1);

p1=z.p{(.1,-1)}..z.q{(.7,1)}..{(-1,.2)}z.p--cycle;

drawarrow subpath (0,1) of p1 pensemibold;
draw subpath (1,2) of p1 pensemibold;

for i = 1 upto n-1:
draw ((subpath (.5*i/n,2-.4*i/n) of p1).. cycle) scaled (1-i/n) withcolor .5;
endfor

p2= z.p{(1,-.9)}..z.c;

drawarrow subpath (0,.5) of p2  pensemibold;
draw subpath (.5,1) of p2  pensemibold;

dOt z.p, z.c;

label.lrt (btex $a$ etex, point 1 of p1);
whitelabel.top (btex $b$ etex, point .5 of p2);

label.lft (btex $p$ etex, z.p);
whitelabel.rt (btex $q$ etex, z.c);
endfig;

beginfig(1350)
save u,p;
path p[];
u:=1.4cm;

z.a=(0,0)*u;
z.b=(2,0)*u;
z.x0=.45[z.a,z.b];
z.x1=.23[z.a,z.b];
z.x2=.75[z.a,z.b];

p1=z.a{(1,-1)}..z.b{(1,.9)}..tension 1.4..cycle;
p2=z.a{(1,1)}..z.b{(1,-1.1)}..tension 1.4..cycle;
p3=z.x0{-.3,-1}..(.5)[z.x0,z.x1]+(-.2,-1)*u{(-1,-.3)}..z.x1{up}..(.5)[z.x1,z.x1]+(0,1)*u..z.x2{down}..(.5)[z.x2,z.x1]+(.2,-1)*u{(-1,.3)}..{-.2,1}z.x0--cycle;
p4=z.x0{(-1,.3)}..{(-1,-.3)}z.x1;
p5=z.x0{(1,.3)}..{(1,-.3)}z.x2;

fill (subpath (1,2) of p1)--(subpath (2,1) of p2)--cycle withcolor .8;
draw subpath (0,1) of p1 dashed evenly;
draw subpath (1,2) of p1;
draw subpath (0,1) of p2 dashed evenly;
draw subpath (1,2) of p2;
drawarrow subpath (0,1) of p3 pensemibold;
drawarrow subpath (1,3.3) of p3 pensemibold;
drawarrow subpath (3.3,5) of p3 pensemibold;
draw subpath (5,6) of p3 pensemibold;
drawarrow subpath (0,.6) of p4 pensemibold;
draw subpath (.6,1) of p4 pensemibold;
drawarrow subpath (0,.6) of p5 pensemibold;
draw subpath (.6,1) of p5 pensemibold;

dOt z.x0,z.x1,z.x2;

label.bot (btex $V$ etex, point 1.5 of p1);
label.top (btex $W$ etex, point 1.5 of p2);
label.bot (btex $a_1$ etex, point 1 of p3);
label.top (btex $a_2$ etex, point 3.3 of p3);
label.bot (btex $a_3$ etex, point 5 of p3);
label.bot (btex $b_1$ etex, point .5 of p4);
label.bot (btex $b_2$ etex, point .5 of p5);
label.top (btex $x_0$ etex, z.x0);
label.lft (btex $x_1$ etex, z.x1);
label.rt (btex $x_2$ etex, z.x2);
endfig;

beginfig(1405)
save u,p;
path p[];
u:=.5cm;

z.o=origin;
z.r=(.5,.5)*u;
z.R=2*(.7,.7)*u;
z.x=(.7,.7)*u;
z.shift= 2*z.R zscaled (1,-1);

p0=circle(z.o,z.r);
p1=circle(z.o,z.R);

fill p0--reverse(p1)--cycle withcolor 0;
draw p0;
draw p1;
draw -z.r--(-z.r+z.x) penbold;
draw z.R--z.R+z.x penbold;

fill (p0--reverse(p1)--cycle) shifted z.shift withcolor 0;
draw p0 shifted z.shift;
draw p1 shifted z.shift;
draw (-z.R--(-z.R-z.x)) shifted z.shift penbold;
draw (z.R--z.R+z.x) shifted z.shift penbold;

label (btex {\color{white} $K_1$} etex, .5[z.r,z.R]);
label (btex {\color{white} $K_2$} etex, .5[z.r,z.R]+z.shift);
endfig;

beginfig(1410)
save u,p,n;
path p[];
u:=.5cm;
n:=5;

draw (0,0)*u--(n,0)*u--(n,n)*u--(0,n)*u--cycle \pensemibold;

for i = 1 upto n-1:
draw (i,0)*u--(i,n)*u penhair;
draw (0,i)*u--(n,i)*u penhair;
endfor;

label (btex $1$ etex, .5[(0,0)*u,(1,1)*u]);
label (btex $2$ etex, .5[(2,0)*u,(1,1)*u]);
label (btex $3$ etex, .5[(2,0)*u,(3,1)*u]);
label (btex $4$ etex, .5[(4,0)*u,(3,1)*u]+(1,0));
label (btex $5$ etex, .5[(n-1,0)*u,(n,1)*u]);
label (btex $6$ etex, .5[(0,2)*u,(1,1)*u]);
label (btex $7$ etex, .5[(2,2)*u,(1,1)*u]);
label (btex {\footnotesize $\dots$} etex, .5[(2,2)*u,(3,1)*u]+(1,0));

endfig;

beginfig(1415)
save u,p;
path p[];
u:=1.4cm;

z.x0=(0,0)*u;
z.x1=(1,.3)*u;

p1=z.x0{(1,2)}..z.x0+(0,1)*u..{(1,-1)}z.x0;
p0=z.x0{(1,-.2)}..{(-1,2)}z.x1;

drawarrow subpath (0,.5) of p0 pensemibold;
draw subpath (.5,1) of p0 pensemibold;
drawarrow subpath (0,1) of p1 pensemibold;
draw subpath (1,2) of p1 pensemibold;

dOt z.x0,z.x1;

label.bot (btex $x_0$ etex, z.x0);
label.top (btex $x_1$ etex, z.x1);
label.top (btex $a$ etex, point 1 of p1);
label.top (btex $c$ etex, point .5 of p0);

endfig;

beginfig(1515)
save u,p;
path p[];
u:=1.4cm;

z.r=(0,1)*u rotated 130;
z.f=(.2,.4)*u;
z.x=.6[z.r,z.f];

p1=circle(origin, 1*u);

draw p1;
draw ddline(z.f,z.r)(0,.4);

dOt z.r,z.f,z.x;

label.lrt (btex $x$ etex, z.x);
label.rt (btex $f(x)$ etex, z.f);
label.rt (btex $h(x)$ etex, z.r+(1,0));
label.top (btex $\ell$ etex, 1.4[z.f,z.r]+(-2,0));

endfig;

beginfig(1525)
save u,p,n,m,t;
path p[];
u:=1cm;
m:=2;
n:=9;
t:=2;


z.a=(0,0)*u;
z.b=(1,0)*u;
z.s=(0,.4)*u;

p1=(z.a{up}..tension t..z.b{down}..tension t..cycle) shifted ((0,-.2)*u);

p2=
for i=m step 1 until n:
z.a+i*z.s {up}..tension t..z.b+(i+.5)*z.s {down}..tension t..
endfor
z.a+(n+1)*z.s {up};

draw p1;

draw subpath (.3,1) of p2 dashed evenly;
for i=1 step 1 until 2*(n-m)-1:
draw subpath (i+.1,i+.9) of p2 withpen pencircle scaled 4 withcolor 1;
draw subpath (i,i+1) of p2;
endfor
draw subpath (2*(n-m),2*(n-m)+.7) of p2  dashed evenly;

label (btex $\downarrow\! w$ etex, (.5,.7)*u+(3,-5));
label.rt (btex $\RR$ etex, .5[point 7 of p2,point 9 of p2]);
label.rt (btex $\SS^1$ etex, point 1 of p1);
endfig;

beginfig(1555)
save u,p;
path p[];
u:=1.4cm;


p0=(4,0)*u{up}..(1,0)*u{down}..(3,0)*u{up}..(0,0)*u{up}..cycle;

draw p0;

drawarrow subpath (0,.3) of p0;
drawarrow subpath (.3,1) of p0;
drawarrow subpath (1,1.5) of p0;
drawarrow subpath (1.5,2.2) of p0;
drawarrow subpath (2.2,2.5) of p0;
drawarrow subpath (2.5,3) of p0;
drawarrow subpath (3,3.4) of p0;
drawarrow subpath (3.4,3.6) of p0;
draw subpath (3.5,4) of p0;


endfig;

beginfig(1605)
save u,p;
path p[];
u:=1cm;

p1=circle(origin,1*u) rotated 90 yscaled .3;
z.shift=(0,-1.5)*u;
z.shag=(0,.3)*u;

p2= p1 cutbefore (p1 shifted z.shag) cutafter (p1 shifted z.shag);
%draw p1;
draw p2;
draw p2 shifted z.shag;
draw p2 shifted (2*z.shag);
draw p1 shifted (3*z.shag);
draw p1 shifted z.shift;

label (btex $V$ etex, z.shift);
label.rt (btex $\downarrow\! w$ etex, .5*z.shift+(-5,0));
endfig;


beginfig(1620)
save u,p;
path p[];
u:=.7cm;

z.a0=(0,1)*u;
z.b0=(0,2)*u;
z.a1=z.a0 rotated 120;
z.b1=z.b0 rotated 120;
z.a2=z.a0 rotated -120;
z.b2=z.b0 rotated -120;

p2=z.a0{z.a0 rotated 90}..tension 1.6..z.a2{z.a2 rotated 90}..tension 1.6..z.a1{z.a1 rotated 90}..tension 1.6..cycle;

p3=z.b0{z.b0 rotated 90}..tension 5..z.b2{z.b2 rotated 90}..tension 5..z.b1{z.b1 rotated 90}..tension 5..cycle;

p4=(-2,0)*u{up}..(-1,0)*u{(1,-1)}..(1,0)*u{(1,1)}..(3,0)*u{(1,-1)}..(4,0)*u{up}..(3,0)*u{(-1,-1)}..(1,0)*u{(-1,1)}..(-1,0)*u{(-1,-1)}..cycle;


draw p2 shifted ((1,-1.3)*u);
draw p3 shifted ((5,-1)*u);
draw p4 shifted ((0,.5)*u);


endfig;

beginfig(1625)
save u,p,n,m,t;
path p[];
u:=1cm;
m:=2;
n:=7;
t:=2;


z.a=(0,0)*u;
z.b=(1,0)*u;
z.s=(0,.4)*u;

p1=(z.a{up}..tension t..z.b{down}..tension t..cycle) shifted ((0,-.2)*u);

p2=
for i=m step 1 until n:
z.a+i*z.s {up}..tension t..z.b+(i+.5)*z.s {down}..tension t..
endfor
z.a+(n+1)*z.s {up};

p3= (subpath (1.6,2*(n-m)-.8) of p2)..tension 2..cycle;

draw p1;

for i=1 step 1 until 2*(n-m)-2:
draw subpath (i+.1,i+.9) of p3 withpen pencircle scaled 4 withcolor 1;
draw subpath (i,i+1) of p3;
endfor

draw subpath (2*(n-m)-2+.1,2*(n-m)+.9) of p3 withpen pencircle scaled 4 withcolor 1;
draw subpath (2*(n-m)-2,2*(n-m)+1) of p3;

label (btex $\downarrow$ etex, (.5,.4)*u);
endfig;

beginfig(1655)
save u,p;
path p[];
u:=1cm;

p1=(1,0)*u..{up}(2,0)*u..(1,0)*u..(0,0)*u{up}..cycle;

draw p1;

endfig;

beginfig(1656)
save u,p;
path p[];
u:=1cm;

vardef midarrowpath(expr p) =
  save t, m, v;
  numeric t;
  pair m, v;

  t := arctime ((arclength p)/2) of p;  % <-- FIXED
  m := point t of p;
  v := unitvector(direction t of p);

  draw (m - 1*v + 2*v rotated  90) -- (m + 1*v) -- (m - 1*v + 2*v rotated -90);
enddef;

vardef midarrowtwopath(expr p) =
  save t, m, v;
  numeric t;
  pair m, v;

  t := arctime ((arclength p)/2) of p;  % <-- FIXED
  m := point t of p;
  v := unitvector(direction t of p);

  draw (m + 2*v rotated  90) -- (m + 2*v) -- (m + 2*v rotated -90);
  draw (m + 2*v rotated  90 - 2*v) -- m -- (m + 2*v rotated -90 - 2*v);
enddef;

p1=(1,0)*u..{up}(2,0)*u..(1,0)*u..(0,0)*u{up}..cycle;

draw p1;

midarrowpath(subpath (0,2) of p1);
midarrowtwopath(subpath (2,4) of p1);

endfig;



beginfig(1660)
save u,p;
path p[];
u:=1cm;

z.shift0=(1,-.5)*u;
z.shift1=(0,-1)*u;
z.shift2=(4,-.5)*u;
z.shift3=(8,-.5)*u;

p1=(1,0)*u..{up}(2,0)*u..(1,0)*u..(0,0)*u{up}..cycle;

p2=(0,-1)*u{(1,1)}..(0,1)*u{(-1,1)}..tension 2..cycle;
p3=(0,1)*u{(-1,-1)}..(0,-1)*u{(1,-1)}..tension 2..cycle;

p4=(-1,0)*u{(1,-1)}..(1,0)*u{(1,1)}..(2,0)*u{down}..(1,0)*u{(-1,1)}..(-1,0)*u{(-1,-1)}..(-2,0)*u{up}..cycle;


vardef midarrowpath(expr p) =
  save t, m, v;
  numeric t;
  pair m, v;

  t := arctime ((arclength p)/2) of p;  % <-- FIXED
  m := point t of p;
  v := unitvector(direction t of p);

  draw (m - 1*v + 2*v rotated  90) -- (m + 1*v) -- (m - 1*v + 2*v rotated -90);
enddef;

vardef midarrowtwopath(expr p) =
  save t, m, v;
  numeric t;
  pair m, v;

  t := arctime ((arclength p)/2) of p;  % <-- FIXED
  m := point t of p;
  v := unitvector(direction t of p);

  draw (m + 2*v rotated  90) -- (m + 2*v) -- (m + 2*v rotated -90);
  draw (m + 2*v rotated  90 - 2*v) -- m -- (m + 2*v rotated -90 - 2*v);
enddef;

draw p1;

midarrowpath(subpath (0,2) of p1);
midarrowtwopath(subpath (2,4) of p1);

draw p1 shifted z.shift1;

midarrowpath(subpath (0,2) of p1 shifted z.shift1);
midarrowtwopath(subpath (2,4) of p1 shifted z.shift1);

draw p2 shifted z.shift2;
draw p3 shifted z.shift2;

midarrowpath(subpath (0,1) of p2 shifted z.shift2);
midarrowtwopath(subpath (1,2) of p2 shifted z.shift2);
midarrowpath(subpath (0,1) of p3 shifted z.shift2);
midarrowtwopath(subpath (1,2) of p3 shifted z.shift2);

draw p4 shifted z.shift3;

midarrowpath(subpath (0,1) of p4 shifted z.shift3);
midarrowtwopath(subpath (1,3) of p4 shifted z.shift3);
midarrowpath(subpath (3,4) of p4 shifted z.shift3);
midarrowtwopath(subpath (4,6) of p4 shifted z.shift3);

label (btex $1$ etex, z.shift0);
label (btex $2$ etex, z.shift2);
label (btex $3$ etex, z.shift3);
endfig;

beginfig(1662)
save u,p;
path p[];
u:=1cm;

z.shift3=(5,0)*u;

p4=(-1,0)*u{(1,-1)}..(1,0)*u{(1,1)}..(2,0)*u{down}..(1,0)*u{(-1,1)}..(-1,0)*u{(-1,-1)}..(-2,0)*u{up}..cycle;


vardef midarrowpath(expr p) =
  save t, m, v;
  numeric t;
  pair m, v;

  t := arctime ((arclength p)/2) of p;  % <-- FIXED
  m := point t of p;
  v := unitvector(direction t of p);

  draw (m - 1*v + 2*v rotated  90) -- (m + 1*v) -- (m - 1*v + 2*v rotated -90);
enddef;

vardef midarrowtwopath(expr p) =
  save t, m, v;
  numeric t;
  pair m, v;

  t := arctime ((arclength p)/2) of p;  % <-- FIXED
  m := point t of p;
  v := unitvector(direction t of p);

  draw (m + 2*v rotated  90) -- (m + 2*v) -- (m + 2*v rotated -90);
  draw (m + 2*v rotated  90 - 2*v) -- m -- (m + 2*v rotated -90 - 2*v);
enddef;

draw p4;

midarrowtwopath(subpath (0,1) of p4 );
midarrowpath(subpath (1,3) of p4 );
midarrowtwopath(subpath (3,4) of p4 );
midarrowpath(subpath (4,6) of p4);

draw p4 shifted z.shift3;

midarrowpath(subpath (0,1) of p4 shifted z.shift3);
midarrowtwopath(subpath (1,3) of p4 shifted z.shift3);
midarrowpath(subpath (3,4) of p4 shifted z.shift3);
midarrowtwopath(subpath (4,6) of p4 shifted z.shift3);

endfig;

beginfig(1665)
save u,v,p;
path p[];
u:=.5cm;
v:=.3cm;

z.shift1=(1.4,0)*u;
z.shift2=(-3,-2.5)*u;
z.shift3=(2.8,-2.5)*u;
z.shift4=(-.1,-2.5)*u;
z.shift5=(6,-2.5)*u;

p1=(-4,0)*u{up}..(-3,0)*u{(1,-1)}..(-1,0)*u{(1,1)}..(1,0)*u{(1,-1)}..(3,0)*u{(1,1)}..(4,0)*u{down}
..(3,0)*u{(-1,1)}..(1,0)*u{(-1,-1)}..(-1,0)*u{(-1,1)}..(-3,0)*u{(-1,-1)}..cycle;

p2=(-1,1)*v{1,0}..(1,1)*v{(1,0)}..(1,-1)*v{(-1,0)}..(-1,-1)*v{(-1,0)}..cycle;
p3=(-1,1)*v{0,1}..(1,1)*v{(0,-1)}..(1,-1)*v{(0,-1)}..(-1,-1)*v{(0,1)}..cycle;

p4=(-1,1)*v{0,1}..(-1,1)*2*v..(-1,1)*v{1,0}..(1,1)*v{(1,0)}..(1,1)*2*v..(1,1)*v{(0,-1)}..(1,-1)*v{(0,-1)}..(1,-1)*2*v..(1,-1)*v{(-1,0)}..(-1,-1)*v{(-1,0)}..(-1,-1)*2*v..(-1,-1)*v{(0,1)}..cycle;

p5=(-1,1)*v{1,0}..tension 1.4..(-1,-1)*v{(-1,0)}..tension 1.4..cycle;
p6=p5 shifted ((2,0)*v);

z.r=(10/6,0)*v;

p7=
(0,-1)*v{(-1,1)}..(0,1)*v{(1,1)}
..z.r{(1,-1)}..tension 2..-z.r{(1,1)}
..(0,1)*v{(1,-1)}..(0,-1)*v{(-1,-1)}
..-z.r{(-1,1)}..tension 2..z.r{(-1,-1)}..cycle;

draw p1 shifted z.shift1;
draw p2 shifted z.shift2;
draw p3 shifted z.shift2;
draw p4 shifted z.shift3;
draw p3 shifted z.shift4;
draw p5 shifted z.shift4;
draw p6 shifted z.shift4;
draw p7 shifted z.shift5;

endfig;

beginfig(1695)
save u,p;
path p[];
u:=.5cm;

draw circle(origin,1*u);
draw (-1,0)*u--(1,0)*u;
endfig;

beginfig(1696)
save u,p;
path p[];
u:=.5cm;

p1=circle(origin,1*u);

draw p1;
draw p1 shifted ((3,0)*u);
draw (1,0)*u--(2,0)*u;
p0=(0,-1)*u--(0,1)*u;
draw p0;
draw p0 shifted ((3,0)*u);

z.shift2=(6,0)*u;
p2=(0,-1)*u{left}..(0,1)*u{right}..(2,1)*u{right}..(2,-1)*u{left}..cycle;

draw p2 shifted z.shift2;
draw p0 shifted z.shift2;
draw p0 shifted (z.shift2+(1,0)*u);
draw p0 shifted (z.shift2+(2,0)*u);

z.shift3=(11,1)*u;

draw p0 rotated 45 shifted (z.shift3+(1,-2)*u);
draw p0 rotated -45 shifted (z.shift3+(1,-2)*u) withpen pencircle scaled 4 withcolor 1;
draw p0 rotated -45 shifted (z.shift3+(1,-2)*u);
draw p1 shifted (z.shift3+(1,-2)*u);
draw subpath (0,3) of p2 shifted (z.shift3+(0,-1)*u);

endfig;

beginfig(1705)
save u,p;
path p[];
u:=2cm;

for i=10 step -1 until 0:
draw (0,0)*u..-(0,(.5)**i)*u..cycle withcolor i/10;
endfor

endfig;

beginfig(1708)
save u;
u:=1cm;

z.www=(1,-3)*u;
z.q=(-1,-3)*u;
save p;
path p[];


p[0]=circle((1/1,0)*u,u/1);
draw p[0] yscaled .5;
draw ((support.lft(p[0],z.www)--z.www--support.rt(p[0],z.www))) yscaled .5;

for i=1 step 1 until 10:
p[i]=circle((1/(2**i),0)*u,u/(2**i));
draw p[i] yscaled .5;
draw ((z.www--support(p[i],z.www)) cutbefore p[i-1]) yscaled .5;
endfor

endfig;

beginfig(1710)
save u;
u:=1cm;

z.www=(1,-3)*u;
z.q=(-1,-3)*u;
save p,q;
path p[];
path q[];

p[0]=circle((1/1,0)*u,u/1);
q[0]=circle((-1/1,0)*u,u/1);
draw p[0] yscaled .5;
draw q[0] yscaled .5;
draw ((support.lft(p[0],z.www)--z.www--support.rt(p[0],z.www))) yscaled .5;
draw ((support.rt(q[0],z.q)--z.q--support.lft(q[0],z.q))) yscaled .5;

for i=1 step 1 until 10:
p[i]=circle((1/(2**i),0)*u,u/(2**i));
q[i]=circle((-1/(2**i),0)*u,u/(2**i));
draw p[i] yscaled .5;
draw q[i] yscaled .5;
draw ((z.www--support(p[i],z.www)) cutbefore p[i-1]) yscaled .5;
draw ((z.q--support.lft(q[i],z.q)) cutbefore q[i-1]) yscaled .5;
endfor

endfig;

beginfig(1715)
save u,p;
path p[];
u:=.5cm;

p1=
(1,0)*u{(-1,0)}..
(-1,0)*u{(-1,0)}..
(-1,-4)*u{(1,0)}
for i=0 step 1 until 10:
..tension (2**i)..((-1)**i,-2*(.5**i))*u{up}
endfor;

p2=(-6,-4)*u{(1,0)}..
(-5.5,-4)*u{(1,0)}..
(-5,-4)*u{(1,0)}
for i=0 step 1 until 10:
..tension (2**i)..((-1)**i,-2*(.5**i))*u{up}
endfor;

p3= p2 zscaled (-1,0) shifted ((-5,-4)*u);

for i=13 step -1 until 1:
draw subpath (i-1,i) of p1 withcolor (i/13)**2;
draw subpath (i-1,i) of p2 shifted ((-10,0)*u) withcolor (i/13)**2;
draw subpath (i-1,i) of p3 shifted ((-10,0)*u) withcolor (i/13)**2;
endfor

z.arrow= (-6,-2)*u;
drawarrow z.arrow-(1.5,0)*u--z.arrow+(1.5,0)*u;

label.top (btex 2-fold etex, z.arrow);
label.bot (btex covering etex, z.arrow);

endfig;

beginfig(1720)
save u,p;
path p[];
u:=.5cm;

p1=
(5,0)*u{(-1,0)}..
(4,0)*u{(-1,0)}..
(3,0)*u{(-1,0)}..
(1,-2)*u{(-1,0)}
for i=1 step 1 until 10:
..tension (2**i)..((-1)**i,-2*(.5**i))*u{up}
endfor;

for i=13 step -1 until 1:
draw subpath (i-1,i) of p1 withcolor (i/13)**2;
draw subpath (i-1,i) of p1 shifted ((4,0)*u) withcolor (i/13)**2;
draw subpath (i-1,i) of p1 shifted ((8,0)*u) withcolor (i/13)**2;
draw subpath (i-1,i) of p1 shifted ((12,0)*u) withcolor (i/13)**2;
draw subpath (i-1,i) of p1 shifted ((16,0)*u) withcolor (i/13)**2;
draw subpath (i-1,i) of p1 shifted ((20,0)*u) withcolor (i/13)**2;
draw subpath (i-1,i) of p1 shifted ((24,0)*u) withcolor (i/13)**2;
draw subpath (i-1,i) of p1 shifted ((28,0)*u) withcolor (i/13)**2;
draw subpath (i-1,i) of p1 shifted ((32,0)*u) withcolor (i/13)**2;
endfor

endfig;

beginfig(1740)
save u,p,m,n;
path p[];
u:=1cm;
m:=4;
n:=3;

for i=0 step 1 until m:
draw (i,-.3)*u--(i,n+.3)*u;
endfor

for j=0 step 1 until n:
draw (-.3,j)*u--(m+.3,j)*u;
endfor

vardef midarrowpath(expr p) =
  save t, m, v;
  numeric t;
  pair m, v;

  t := arctime ((arclength p)/2) of p;  % <-- FIXED
  m := point t of p;
  v := unitvector(direction t of p);

  draw (m - 1*v + 2*v rotated  90) -- (m + 1*v) -- (m - 1*v + 2*v rotated -90);
enddef;

vardef midarrowtwopath(expr p) =
  save t, m, v;
  numeric t;
  pair m, v;

  t := arctime ((arclength p)/2) of p;  % <-- FIXED
  m := point t of p;
  v := unitvector(direction t of p);

  draw (m + 2*v rotated  90) -- (m + 2*v) -- (m + 2*v rotated -90);
  draw (m + 2*v rotated  90 - 2*v) -- m -- (m + 2*v rotated -90 - 2*v);
enddef;

for i=0 step 1 until m-1:
for j=0 step 1 until n:
midarrowpath((i,j)*u--(i+1,j)*u);
endfor
endfor

for i=0 step 2 until m:
for j=0 step 1 until n-1:
midarrowtwopath((i,j)*u--(i,j+1)*u);
endfor
endfor

for i=1 step 2 until m:
for j=0 step 1 until n-1:
midarrowtwopath((i,j+1)*u--(i,j)*u);
endfor
endfor

endfig;

beginfig(1743)
save u,p;
path p[];
u:=3cm;

p1=(0,0)*u--(1,0)*u--(1,1)*u--(0,1)*u--cycle;

vardef midarrow(expr A,B) =
  save m,u;
  pair m,u;
  m := 0.5[A,B];
  u := unitvector(B-A);           % direction A -> B
  draw m-1*u +2*u rotated 90  -- (m + 1*u)--m-1*u +2*u rotated -90;
enddef;

vardef midarrowtwo(expr A,B) =
  save m,u;
  pair m,u;
  m := 0.5[A,B];
  u := unitvector(B-A);           % direction A -> B
  draw m +2*u rotated 90-- (m + 2*u)--m +2*u rotated -90;
  draw m +2*u rotated 90 -2*u-- (m)--m +2*u rotated -90-2*u;
enddef;

for i = 1 upto 39:
draw (i/40,0)*u--(i/40,1)*u penhair withcolor .5;
endfor;

for i = 1 upto 39:
draw (0,i/40)*u--(1,i/40)*u penhair withcolor .5;
endfor;

draw p1;
midarrowtwo((0,0)*u,(0,1)*u);
midarrowtwo((1,1)*u,(1,0)*u);
midarrow((0,0)*u,(1,0)*u);
midarrow((0,1)*u,(1,1)*u);
drawarrow (1.25,.5)*u--(1.5,.5)*u;

endfig;

beginfig(1915)
save u,p;
path p[];
u:=.45cm;

z.a=(1,0)*u;
z.b=(3,0)*u;

z.shift =(7,0)*u;

p1=z.a{(1,-2)}..z.b{(1,2)}..tension 1.5..-z.b{(1,-2)}..-z.a{(1,2)}..cycle;
p2=p1 zscaled (-1,0);

p3=z.a{(1,-2)}..z.b{(1,2)}..tension 1.4..z.b zscaled (0,1) {(-2,-1)}..z.a zscaled (0,1) {(2,-1)}..cycle;

p11= p3 zscaled (1,0) shifted z.shift;
p12=p3 zscaled (0,1) shifted z.shift;
p13=p3 zscaled (-1,0) shifted z.shift;
p14=p3 zscaled (0,-1) shifted z.shift;

fill subpath (1,2) of p1--subpath (1,2) of p2--subpath (3,4) of p2--subpath (3,4) of p1--cycle withcolor .8;
fill
subpath (1,2) of p11--subpath (1,2) of p12--subpath (1,2) of p13--subpath (1,2) of p14
--
subpath (3,4) of p14--subpath (3,4) of p13--subpath (3,4) of p12--subpath (3,4) of p11
--cycle withcolor .8;

draw subpath (0,1) of p1 dashed evenly;
draw subpath (1,2) of p1;
draw subpath (2,3) of p1 dashed evenly;
draw subpath (3,4) of p1;
draw subpath (0,1) of p2 dashed evenly;
draw subpath (1,2) of p2;
draw subpath (2,3) of p2 dashed evenly;
draw subpath (3,4) of p2;

draw subpath (0,1) of p11 dashed evenly;
draw subpath (1,2) of p11;
draw subpath (2,3) of p11 dashed evenly;
draw subpath (3,4) of p11;
draw subpath (0,1) of p12 dashed evenly;
draw subpath (1,2) of p12;
draw subpath (2,3) of p12 dashed evenly;
draw subpath (3,4) of p12;
draw subpath (0,1) of p13 dashed evenly;
draw subpath (1,2) of p13;
draw subpath (2,3) of p13 dashed evenly;
draw subpath (3,4) of p13;
draw subpath (0,1) of p14 dashed evenly;
draw subpath (1,2) of p14;
draw subpath (2,3) of p14 dashed evenly;
draw subpath (3,4) of p14;

z.c=.5[z.a,z.b];

label (btex $A$ etex, z.c);
label (btex $B$ etex, -z.c);
label (btex $V$ etex, z.c rotated 90);
label (btex $W$ etex, z.c rotated -90);
label (btex $\c{Z}$ etex, origin);

label (btex $A_1$ etex, z.c+z.shift);
label (btex $B_1$ etex, z.c rotated 90+z.shift);
label (btex $V_1$ etex, z.c rotated 45+z.shift);
label (btex $W_1$ etex, z.c rotated -45+z.shift);
label (btex $A_2$ etex, -z.c+z.shift);
label (btex $B_2$ etex, z.c rotated -90+z.shift);
label (btex $V_2$ etex, z.c rotated -135+z.shift);
label (btex $W_2$ etex, z.c rotated 135+z.shift);
label (btex $\tilde{\c{Z}}$ etex, z.shift);
endfig;

beginfig(1920)
save u,p,n;
path p[];
u:=1cm;
n:=10;

for i = n step -1 until 0:
draw (-1,-1)*u--(-(1/2**i),1/2**i)*u withcolor (i/n);
draw (1,-1)*u--((1/2**i),1/2**i)*u withcolor (i/n);
endfor;

draw (-1,-1)*u--(0,0)*u--(1,-1)*u;


endfig;

end
