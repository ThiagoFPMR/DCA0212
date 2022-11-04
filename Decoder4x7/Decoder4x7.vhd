ENTITY Decoder4x7 IS
PORT(A3,A2,A1,A0,E: IN BIT;
	  Y0,Y1,Y2,Y3,Y4,Y5,Y6: OUT BIT);
END;

ARCHITECTURE behavior OF Decoder4x7 IS
SIGNAL out_aux : BIT_VECTOR(6 DOWNTO 0);
SIGNAL in_aux : BIT_VECTOR(4 DOWNTO 0);

BEGIN
in_aux <= E & A3 & A2 & A1 & A0;

WITH in_aux SELECT
out_aux <= "0111111" WHEN "10000",
			  "0000110" WHEN "10001",
			  "1011011" WHEN "10010",
			  "1001111" WHEN "10011",	
			  "1100110" WHEN "10100",
			  "1101101" WHEN "10101",
			  "1111101" WHEN "10110",
			  "0000111" WHEN "10111",
			  "1111111" WHEN "11000",
			  "1100111" WHEN "11001",
			  "0000000" WHEN OTHERS;
Y0 <= out_aux(0);
Y1 <= out_aux(1);
Y2 <= out_aux(2);
Y3 <= out_aux(3);
Y4 <= out_aux(4);
Y5 <= out_aux(5);
Y6 <= out_aux(6);
END;