linear_fit(x)=a*x+b
set xlabel "1/P, 1/торр"
set ylabel "D, см^2/c"
set title
fit linear_fit(x) 'plot4.dat' via a, b
plot 'plot4.dat' title '', linear_fit(x) title ''
