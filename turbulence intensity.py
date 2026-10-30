import numpy as np

I = 0.06 #Turbulence intensity
Dh = 0.1
l = 0.07*Dh
Cmu = 0.09
R = 287
gamma = 1.4
T = 300
Ttot = 420
ptot = 330860
p = 154960

a = np.sqrt(gamma*R*T)

M = np.sqrt(2/(gamma-1)*((Ttot/T)-1))
print(M)
M = np.sqrt(2/(gamma-1)*(((ptot/p)**((gamma-1)/gamma))-1))
print(M)

U = M*a
print(U)

k = 3/2 * (U*I)**2
v_t = Cmu**0.25 * np.sqrt(k) * l

print(v_t)

omega_inlet= np.sqrt(k) / (Cmu**0.25 * l)
print(omega_inlet)
print(k)