--MUX 2 to 1 (1 bit)

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Entity MUX2to1_1bit is
Port(
	Y    : OUT std_logic;
	
	A 	  : IN std_logic;
	INP0 : IN std_logic;
	INP1 : IN std_logic

);
End MUX2to1_1bit;

Architecture behavior OF MUX2to1_1bit is

Begin

	Y <= (NOT A AND INP0) OR (A AND INP1);

END Architecture behavior;