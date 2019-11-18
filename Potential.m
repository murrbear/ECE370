potential=zeros(9); %9X9 Matrix of potentials

for i=1:9
potential(i,i)=100;
end

err=1;
while err>=0.1
    old=potential(7,3);
    for i=3:8
        for j=2:7
potential(i,j)=0.25*(potential(i-1,j)+potential(i+1,j)+potential(i,j-1)+potential(i,j+1));

            for k=1:9
            potential(k,k)=100;
            end
        end
    end
    new=potential(7,3);
    err=new-old;
end
x=potential(5,4);
y=potential(7,3);