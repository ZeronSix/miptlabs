linear_fit(x)=a*x
set xlabel "\delta P, атм"
set ylabel "\delta T, K"
set title
set yrange [0:5]
set xrange [0:5]
set term wxt
fit linear_fit(x) 'plot1.dat' via a

linear_fit2(x)=d*x
fit linear_fit2(x) 'plot2.dat' via d
linear_fit3(x)=e*x
fit linear_fit3(x) 'plot3.dat' via e
plot 'plot1.dat' title 'Опыт 1', linear_fit(x) title '', \
'plot2.dat' title 'Опыт 2', linear_fit2(x) title '', \
'plot3.dat' title 'Опыт 3', linear_fit3(x) title ''
