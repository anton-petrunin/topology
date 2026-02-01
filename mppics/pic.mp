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

draw (z.a--z.b--k[z.b,z.c]--k[z.a,z.d]--cycle) shifted z.shift pensemibold;
draw (z.d--z.c--(1-k)[z.b,z.c]--(1-k)[z.a,z.d]--cycle) shifted z.shift pensemibold;
draw (.5[k[z.b,z.c],k[z.a,z.d]]--.5[(1-k)[z.b,z.c],(1-k)[z.a,z.d]]) shifted z.shift pensemibold;
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

for i=0 upto 9:
draw z.p{dir (45+6i)}..{dir -10i}z.q;
endfor

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
label (btex $\cdots$ etex, .5[(4,0)*u,(3,1)*u]+(1,0));
label (btex $n$ etex, .5[(n-1,0)*u,(n,1)*u]);
label (btex {\small $2{\cdot}n$} etex, .5[(n-1,2)*u,(n,1)*u]);
label (btex {\small $3{\cdot}n$} etex, .5[(n-1,2)*u,(n,3)*u]);
label (btex $\vdots$ etex, .5[(n-1,4)*u,(n,3)*u]+(0,1));
label (btex $n^2$ etex, .5[(n-1,n-1)*u,(n,n)*u]);
endfig;

end
