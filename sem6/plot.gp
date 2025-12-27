set terminal png size 1200,800
set output 'trajectory_plot.png'
set multiplot layout 2,2

set title 'Высота от времени'
set xlabel 'Время (с)'
set ylabel 'Высота (м)'
set grid
plot 'trajectory.csv' using 1:3 with lines lw 2

set title 'Скорость от времени'
set xlabel 'Время (с)'
set ylabel 'Скорость (м/с)'
set grid
plot 'trajectory.csv' using 1:2 with lines lw 2

set title 'Расход топлива'
set xlabel 'Время (с)'
set ylabel 'Топливо (кг)'
set grid
plot 'trajectory.csv' using 1:5 with lines lw 2

set title 'Скорость от высоты'
set xlabel 'Высота (м)'
set ylabel 'Скорость (м/с)'
set grid
plot 'trajectory.csv' using 3:2 with lines lw 2
unset multiplot
