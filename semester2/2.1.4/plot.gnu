set xlabel "Время t, c"
set ylabel "R, Ohm"
set title
set yrange [18:20]
set xrange [0:1800]
set term wxt

linear_fit(x)=a*x+e
fit linear_fit(x) 'plot1.dat' via a, e

linear_fit2(x)=b*x+f
fit linear_fit2(x) 'plot2.dat' via b, f

linear_fit3(x)=c*x+g
fit linear_fit3(x) 'plot3.dat' via c, g

linear_fit4(x)=d*x+h
fit linear_fit4(x) 'plot4.dat' via d, h
plot 'plot1.dat' title 'Пустой', linear_fit(x) title '', \
'plot2.dat' title 'Fe', linear_fit2(x) title '', \
'plot3.dat' title 'Cu-Zn', linear_fit3(x) title '', \
'plot4.dat' title 'Al', linear_fit4(x) title ''
