wn= input('frequency=')
zeta= input('damping factor=')
num= [wn^2]
deno= [1 2*zeta*wn wn^2]
g= tf(num, deno)
stepinfo(g)
t=feedback(g,1)
step(g,t)
grid on