set xlabel "t, С"
set ylabel "U/U0*255"
set title
set xrange [0:400]
plot 'plot3.dat' title '' smooth bezier with lines, \
     'plot3.dat' title '' with points
