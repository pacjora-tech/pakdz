@echo off
echo Running GNUPLOT scripts for YAK-40...
echo.
echo 1. Comparison plot
gnuplot plot_comparison.gp
echo 2. Min time plot
gnuplot plot_min_time.gp
echo 3. Min fuel plot
gnuplot plot_min_fuel.gp
echo.
echo Plots created:
echo - YAK-40_comparison.png
echo - YAK-40_min_time.png
echo - YAK-40_min_fuel.png
echo.
pause
