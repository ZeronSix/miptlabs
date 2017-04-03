linear_fit(x)=a*x+b
set xlabel "t, ^o C"
set ylabel "\sigma , 10^-3 Н/м "
set title
set yrange [30:45]
set xrange [20:50]
set term wxt
fit linear_fit(x) 'plot1.dat' via a,b

plot 'plot1.dat' title 'Опыт 1', linear_fit(x) title ''
