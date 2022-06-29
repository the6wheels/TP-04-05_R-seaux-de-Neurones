%Creation of matrices for the following numbers 0 1 2 3 4 5 6 7 8 9





  x1 = [0 ; 0 ; 1 ; 0 ; 0 ;  
        0 ; 1 ; 1 ; 0 ; 0 ; 
	    0 ; 0 ; 1 ; 0 ; 0 ; 
	    0 ; 0 ; 1 ; 0 ; 0 ; 
	    0 ; 0 ; 1 ; 0 ; 0 ; 
        0 ; 0 ; 1 ; 0 ; 0 ;
        0 ; 0 ; 1 ; 0 ; 0 ;
	    ];
        

	  
   x2 = [0 ; 1 ; 1 ; 1 ; 0 ;  
         0 ; 1 ; 0 ; 1 ; 0 ; 
	     0 ; 0 ; 0 ; 1 ; 0 ; 
	     0 ; 1 ; 1 ; 1 ; 0 ; 
	     0 ; 1 ; 0 ; 0 ; 0 ; 
         0 ; 1 ; 0 ; 1 ; 0 ;
         0 ; 1 ; 1 ; 1 ; 0 ;
	     ];
        
  
   
   x3 = [0 ; 1 ; 1 ; 1 ; 0 ;  
         0 ; 1 ; 0 ; 1 ; 0 ; 
	     0 ; 0 ; 0 ; 1 ; 0 ; 
	     0 ; 1 ; 1 ; 1 ; 0 ; 
	     0 ; 0 ; 0 ; 1 ; 0 ; 
         0 ; 1 ; 0 ; 1 ; 0 ;
         0 ; 1 ; 1 ; 1 ; 0 ;
	     ];
   

   
     x4 = [0 ; 1 ; 0 ; 1 ; 0 ;  
           0 ; 1 ; 0 ; 1 ; 0 ; 
	       0 ; 1 ; 0 ; 1 ; 0 ; 
	       0 ; 1 ; 1 ; 1 ; 0 ; 
	       0 ; 0 ; 0 ; 1 ; 0 ; 
           0 ; 0 ; 0 ; 1 ; 0 ;
           0 ; 0 ; 0 ; 1 ; 0 ;
	       ];

   
     x5 = [0 ; 1 ; 1 ; 1 ; 0 ;  
           0 ; 1 ; 0 ; 0 ; 0 ; 
	       0 ; 1 ; 0 ; 0 ; 0 ; 
	       0 ; 1 ; 1 ; 1 ; 0 ; 
	       0 ; 0 ; 0 ; 1 ; 0 ; 
           0 ; 0 ; 0 ; 1 ; 0 ;
           0 ; 1 ; 1 ; 1 ; 0 ;
	       ];

     x6 = [0 ; 0 ; 1 ; 0 ; 0 ;  
           0 ; 1 ; 0 ; 1 ; 0 ; 
	       0 ; 1 ; 0 ; 0 ; 0 ; 
	       0 ; 1 ; 1 ; 0 ; 0 ; 
	       0 ; 1 ; 0 ; 1 ; 0 ; 
           0 ; 1 ; 0 ; 1 ; 0 ;
           0 ; 0 ; 1 ; 0 ; 0 ;
	       ];
    
    

   
     x7 = [0 ; 1 ; 1 ; 1 ; 0 ;  
           0 ; 0 ; 0 ; 1 ; 0 ; 
	       0 ; 0 ; 1 ; 0 ; 0 ; 
	       0 ; 0 ; 1 ; 0 ; 0 ; 
	       0 ; 0 ; 1 ; 0 ; 0 ; 
           0 ; 1; 0 ; 0 ; 0 ;
           0 ; 1 ; 0 ; 0 ; 0 ;
	       ];
    

   
    x8 = [0 ; 0 ; 1 ; 0 ; 0 ;  
          0 ; 1 ; 0 ; 1 ; 0 ; 
	      0 ; 1 ; 0 ; 1 ; 0 ; 
	      0 ; 0 ; 1; 0 ; 0 ; 
	      0 ; 1 ; 0 ; 1 ; 0 ; 
          0 ; 1 ; 0 ; 1 ; 0 ;
          0 ; 0 ; 1 ; 0 ; 0 ;
	      ];
    
    
    
   
    x9 = [0 ; 0 ; 1 ; 0 ; 0 ;  
          0 ; 1 ; 0 ; 1 ; 0 ; 
	      0 ; 1 ; 0 ; 1 ; 0 ; 
	      0 ; 0 ; 1 ; 1 ; 0 ; 
	      0 ; 0 ; 0 ; 1 ; 0 ; 
          0 ; 1 ; 0 ; 1 ; 0 ;
          0 ; 0 ; 1 ; 0 ; 0 ;
	      ];
      
      
        x10 = [0 ; 0 ; 1 ; 0 ; 0 ;  
        0 ; 1 ; 0 ; 1 ; 0 ; 
	    0 ; 1 ; 0 ; 1 ; 0 ; 
	    0 ; 1 ; 0 ; 1 ; 0 ; 
	    0 ; 1 ; 0 ; 1 ; 0 ; 
        0 ; 1 ; 0 ; 1 ; 0 ;
        0 ; 0 ; 1 ; 0 ; 0 ;
	    ];
        
    
      
      
      %% 
      
      
      t1 = 1;
      t2 = 2;
      t3 = 3;
      t4 = 4;
      t5 = 5;
      t6 = 6;
      t7 = 7;
      t8 = 8;
      t9 = 9;
      t10 = 0;
      
     
      
      
      
      
      
      
      %% 
      p=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10];
      t=[t1 t2 t3 t4 t5 t6 t7 t8 t9 t10];
      
    
      
      
      
      %% 
for i=1:10
digit = p(:,i);
figure,plotchar(digit);
end;
      

      
%% 
      net = newff(p,t,[3,15],{'logsig' 'tansig'},'traingdx');
      net.LW{2,1} = net.LW{2,1}*0.01;
      net.b{2} = net.b{2}*0.01;
      view(net);
      %% 
      
      
%    TRAINING THE NETWORK WITHOUT NOISE
%    ==================================
net.performFcn = 'sse';        % Sum-Squared Error performance function
net.trainParam.goal = 0.1;     % Sum-squared error goal.
net.trainParam.show = 20;      % Frequency of progress displays (in epochs).
net.trainParam.epochs = 5000;  % Maximum number of epochs to train.
net.trainParam.mc = 0.95;      % Momentum constant.
%    Training begins...please wait...
[net,tr] = train(net,p,t);
%    ...and finally finishes.

      %% 
[R,Q] = size(p);
%    TRAINING THE NETWORK WITH NOISE
%    ===============================
%    A copy of the network will now be made.  This copy will
%    be trained with noisy examples of letters of the alphabet.
netn = net;
netn.trainParam.goal = 0.6;    % Mean-squared error goal.
netn.trainParam.epochs = 300;  % Maximum number of epochs to train.
%    The network will be trained on 10 sets of noisy data.
%    Training begins...please wait...
T = [t t t t];
for pass = 1:10
  fprintf('Pass = %.0f\n',pass);
  P = [p, p, ...
      (p + randn(R,Q)*0.1), ...
      (p + randn(R,Q)*0.2)];
  [netn,tr] = train(netn,P,T);
  echo off
end
echo on
%    ...and finally finishes.
%    TRAINING THE SECOND NETWORK WITHOUT NOISE
%    =========================================
%    The second network is now retrained without noise to
%    insure that it correctly categorizes non-noizy letters.
netn.trainParam.goal = 0.1;    % Mean-squared error goal.
netn.trainParam.epochs = 500;  % Maximum number of epochs to train.
netn.trainParam.show = 5;       % Frequency of progress displays (in epochs).
%    Training begins...please wait...
P = p;
T = t;
[netn,tr] = train(netn,P,T);
%    ...and finally finishes

%% 

%      test sans bruit          %%%%%%%%%%%%%%%%%% 
i=4;
%le digit 4
noisy = P(:,i);%+randn(35,1) * 0.2;
figure,plotchar(noisy);
A2 = sim(net,noisy);
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);

%% 

i=1;
%le digit 1
noisy = P(:,i);%+randn(35,1) * 0.2;
figure,plotchar(noisy);
A2 = sim(net,noisy);
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);

%% 

i=2;
%le digit 2
noisy = P(:,i);%+randn(35,1) * 0.2;
figure,plotchar(noisy);
A2 = sim(net,noisy);
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);

%% 

i=3;
%le digit 3
noisy = P(:,i);%+randn(35,1) * 0.2;
figure,plotchar(noisy);
A2 = sim(net,noisy);
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);
%% 


%test De performance du RN
cpt=0;err=0;%straight
for i=1:10,%<----------------------
noisy = P(:,i);%+randn(35,1) * 0.2;<-------------------
figure,plotchar(noisy);
A2 = sim(net,noisy);%<--------------------------
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);
pause;
    if (answer==i) 
        cpt=cpt+1;close; 
        else   err=err+1;
    end;
end;
X = sprintf('nombre de reconnaissance correcte est : %d',cpt);
disp(X);
X = sprintf('nombre d erreur de reconnaissance est : %d',err);
disp(X);


%% 

%      test Avec bruit          %%%%%%%%%%%%%%%%%% 
i=4;
%le caractère 4
noisy = P(:,i)+randn(35,1) * 0.2;
figure,plotchar(noisy);
A2 = sim(netn,noisy);
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);

i=1;
%le digit 1
noisy = P(:,i)+randn(35,1) * 0.2;
figure,plotchar(noisy);
A2 = sim(netn,noisy);
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);

i=2;
%le digit 2
noisy = P(:,i)+randn(35,1) * 0.2;
figure,plotchar(noisy);
A2 = sim(netn,noisy);
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);

i=3;
%le digit 3
noisy = P(:,i)+randn(35,1) * 0.2;
figure,plotchar(noisy);
A2 = sim(netn,noisy);
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);

%% 

%test Des performance du RN
cpt=0;err=0;%straight
for i=1:10,%<----------------------
%les digit 1,2,3 to 0
noisy = P(:,i)+randn(35,1) * 0.2;%<-------------------
figure,plotchar(noisy);
A2 = sim(netn,noisy);%<--------------------------
A2 = compet(A2);
answer= find(compet(A2) == 1);
X = sprintf('c est  le  digit N° %d',i);
disp(X);
pause;
  if (answer==i) 
    cpt=cpt+1;close;
  else
      err=err+1;
      disp('l erreur est:');
      answer;
      figure;
      plotchar(P(:,answer));
      disp('au lieu du caractère');
      i;
      figure;
      plotchar(P(:,i));
      pause; 
  end;

end;

X = sprintf('nombre de reconnaissance correcte est : %d',cpt);
disp(X);
X = sprintf('nombre d erreur de reconnaissance est : %d',err);
disp(X);
