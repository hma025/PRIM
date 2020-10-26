function mask = spiralmask(m,n,ratio)

s = ratio*m*n;
mask = zeros(m,n);

%center = [m/2 n/2];
k=0.02;


t = linspace(0,(m/2)/k,s);

r=k*t;
x=r.*cos(t);
y=r.*sin(t);



%  x = t.*cos(t);
%  y = t.*sin(t);
 
  figure; plot(x,y);
 

 
 x=x+n/2;y=y+m/2;
 
 x(find(x<1))=ones(length(find(x<1)),1);
 y(find(y<1))=ones(length(find(y<1)),1);
 for i=1:s
     mask(floor(x(i)),floor(y(i))) = 1;
 end
 
 mask = fftshift(mask);
%  figure;
%  plot(x,y)

end