question1(X1):-	write("Red percentage?"),nl,
				write("0. 0%"),nl,
				write("1. 50%"),nl,
				write("2. 100%"),nl,
				read(X1).

question2(X1):-	write("Green percentage?"),nl,
				write("0. 0%"),nl,
				write("1. 50%"),nl,
				write("2. 100%"),nl,
				read(X1).

question3(X1):-	write("Blue percentage?"),nl,
				write("0. 0%"),nl,
				write("1. 50%"),nl,
				write("2. 100%"),nl,
				read(X1).

color(black,0,0,0).
color(dark_blue,0,0,1).
color(blue,0,0,2).
color(green,0,1,0).
color(dark_cyan,0,1,1).
color(light_blue,0,1,2).
color(lime,0,2,0).
color(turquoise,0,2,1).
color(cyan,0,2,2).
color(dark_red,1,0,0).
color(dark_purple,1,0,1).
color(violet,1,0,2).
color(dark_yellow,1,1,0).
color(gray,1,1,1).
color(soft_blue,1,1,2).
color(toxic_green,1,2,0).
color(cyan_green,1,2,1).
color(light_cyan,1,2,2).
color(red,2,0,0).
color(magenta,2,0,1).
color(purple,2,0,2).
color(orange,2,1,0).
color(soft_red,2,1,1).
color(pink,2,1,2).
color(yellow,2,2,0).
color(light_yellow,2,2,1).
color(white,2,2,2).

col:-question1(X1), question2(X2), question3(X3), color(Name,X1,X2,X3), nl, write("The Color is: "), write(Name),nl. 