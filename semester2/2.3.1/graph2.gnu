linear_fit(x)=a*x+b
set xlabel "t, c"
set ylabel "P, 10E-4 торр"
set yrange [0:9]
set xrange [0:75]
set title
fit linear_fit(x) 'graph2.dat' via a, b
plot 'graph2.dat' title '', linear_fit(x) title ''
