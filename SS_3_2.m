close all;                                 % 모든 생성된 창을 닫음 
clear all;                                 % 열려있는 작업영역(workspace)을 모두 비움 
clc;                                       % 명령(command) 창을 비움

n=[-10:1:10];                              % 시간축 설정(n은 -10에서 10까지 1씩 증가)
xa=(n==0);                                 % n=0일 때 1, 즉 임펄스  
xb=stepfun(n,-5);                          % 계단 신호 
xc=rectpuls(n/10);                          % 사각 펄스 
xd=0.2*(n-3).*(n>=3);                      % 램프 신호
xe=sign(n);                                % 부호 함수
xf=sinc(n/3);                              % 싱크 함수 

subplot(3,2,1);                            % 3행 2열 분할 그림 창의 1번 창 
stem(n,xa);                                % 임펄스 신호  출력(n은 x축, xa는 y축)
axis([-10 10 -0.5 1.5]); grid on;          % x축과 y축 영역 설정, 그리드 표시
title('임펄스 신호 \delta[n]');             % 그림 제목(‘\xx’는 정해진 기호 표시) 
subplot(3,2,2);                            % 3행 2열 분할 그림 창의 2번 창  
stem(n,xb);                                % 계단 신호  출력
axis([-10 10 -0.5 1.5]); grid on;          % x축과 y축 영역 설정, 그리드 표시
title('계단 신호 u[n+5]');                  % 그림 제목
subplot(3,2,3);                            % 3행 2열 분할 그림 창의 3번 창  
stem(n,xc);                                % 사각 펄스 출력
axis([-10 10 -0.5 1.5]); grid on;          % x축과 y축 영역 설정, 그리드 표시
title('사각 펄스 rect[n/10]');              % 그림 제목
subplot(3,2,4);                            % 3행 2열 분할 그림 창의 4번 창  
stem(n,xd);                                % 램프 신호 출력
axis([-10 10 -0.5 1.5]); grid on;          % x축과 y축 영역 설정, 그리드 표시
title('램프 신호 0.2r[n-3]');               % 그림 제목
subplot(3,2,5);                            % 3행 2열 분할 그림 창의 5번 창  
stem(n,xe);                                % 부호 함수 출력
axis([-10 10 -1.5 1.5]); grid on;          % x축과 y축 영역 설정, 그리드 표시
title('부호 함수 sgn[n])');                % 그림 제목
xlabel('n');                               % x축 라벨
subplot(3,2,6);                            % 3행 2열 분할 그림 창의 6번 창  
stem(n,xf);                                % 싱크 함수 출력
axis([-10 10 -0.5 1.5]); grid on;          % x축과 y축 영역 설정, 그리드 표시
title('싱크 함수 sinc[n/3]');               % 그림 제목
xlabel('n');                               % x축 라벨 