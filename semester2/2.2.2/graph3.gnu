linear_fit(x)=a*x+b
set xlabel "1/P, 1/кПа"
set ylabel "delta T/Q, К/Вт"
set title
set xrange[0:30]
set yrange[0:400]
fit linear_fit(x) 'graph3.dat' via a, b
plot 'graph3.dat' title '', linear_fit(x) title ''
