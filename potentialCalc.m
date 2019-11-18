potential=zeros(5,6); %5X6 Matrix of potentials

for k=3:6
potential(1,k)=100;
end
potential(2,3)=100;
potential(2,6)=100;
potential(3,6)=100;
potential(2,1)=0;
potential(2,2)=0;

err=1;
while err>=0.1
    old=potential(3,4);
    for i=2:4
        for j=2:5
potential(i,j)=0.25*(potential(i-1,j)+potential(i+1,j)+potential(i,j-1)+potential(i,j+1));
            for k=3:6
                potential(1,k)=100;
            end
            potential(2,3)=100;
            potential(2,6)=100;
            potential(3,6)=100;
            potential(2,1)=0;
            potential(2,2)=0;
        end
    end
    new=potential(3,4);
    err=abs(new-old);
end
x=potential(3,4);
%y=potential(7,3);
