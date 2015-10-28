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
Y = y(1:65536);
yhaar = haar_step(Y',20);
sound(haar_inv_step(yhaar,3));
