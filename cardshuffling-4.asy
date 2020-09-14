if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="cardshuffling-4";
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
pair left = (-eps, 0);
pair right = (1.25, 0);

defaultpen(5);
path card = (0,0)--(1,0);

for(int i=0; i<6; ++i) {
draw( shift(i * vert) * card);
}
for(int i=6; i<10; ++i) {
draw( shift(left) * shift(i * vert) * card, red);
}

draw( shift(right) * shift( 0 * vert) * card );
draw( shift(right) * shift( 1 * vert) * card );
draw( shift(right) * shift( 2 * vert) * card );

draw( shift(left) * shift(right) * shift( 3 * vert) * card, red );

draw( shift(right) * shift( 4 * vert) * card );

draw( shift(left) * shift(right) * shift( 5 * vert) * card, red );
draw( shift(left) * shift(right) * shift( 6 * vert) * card, red );

draw( shift(right) * shift( 7 * vert) * card );

draw( shift(left) * shift(right) * shift( 8 * vert) * card, red );

draw( shift(right) * shift( 9 * vert) * card );

int[] Pi = {2, 4, 5, 7, 1, 3, 6, 8, 9, 10};
for( int i=0; i<10; ++i) {
label(string(10-i )+"$\qquad$"+string(Pi[9-i]), (2.75, eps * i));
}
label("$i\qquad\pi_i$", (2.75, eps * 10));
