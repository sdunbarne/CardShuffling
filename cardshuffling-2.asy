if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="cardshuffling-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(5inches);

real myfontsize = 12;
real mylineskip = 1.2*myfontsize;
pen mypen = fontsize(myfontsize, mylineskip);
defaultpen(mypen);

real eps = 0.1;
pair vert = (0, eps);

defaultpen(2);
path card = (0,0)--(1,0);

picture p = new picture;
size(p, 2inches);

label(p, "Card Number", shift(3*vert)*(-0.1,0));
draw(p, shift(2*vert)*card);
draw(p, shift(vert)*card);
draw(p, card);
label(p, "$\Large{\vdots}$", -vert);
label(p, "$n$", shift(-2*vert)*(-0.1,0));
draw(p, shift(-2*vert)*card);
draw(p, shift(-3*vert)*card);
label(p, "$\Large{\vdots}$", -4*vert);
draw(p, shift(-5*vert)*card);

draw(p, (1.15, -2*eps)--(1.15, -5*eps),
arrow=Arrows(),
bar= Bars(), black+1bp );
label(p, "$k$ cards", (1.15, -3.5*eps), align=E );
draw(p, arc( (1.15, 0), r = eps, angle1=90, angle2=-90),
arrow=Arrow(), red+1bp);

picture q = new picture;
size(q, 2inches);

label(q, "Card Number", shift(3*vert)*(-0.1,0));
draw(q, shift(2*vert)*card);
draw(q, shift(vert)*card);
draw(q, card);
label(q, "$\Large{\vdots}$", -vert);
label(q, "$n$", shift(-2*vert)*(-0.1,0));
draw(q, shift(-2*vert)*card);
draw(q, shift(-3*vert)*card);
label(q, "$\Large{\vdots}$", -4*vert);
draw(q, shift(-5*vert)*card);

draw(q, (1.15, -2*eps)--(1.15, -5*eps),
arrow=Arrows(),
bar= Bars(), black+1bp );
label(q, "$k$ cards", (1.15, -3.5*eps), align=E );
draw(q, arc( (1.15, -eps), r = 3*eps, angle1=90, angle2=-90),
arrow=Arrow(), red+1bp);

add(p.fit(),(0,0), (0,0) );
add(q.fit(),(0,0), (100,0) );
