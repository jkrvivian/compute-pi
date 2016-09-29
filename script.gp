reset    
                                                                    
set ylabel 'time(sec)'
set xlabel 'N'
set key width 2
set key left
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set datafile separator "," 
set grid
set output 'compare.png'


plot "result_clock_gettime.csv" using 1:2 with lines title 'baseline', \
'' using 1:3 with lines title 'omp_2', \
'' using 1:4 with lines title 'omp_4', \
'' using 1:5 with lines title 'avx', \
'' using 1:6 with lines title 'avxunroll', \
'' using 1:7 with lines title 'Leibniz', \
'' using 1:8 with lines title 'LeibnizAVX', \
'' using 1:9 with lines lc rgb "orange" title 'LeibnizAVX_unroll'
