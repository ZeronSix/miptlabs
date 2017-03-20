linear_fit(x)=a*x+b
set xlabel "1\T, К" 
set ylabel "mu д-т, К/атм"
set title
set yrange [0.7:1.2]
set xrange [0.003:0.004]
set term wxt
fit linear_fit(x) 'plot4.dat' via a, b

plot 'plot4.dat' title '', linear_fit(x) title ''
