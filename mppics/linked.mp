% handle_isotopy_fixed.mp
% Schematic: handlebody with linked handles is isotopic to one with unlinked handles.
% (No btex/etex needed.)

prologues := 3;
outputtemplate := "%j-%c.mps";

% ---------- style ----------
numeric u, lw, gap;
u  := 18;        % basic unit (increase for bigger)
lw := 1.6;       % outer stroke thickness
gap:= 0.9;       % inner "erase" thickness

color bg; bg := white;

pen chalk, eraser, thin;
chalk  := pencircle scaled lw;
eraser := pencircle scaled (lw+1.6);
thin   := pencircle scaled 1.0;

% Draw a "tube" outline for a path (outer line, erase middle, inner line)
def tube(expr p) =
  draw p withpen chalk;
  draw p withpen pencircle scaled (lw+gap) withcolor bg;
  draw p withpen pencircle scaled (lw*0.55) withcolor black;
enddef;

% A slightly organic base blob (the handlebody body)
vardef bodyblob(expr s, zshift) =
  save B, F;
  path B, F;

  B :=
    (-2.6u, -1.4u) .. controls (-3.4u, -0.2u) and (-3.3u,  1.2u) .. (-1.9u,  1.6u)
                    .. controls (-1.2u,  2.4u) and ( 1.2u,  2.4u) .. ( 1.9u,  1.6u)
                    .. controls ( 3.3u,  1.2u) and ( 3.4u, -0.2u) .. ( 2.6u, -1.4u)
                    .. controls ( 1.6u, -2.2u) and (-1.6u, -2.2u) .. cycle;

  B := B scaled s shifted zshift;
  tube(B);

  % small "foot" to suggest thickness
  F :=
    (-2.3u, -1.25u) .. controls (-1.6u, -1.9u) and (1.6u, -1.9u) .. (2.3u, -1.25u)
                    .. controls (1.6u, -1.45u) and (-1.6u,-1.45u) .. cycle;

  F := F scaled s shifted zshift;
  tube(F);
enddef;

% Two ellipses arranged as a Hopf link (projection), with an over/under crossing.
vardef hopf_link(expr zc, sx, sy) =
  save ellV, ellH;
  path ellV, ellH;

  % "vertical" ellipse
  ellV := fullcircle xscaled (1.45u*sx) yscaled (2.25u*sy) shifted zc;

  % "horizontal" ellipse (shifted slightly)
  ellH := fullcircle xscaled (2.25u*sx) yscaled (1.45u*sy)
          shifted (zc + (0.55u*sx, 0));

  % Draw first tube
  tube(ellV);

  % Make ellH go OVER ellV at the upper crossing: erase a short chunk of ellV
  draw (subpath (0.17,0.30) of ellV) withpen eraser withcolor bg;

  % Draw second tube
  tube(ellH);

  % Make ellV go OVER ellH at the lower crossing: erase a chunk of ellH, redraw ellV chunk
  draw (subpath (0.60,0.73) of ellH) withpen eraser withcolor bg;
  tube(subpath (0.68,0.82) of ellV);
enddef;

% Two unlinked handles
vardef unlinked_handles(expr zL, zR, sx, sy) =
  save hL, hR;
  path hL, hR;

  hL := fullcircle xscaled (1.55u*sx) yscaled (2.25u*sy) shifted zL;
  hR := fullcircle xscaled (1.55u*sx) yscaled (2.25u*sy) shifted zR;

  tube(hL);
  tube(hR);
enddef;

vardef handlebody_linked(expr origin) =
  bodyblob(1.0, origin);
  hopf_link(origin + (0, 1.8u), 1.0, 1.0);
enddef;

vardef handlebody_unlinked(expr origin) =
  bodyblob(1.0, origin);
  unlinked_handles(origin + (-1.25u, 2.0u), origin + ( 1.25u, 2.0u), 1.0, 1.0);
enddef;

% A small hand-drawn-ish tilde made of two Bézier bumps
vardef tildepath(expr w,h) =
  (-w/2, 0) .. controls (-w/4, h) and (0, -h) .. (w/2, 0)
enddef;

beginfig(1);

picture Pleft, Pright;

% build left
currentpicture := nullpicture;
handlebody_linked((0,0));
Pleft := currentpicture;

% build right
currentpicture := nullpicture;
handlebody_unlinked((0,0));
Pright := currentpicture;

% place panels
pair L, R;
L := (0,0);
R := (9.0u,0);

addto currentpicture also Pleft shifted L;
addto currentpicture also Pright shifted R;

% arrow + tilde between panels
pair A, B, M;
A := L + (4.2u, 0.6u);
B := R + (-4.2u, 0.6u);
M := (A+B)/2;

drawarrow A .. B withpen thin;
draw tildepath(1.4u,0.35u) shifted (M + (0,0.55u)) withpen chalk;

endfig;
end.
