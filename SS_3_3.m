close all;                                               % ��� ������ â�� ���� 
clear all;                                               % �����ִ� �۾�����(workspace)�� ��� ��� 
clc;                                                     % ���(command) â�� ���

ni=-10; nf=14;n=[ni:nf];                                 % �ð��� ����
x=(n+4).*(n>=-4)-n.*(n>=0)-(n-3).*(n>=3)+(n-7).*(n>=7);  % x[n] ���� 
xs=[x(4:length(x)) 0 0 0];                               % x[n+3] ����
m=nf-abs(ni);                                            % ��� �� �ð����� ������ �� ����
xr=fliplr(x);                                            % x[n] ������ �迭 ���� ������
xr=[xr(m+1:length(x)) zeros(1,m)];                       % x[-n] ���� (y�� ��Ī)
xe=0.5*(x+xr);                                           % ���Ī ����  ����
xo=0.5*(x-xr);                                           % ���Ī ����  ����
xaug=[zeros(1,-ni) x zeros(1,nf)];                       % �ð��� ���� 2���� x_a[n] ����
for k=1:length(n)
    xd(k)=xaug(2*k-1);                                   % x[2n] ����
end
xtrun=x(-ni/2+1:-ni+1+nf/2);                             % �ð��� ���� ���� x[n/2] ����
xu=zeros(1,length(n));                                   % x[n/2] �ʱ�ȭ(0 ����)
for k=1:length(xtrun)
    xu(2*k-1)=xtrun(k);                                  % x[n/2] ����
end
    
subplot(3,2,1);                                          % 3�� 2�� ���� �׸� â�� 1�� â 
y=stem(n,xs);                                            % x[n+3] �׸�
%set(y,'Linewidth',1,'Markersize',2);
title('x[n+3]');                                         % �׸� ���� 
axis([ni nf -1 5]);                                      % x��� y���� �׸� ���� ���� 
subplot(3,2,2);                                          % 3�� 2�� ���� �׸� â�� 2�� â 
stem(n,xr);                                              %  x[-n] �׸�
title('x[-n]');                                          % �׸� ���� 
axis([ni nf -1 5]);                                      % x��� y���� �׸� ���� ���� 
subplot(3,2,3);                                          % 3�� 2�� ���� �׸� â�� 3�� â 
stem(n,xe);                                              % x_e[n] �׸� 
title('x_e[n]');                                         % �׸� ���� 
axis([ni nf -1 5]);                                      % x��� y���� �׸� ���� ���� 
subplot(3,2,4);                                          % 3�� 2�� ���� �׸� â�� 4�� â 
stem(n,xo);                                              % x_o[n]�׸�
title('x_o[n]');                                         % �׸� ���� 
axis([ni nf -2 2]);                                      % x��� y���� �׸� ���� ���� 
subplot(3,2,5);                                          % 3�� 2�� ���� �׸� â�� 5�� â 
stem(n,xd);                                              % x[2n] �׸�
title('x[2n]');                                          % �׸� ���� 
axis([ni nf -1 5]);                                      % x��� y���� �׸� ���� ���� 
subplot(3,2,6);                                          % 3�� 2�� ���� �׸� â�� 6�� â 
stem(n,xu);                                              % x[n/2] �׸�
title('x[n/2]');                                         % �׸� ���� 
axis([ni nf -1 5]);                                      % x��� y���� �׸� ���� ���� 