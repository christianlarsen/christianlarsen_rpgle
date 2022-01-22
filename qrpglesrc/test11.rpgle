**free

ctl-opt dftactgrp(*no) 
    bnddir('QC2LE');

dcl-pr printf int(10) extproc('printf');
    format pointer value options(*string);
    arg1 int(10) value options(*nopass);
    arg2 int(10) value options(*nopass);
end-pr;

dcl-s number zoned(5);
dcl-s othernumber zoned(5);
dcl-s result zoned(5);
dcl-ds qualified data;
    a zoned(1);
    b zoned(2);
end-ds;

// Main 
number = 2;
othernumber = 5;
result = number + othernumber;

printf('The result is %d ': result);


*inlr = '1';
return;