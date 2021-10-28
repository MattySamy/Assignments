clc
clear
A=[-7 5 -9; 2 -1 2; 1 -1 2];
B=[16 3 2 13;5 10 11 8;9 6 7 12;4 15 14 1];
C=[4 2 -3;7 -7 9;3 -5 6];
D=[6 3 2;2 12 -7;-1 6 2;-5 15 11];

%Program 1
3*A - 5*C;
 
7*A + 2*B;
%Error using  + 
%Matrix dimensions must agree.
%there's an error because the num of columns of matrix A (3) not equal the num
%of rows of matrix B (4) , the dimensions must agree.

C * A ;
C * D';

%Program 2
zeros(4);
%this function gives you a 4*4 matrix its entries are zeros only
zeros(5,4);
ones(4);
%this function gives you a 4*4 matrix its entries are ones only
ones(5,4);
size(D);
%this function gives you the size of matrix (num of rows and num of columns) 
zeros(size(D));
%this function gives you a D matrix its entries are zeros
diag([1 2 3 4]);
%this function gives you a matrix that has a diagonal of specified elements
eye(4);
%this function gives you a 4*4 matrix that has a diagonal of ones and rest
%of elements are zeros

%Program 3
[A,B];
%Error using horzcat
%Dimensions of matrices being concatenated are not consistent.
%there's an error here because the num of rows of first matrix A (3) not equal
%the num of rows of second matrix B (4) so no way to concat two matrices by rows (horzcat) 

[A;B];
%Error using vertcat
%Dimensions of matrices being concatenated are not consistent.
%there's an error here because the num of columns of first matrix A (3) not equal
%the num of columns of second matrix B (4) so no way to concat two matrices by columns (vertcat)

%Program 4
E=diag([5,5,5,5,5,5,5]);
E(:,8)=5;
%to print the result of these comand you should write E

%the ; (semi-colon) used to to store data in memory of ram without executing the commands
%and to modify the stored data if you want after writing all commands

%Donkey Way :-
 E=zeros(7,8);
 E(:,8)=[5,5,5,5,5,5,5];
 E([1 9 17 25 33 41 49])=5;
 
 %Program 5
 A(2,:);
 %this command prints the second row of matrix A
 A(:,2);
%this command prints the second column of matrix A