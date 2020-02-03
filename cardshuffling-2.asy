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

defaultpen(5);
path card = (0,0)--(1,0);

label("Stack Position", shift(3*vert)*(1.1,0));
draw(shift(2*vert)*card); label("$1$", shift(2*vert)*(1.1,0));
draw(shift(vert)*card); label("$2$", shift(vert)*(1.1,0));
draw(card); label("$3$",(1.1,0));
label("$\Huge{\vdots}$", -vert);
draw(shift(-2vert)*card); label("$k-1$", shift(-2*vert)*(1.1,0));
draw(shift(-3*vert)*card); label("$k$", shift(-3*vert)*(1.1,0));
label("$\Huge{\vdots}$", -4*vert);
draw(shift(-5*vert)*card); label("$n$", shift(-5*vert)*(1.1,0));

draw( arc( (1.15, -eps/4), r = 2.20*eps, angle1=90, angle2=-90),
arrow=Arrow(), red+1bp);
