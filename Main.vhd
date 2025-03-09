--MUX display control
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
Entity lab4 is
Port(
	A   : IN std_logic_vector(3 downto 0);
	B   : IN std_logic_vector(3 downto 0);
	Sel : IN std_logic;
	DCHEX0  : OUT std_logic_vector(6 downto 0)
);
End lab4;
Architecture behave OF lab4 is
--Components
Component MUX2to1_4bit IS 
PORT(
	A    : IN std_logic;
	XINP : IN std_logic_vector(3 downto 0);
	YINP : IN std_logic_vector(3 downto 0);
	
	Y    : OUT std_logic_vector(3 downto 0)
);
END Component;
Component HEXcode IS
PORT(
	SwitchA: in std_logic;
	SwitchB: in std_logic;
	SwitchC: in std_logic;
	SwitchD: in std_logic;
	HEX0: OUT STD_LOGIC_VECTOR(6 downto 0)
);
End Component;
--Signals
Signal MUXOPT : std_logic_vector(3 downto 0);
Begin
MUX0 : MUX2to1_4bit PORT MAP(XINP => A,YINP => B,A => Sel,Y => MUXOPT);

HEXDISPLAY : HEXcode PORT MAP(SwitchA => MUXOPT(0),SwitchB => MUXOPT(1),SwitchC => MUXOPT(2),SwitchD => MUXOPT(3),HEX0 => DCHEX0
);
END Architecture behave;