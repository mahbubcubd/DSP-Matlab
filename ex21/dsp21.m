% Solution for a. x(n)=2?(n + 2) ? ?(n ? 4), ?5 ? n ? 5.
n = (-5:5);
x = 2*impseq(-2,-5,5) - impseq(4,-5,5);
subplot(2,2,1);
stem(n,x); 
title("Sequence in Problem 2.1a")
xlabel("n"); 
ylabel("x(n)");

% Solution b. x(n) = n [u(n) ? u(n ? 10)]+ 10e?0.3(n?10) [u(n ? 10) ? u(n ? 20)], 0 ? n ?
% 20
n = (0:20);
x1 = n.*(stepseq(0,0,20)-stepseq(10,0,20));
x2 = 10*exp(-0.3*(n-10)).*(stepseq(10,0,20)-stepseq(20,0,20));
x = x1+x2;
subplot(2,2,3);
stem(n,x);
title("Sequence in Problem 2.1b");
xlabel("n1"); ylabel("x3(n2)");
% Solution c. x(n) = cos(0.04?n)+0.2w(n), 0 ? n ? 50
n = (0:50); 
x = cos(0.04*pi*n)+0.2*randn(size(n));
subplot(2,2,2);
stem(n,x);
title("Sequence in Problem 2.1c")
xlabel("n");
ylabel("x(n)");
%Solution d. x˜(n) = {..., 5, 4, 3, 2, 1, 5
% , 4, 3, 2, 1, 5, 4, 3, 2, 1, ...}; ?10 ? n ? 9.
% Note that over the given interval, the sequence ˜x (n) has four periods
n = (-10:9);
x = [5,4,3,2,1];
xtilde = x' * ones(1,4);
xtilde = (xtilde(:))';
subplot(2,2,4); stem(n,xtilde);
title("Sequence in Problem 2.1d")
xlabel("n");
ylabel("xtilde(n)");