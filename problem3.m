u = [0 2 4 6 6 4 2 1 -1 -2 -4 -6 -6 -4 -2 0];
w = [u u u u u u u u];

figure(8)
plf(w)
title('Original vector w')
figure(1)
plf(haar_step(w,1))
title('Vector w after haar_step(k=1)')
figure(2)
plf(haar_step(w,2))
title('Vector w after haar_step(k=2)')
figure(3)
plf(haar_step(w,3))
title('Vector w after haar_step(k=3)')
figure(4)
plf(haar_step(w,4))
title('Vector w after haar_step(k=4)')
figure(5)
plf(haar_step(w,5))
title('Vector w after haar_step(k=5)')
figure(6)
plf(haar_step(w,6))
title('Vector w after haar_step(k=6)')
figure(7)
plf(haar_step(w,7))
title('Vector w after haar_step(k=7)')
load handel

handel = y(1:65536);

sound(handel);
pause(8);
c = haar_step(handel',1);
sound(c);
pause(8);
c = haar_step(handel',2);
sound(c);
pause(8);
c = haar_step(handel',3);
sound(c);
pause(8);
sound(haar_inv_step(c,3));
pause(8);

c = haar(handel');
c1 = c;
c1(32768:end)=0;
sound(haar_inv(c1))
pause(8)
c1(1:2:16383)=0;
sound(haar_inv(c1))
