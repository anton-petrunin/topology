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

draw z.c--z.e;
draw z.a--z.d--z.b;

draw (z.a--z.b--z.d--cycle) shifted (1*z.shift);

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

drawarrow (ddline((0,0)*u,(1,0)*u)(.2,.3)) shifted z.shift;
drawarrow (ddline((0,0)*u,(0,1)*u)(.2,.3)) shifted z.shift;
draw ((0,1)*u--(.5,t2)*u--(1,1)*u) shifted z.shift pensemibold;
draw ((0,t2)*u--(.5,t2)*u--(.5,0)*u) shifted z.shift dashed evenly;
draw ((0,1)*u--(1,1)*u--(1,0)*u) shifted z.shift dashed evenly;

label.bot(btex 1 etex, (1,0)*u+z.shift);
label.lft(btex 1 etex, (0,1)*u+z.shift);
label.lft(btex $1-\tau$ etex, (0,t2)*u+z.shift);
label.bot(btex $\tfrac12$ etex, (.5,0)*u+z.shift);
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

draw ball1;
draw ball2 shifted z.shift;
draw ball3 shifted (2*z.shift);

endfig;
end
