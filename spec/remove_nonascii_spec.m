function remove_nonascii_spec

a = 'Some non-umlaut';
b = 'Some ümlöüt';
c.x{1}.a = 'Some Ämlaut';
d.i = 'kg/m³';

A = remove_nonascii(a);
B = remove_nonascii(b);
C = remove_nonascii(c);
D = remove_nonascii(d);

expect(strcmp(A, 'Some non-umlaut'));
expect(strcmp(B, 'Some uemloeuet'));
expect(strcmp(C.x{1}.a, 'Some Aemlaut'));
expect(strcmp(D.i, 'kg/m^3'));

end
