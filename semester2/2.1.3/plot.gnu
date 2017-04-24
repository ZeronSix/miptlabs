set xlabel "k"
set ylabel "f_{k+1} - f{k}, Hz)"
set title
set yrange [0:3000]
set xrange [0:8]
set term wxt

linear_fit(x)=a*x
fit linear_fit(x) 'plot1.dat' via a

linear_fit2(x)=b*x
fit linear_fit2(x) 'plot2.dat' via b

linear_fit3(x)=c*x
fit linear_fit3(x) 'plot3.dat' via c

linear_fit4(x)=d*x
fit linear_fit4(x) 'plot4.dat' via d
plot 'plot1.dat' title 'Опыт 1', linear_fit(x) title '', \
'plot2.dat' title 'Опыт 2', linear_fit2(x) title '', \
'plot3.dat' title 'Опыт 3', linear_fit3(x) title '', \
'plot4.dat' title 'Опыт 4', linear_fit4(x) title ''
