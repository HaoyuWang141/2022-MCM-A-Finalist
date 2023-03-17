function [v] = vel(P,a,i)
    syms v;
if i == 1
    syms v;
    sol=solve(204.17*a*v+0.00458*v^3==P,v,"Real",true);
end

if i == 2
    syms v;
    sol=solve(176.94*a*v+0.00367*v^3==P,v,"Real",true);
end

if i == 3
    syms v;
    sol=solve(149.72*a*v+0.00328*v^3==P,v,"Real",true);
end
v=sol;