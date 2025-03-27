#! /usr/bin/gnuplot -persist
#set terminal png
#set output 'file.png'
#plot sin(x)
set terminal x11 size 600, 400
set multiplot
set xrange[0:5]
set lmargin screen 0.3
#plot  sin(x)
#plot 'data3.dat' using 1:2  with lines title "Kinetic energy" , '' using 1:3 with lines title "Vel" 

#plot 'data3.dat' using 1:2  with lines title "Kinetic energy"
#plot 'data3.dat' using 1:3 with lines title "Vel"  linecolor 2

set grid linetype 1 linecolor rgb "grey"
##### first plot

set ytics 1
set yrange[-3:15]

set ylabel "Voltage" textcolor rgb "red"

#plot sin(x)
plot 'data3.dat' using 1:2 with lines lt rgb "red" title "Kinetic energy" at 0.5, 0.9

##### Second plot

set ytics 100
set yrange[-300:1500]

set ytics offset  -8, 0
set ylabel "Current" offset -8, 0 textcolor rgb "green"

#plot 3*cos(x) linecolor 2
plot 'data3.dat' using 1:3 with lines lt rgb "green" title "Vel" at 0.5, 0.85 

unset multiplot

