--MUX 2 to 1 (4 bit)

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY MUX2to1_4bit IS 
PORT(
	A    : IN std_logic;
	XINP : IN std_logic_vector(3 downto 0);
	YINP : IN std_logic_vector(3 downto 0);
	
	Y    : OUT std_logic_vector(3 downto 0)
);
END MUX2to1_4bit;

Architecture behave OF MUX2to1_4bit is

Component MUX2to1_1bit is
Port(
	Y    : OUT std_logic;
	
	A 	  : IN std_logic;
	INP0 : IN std_logic;
	INP1 : IN std_logic
);
End Component;

Begin

	MUX0 : MUX2to1_1bit PORT MAP(A => A, Y => Y(0), INP0 => XINP(0), INP1 => YINP(0));
	MUX1 : MUX2to1_1bit PORT MAP(A => A, Y => Y(1), INP0 => XINP(1), INP1 => YINP(1));
	MUX2 : MUX2to1_1bit PORT MAP(A => A, Y => Y(2), INP0 => XINP(2), INP1 => YINP(2));
	MUX3 : MUX2to1_1bit PORT MAP(A => A, Y => Y(3), INP0 => XINP(3), INP1 => YINP(3));

END Architecture behave;