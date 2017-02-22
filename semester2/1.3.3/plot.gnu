linear_fit(x)=a*x+b
set xlabel "Q, cм^3/с"
set ylabel "P, Па"
set title
set yrange [0:500]
set xrange [0:100]
set term wxt
fit linear_fit(x) 'plot1.dat' via a,b

linear_fit2(x)=d*x+c
fit linear_fit2(x) 'plot2.dat' via d,c
linear_fit3(x)=e*x+f
fit linear_fit3(x) 'plot3.dat' via e,f
plot 'plot1.dat' title '', linear_fit(x) title '', \
'plot2.dat' title '', linear_fit2(x) title '', \
'plot3.dat' title '', linear_fit3(x) title ''
