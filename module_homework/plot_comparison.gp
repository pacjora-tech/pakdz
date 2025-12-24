# GNUPLOT script for trajectory comparison
set terminal pngcairo size 1200,800 enhanced font 'Verdana,12'
set output 'YAK-40_comparison.png'

set title 'YAK-40 Trajectory Comparison (Variant 1)'
set xlabel 'Speed V (km/h)'
set ylabel 'Altitude H (m)'
set grid
set key top left
set datafile separator ','

# Plot with lines AND points
plot 'trajectory_min_time.csv' using 3:2 every ::1 \
     with linespoints lw 2 pt 7 ps 1.2 lc rgb 'red' \
     title 'Min Time (9.75558 min, 1975.11 kg)', \
     'trajectory_min_fuel.csv' using 3:2 every ::1 \
     with linespoints lw 2 pt 7 ps 1.2 lc rgb 'blue' \
     title 'Min Fuel (15.0449 min, 1797.89 kg)'

