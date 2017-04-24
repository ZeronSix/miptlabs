set xlabel "t, С"
set ylabel "U/U0*255"
set title
plot 'plot1.dat' title '' smooth bezier with lines, \
     'plot1.dat' title '' with points
