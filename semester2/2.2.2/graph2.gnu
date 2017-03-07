linear_fit1(x)=a*x+b
linear_fit2(x)=c*x+d
linear_fit3(x)=e*x+f
set xlabel "Q, 10^-6 Вт"
set ylabel "t, ^oC"
set xrange [0:75000]
set yrange [0:20]
set title
fit linear_fit1(x) 'graph2.dat' via a, b
fit linear_fit2(x) 'graph2_1.dat' via c, d
fit linear_fit3(x) 'graph2_2.dat' via e, f
plot 'graph2.dat' title 'P1', linear_fit1(x) title '', \
     'graph2_1.dat' title 'P2', linear_fit2(x) title '', \
     'graph2_2.dat' title 'P3', linear_fit3(x) title ''
