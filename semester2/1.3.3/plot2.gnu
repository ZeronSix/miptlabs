set xlabel "Q, 10^-2 л/с"
set ylabel "deltaP, Па"
set title
set yrange [0:300]
set xrange [0:17]
set term wxt

plot 'plot4.dat' title '' smooth acsplines with lines, \
     'plot4.dat' title '' 
