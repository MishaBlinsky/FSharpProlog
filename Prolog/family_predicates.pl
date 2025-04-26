children(X):-parent(X,Y),print(Y),nl,fail.
mother(X,Y):-parent(Y,X),woman(X).
mother(X):-parent(Y,X),woman(Y),write(Y).
brother(X,Y):-man(Y),parent(Z,X),parent(Z,Y),man(Z),Y\=X,nl.
brothers(X):-brother(X,Y),print(Y),nl.
b_s(X,Y):-parent(Z,X),parent(Z,Y),X\=Y.
b_s(X):-b_s(X,Y),print(Y),nl.

%2
father(X,Y):-parent(X,Y),man(X).
father(X):-parent(Y,X),man(Y),write(Y).
wife(X,Y):-woman(X),man(Y),parent(X,Z),parent(Y,Z).
wife(X):-man(X),wife(Y,X),write(Y).

%3
grand_da(X,Y):-parent(X,Z),parent(Z,Y),woman(Y).
grand_da(X):-grand_da(X,Y),print(Y).
grand_pa_and_da(X,Y):-(grand_da(X,Y),man(X));(grand_da(Y,X),man(Y)).
aunt(X,Y):-b_s(X,Z),parent(Z,Y),woman(X).
aunt(X):-aunt(Y,X),print(Y),nl.

grand_da(X,Y):-parent(X,Z),parent(Z,Y),woman(Y).
grand_da(X):-parent(X,Z),parent(Z,Y),woman(Y),print(Y).
grand_pa_and_da(X,Y):-(parent(X,Z),parent(Z,Y),woman(Y),man(X));(parent(Y,Z),parent(Z,X),woman(X),man(Y)).
aunt(X,Y):-parent(P,X),parent(P,Z),parent(Z,Y),woman(X).
aunt(X):-parent(P,X),parent(G,P),parent(G,Y),woman(Y),print(Y),nl.
