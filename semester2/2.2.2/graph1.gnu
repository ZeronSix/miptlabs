linear_fit(x)=a*x+b
set xlabel "Q, 10^-6 Вт"
set ylabel "R, Ом"
set title
fit linear_fit(x) 'graph1.dat' via a, b
plot 'graph1.dat' title '' linear_fit(x) title ''
