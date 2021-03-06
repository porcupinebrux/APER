# R - SCATTER PLOT - LINEAR-LOG SCALES - ERRORS

# Enter the data for the t and z vectors:
t <- c(0, 5, 10, 15, 20, 25, 30, 35, 40, 45)
z <- c(0, 12, 55, 100, 200, 305, 380, 430, 485, 490)

# Enter the errors in t and z:
errt <- c(0.1, 0.2, 0.3, 0.25, 0.3, 0.5, 0.5, 0.6, 0.7, 0.7)
errz <- c(0, 1, 5, 10, 50, 60, 80, 100, 125, 150)

# Production of the scatter plot of data with linear axes and grid:
plot(t, z, log="y", pch=20, xlab="t (s)", ylab="z (m) or 10 (m/s) or 100a (m/s^2)", xlim=c(0,50), ylim=c(1, 1000), grid())
# pch=20 gives the size of the dots used, xlab="t (s)" and ylab="z (m) or 10? (m/s) or 100a (m/s^2)" 
# give the labels of the X-Axis and Y-Axis and xlim=c(0,50) and ylim=c(1, 1000) give the range
# of values of the two axes respectively. grid() ensures that a grid is drawn.

# Add t error bars:
arrows(t-errt, z, t+errt, z, length=0.02, angle=90, code=3)

# Add z error bars:
arrows(t, z-errz, t, z+errz, length=0.02, angle=90, code=3)

# ENTER returns the required scatter plot.

# Add label to the curve:
text(20, 500, "z", cex=1)


# THE FOLLOWING COMMANDS ARE OPTIONAL AND ADD VARIOUS FEATURES TO THE PLOT:

# Least-squares curve fit (polynomial of 4th degree):
nls(z~a0+a1*t+a2*t^2+a3*t^3+a4*t^4, start=list(a0=1, a1=1, a2=1, a3=1, a4=1))

# Plot the least-squares curve z(t). Note the use of x as variable instead of t:
curve(3.374-4.355*x+1.054*x^2-0.01774*x^3+3.986e-05*x^4, from=0, to=50, add=T, col="red")
# from=0, to=50 sets the range of the x (i.e. t) axis. col="red" sets the color of the line to red.



