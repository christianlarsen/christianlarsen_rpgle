**free

// This is a test for testing the LINTER in rpg

dcl-ds testDS qualified dim(10);
    a zoned(10) inz;
end-ds;

dsply 'Hello world!!';

for a = 1 to 20;
endfor;

if (a = 1);
    dsply 'One';
endif;

*inlr = '1';
return;

