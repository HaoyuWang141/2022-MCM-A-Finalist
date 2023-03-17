clc
clear
a=[0.005 0.01 0.02 0.03 0.05]
v=zeros(3,5)
P=zeros(3,5)
for i=1:3
    for j=1:5
        [v(i,j) P(i,j)]=climb(a(j),1,i);
    end
end

