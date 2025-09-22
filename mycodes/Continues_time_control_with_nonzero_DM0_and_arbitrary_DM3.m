% This is a sample code among many other codes which is written to check 
% the validity and support one of our interesting practical methods.
% See Theorem 12 and Example 4.3 in the following paper.
% Our first paper in this regard has been published in 
% Electronic Journal of Linear Algebra, ISSN 1081-3810
% A publication of the International Linear Algebra Society
% Volume 40, pp. 274-298, February 2024.
% MORAD AHMADNASAB AND PANAYIOTIS J. PSARRAKOS 



clear;

n=2;
DM3 = randn(2,2);
M0 = zeros(n,n);
DM0 = diag([6 5.5]); DM4 = diag([4.2 7.1]); DM6 = diag(4.2);
M1=randn(n); M2=randn(n,n-1); M3=randn(n);
DM1=(1e0)*randn(n); 
DM2=(1e0)*randn(n,n-1); 
M4=gallery('randsvd',n,-1e1); 
M5=randn(n,n-1);   DM5=(1e0)*randn(n,n-1); 
M6=gallery('randsvd',n-1,-1e1); 
A=[M0 M1 M2;M1' M4 M5;M2' M5' M6]; 
DA=[DM0 DM1 DM2;DM1' DM4 DM5;DM2' DM5' DM6];
B =[zeros(n) M3 zeros(n,n-1);-M3' zeros(n,n) zeros(n,n-1);zeros(n-1,n) zeros(n-1,n) zeros(n-1,n-1)];
DB =[zeros(n) DM3 zeros(n,n-1);-DM3' zeros(n,n) zeros(n,n-1);zeros(n-1,n) zeros(n-1,n) zeros(n-1,n-1)];
% 
FVDM1=FV(DM1); 
FVDM2 = FV([zeros(n,n) 2*DM2;zeros(n-1,n) zeros(n-1,n-1)]);
FVDM5 = FV([zeros(n,n) 2*DM5;zeros(n-1,n) zeros(n-1,n-1)]);
mineigDM4 = min(eig(DM4)); mineigDM6 = min(eig(DM6));
maxeigDM4 = max(eig(DM4)); maxeigDM6 = max(eig(DM6));
maxsvdDM1 =max(svd(DM1));
maxsvdDM2 =max(svd(DM2));
maxsvdDM5 =max(svd(DM5));

c1 =-(mineigDM4+mineigDM6)/2 + (min(real(FVDM1))+ maxsvdDM2+maxsvdDM5);
c2 =-(maxeigDM4+maxeigDM6)/2 - (max(real(FVDM1))+maxsvdDM2+maxsvdDM5);

c11 = (mineigDM4+mineigDM6) -2*(maxsvdDM1+maxsvdDM2+maxsvdDM5)
c22 = (maxeigDM4+maxeigDM6) +2*(maxsvdDM1+maxsvdDM2+maxsvdDM5)

FVDM3=FV(DM3);

f = imag(FV(DM3)); fn = []; fp =[]; 
for j = 1: length(f)
    if f(j) > 0
        fp =[fp f(j)];
    elseif f(j) < 0
        fn =[fn f(j)];
    end
end

if c1 < 0
    ga2 = (c1)/(max(fp));
elseif c1 > 0 
    ga2 = (c1)/ (min(fp));
end
    
te =[];  gg=[];
for g = ga2-10:0.1:ga2+10
    DP=(DA-(sqrt(-1)*g)*DB);
    te = [te isspd(DP)];
    gg =[gg g];
end
figure
plot(gg,te,'*')


figure
FVDM3 = FV(DM3);
hold on;
FVDM1 = FV(DM1);

%%%%%%%%%%%%%%%%

figure 
S11 = []; S22 = []; S33 = []; S44 = []; S55 = [];


 gaa = []; xax = []; 
  for ga = -20:0.01:20 
  ei = eig(DA-(ga*sqrt(-1))*DB);
  
  S11 = [S11 ei(1)];
  S22 = [S22 ei(2)];
  S33 = [S33 ei(3)];
  S44 = [S44 ei(4)];
  S55 = [S55 ei(5)];
 gaa = [gaa ga];
   xax = [xax 0]; 
 end

plot(gaa, S11,'r.-');
hold on;
plot(gaa,S22,'.-');
hold on;
plot(gaa, S33,'c.-');
hold on;
plot(gaa,S44,'m.-');
hold on;
plot(gaa,S55,'k.-');
hold on;
plot(gaa,xax,'k-');

xlabel('\bf{\gamma}'); ylabel('\bf{Eigenvalues of \Delta P(i\gamma)}');



