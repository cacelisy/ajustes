plot [550:750] "parafina1.dat" title "Pico Parafina 1"

f(x)=a*exp(-0.5*b*(x-mu)**2)

g(x)= c*x+d

a=700
b=0.05
mu=670


set xlabel "E (KeV)"
set ylabel "I (Cuentas)"

fit [600:750] f(x)+g(x) "parafina1.dat" via a,b,mu,c,d

plot [600:750] "parafina1.dat" pt 7 ps 0.2 title "Pico Parafina 1",f(x)+g(x) title "Ajuste", g(x) title "Fondo", f(x) t 'pico'

set terminal pdf

set output "plot.pdf"

replot

set terminal x11

replot