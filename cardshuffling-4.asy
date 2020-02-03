if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="cardshuffling-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;

size(5inches);

real myfontsize = 12;
real mylineskip = 1.2*myfontsize;
pen mypen = fontsize(myfontsize, mylineskip);
defaultpen(mypen);

real f( real x) {
real a = 0.6;
real k = 50.0;

real term = exp(-k*(x -a));
return term/( 1 + term);
}

draw( graph(f, 0,1));
xaxis("$t$", Arrow);
xtick(Label("$n \log n (1 -o(1))$", (0.4,0), 2S), (0.4, 0), S);
xtick(Label("$n \log n $", (0.6, 0), 2N), (0.6, 0), N);
xtick(Label("$n \log n (1 +o(1))$", (0.8,0), 2S), (0.8, 0), S);
yaxis("$\| P^t - U \|_{TV}$", Arrow);
