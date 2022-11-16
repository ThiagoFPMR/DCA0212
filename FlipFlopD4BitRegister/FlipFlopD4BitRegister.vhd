LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FlipFlopD4BitRegister IS
PORT (I3, I2, I1, I0, clk : IN BIT;
			  Q3, Q2, Q1, Q0 : OUT BIT);
END;

ARCHITECTURE behav OF FlipFlopD4BitRegister IS

	COMPONENT FlipFlopD IS
	PORT (D, c : IN BIT;
				Q : OUT BIT);
	END COMPONENT;
	
BEGIN

	F0 : FlipFlopD PORT MAP(D => I0, c => clk, Q => Q0);
	F1 : FlipFlopD PORT MAP(D => I1, c => clk, Q => Q1);
	F2 : FlipFlopD PORT MAP(D => I2, c => clk, Q => Q2);
	F3 : FlipFlopD PORT MAP(D => I3, c => clk, Q => Q3);
	
END ARCHITECTURE behav;