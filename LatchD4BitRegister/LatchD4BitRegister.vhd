LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY LatchD4BitRegister IS
PORT (I3, I2, I1, I0, clk : IN BIT;
			  Q3, Q2, Q1, Q0 : OUT BIT);
END;

ARCHITECTURE behav OF LatchD4BitRegister IS

	COMPONENT LatchD IS
	PORT (D, c : IN BIT;
				Q : OUT BIT);
	END COMPONENT;
	
BEGIN

	L0 : LatchD PORT MAP(D => I0, c => clk, Q => Q0);
	L1 : LatchD PORT MAP(D => I1, c => clk, Q => Q1);
	L2 : LatchD PORT MAP(D => I2, c => clk, Q => Q2);
	L3 : LatchD PORT MAP(D => I3, c => clk, Q => Q3);
	
END ARCHITECTURE behav;