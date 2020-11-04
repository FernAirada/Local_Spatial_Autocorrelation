clear
clc 
format short g
x = [4558
     13000
     13331
     15321
     5663] ;
%x_aungean = 4558  
%x_saimai = 13000 
%x_klong = 13331 
%x_tarang = 15321 
%x_samwa = 5663 
mean = mean(x)
sd = std(x,1) %population
z = zscore(x,1) %population
cm = [0 1 1 1 1
      1 0 1 0 0 
      1 1 0 1 0  
      1 0 1 0 1 
      1 0 0 1 1] ;
sum_cm = sum(cm,2) ;  %sum in row
w = cm./ sum_cm ;
I = z.*(w*z)