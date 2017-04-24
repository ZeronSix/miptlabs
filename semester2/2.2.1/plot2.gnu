set xlabel "t, С"
set ylabel "U/U0*255"
set title
set xrange [0:500]
plot 'plot2.dat' title '' smooth bezier with lines, \
     'plot2.dat' title '' with points
