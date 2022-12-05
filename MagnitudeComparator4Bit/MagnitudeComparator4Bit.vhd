LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MagnitudeComparator4Bit IS
PORT (A3, A2, A1, A0, B3, B2, B1, B0 : IN BIT;
						  AgtB, AeqB, AltB : OUT BIT);
END;

ARCHITECTURE behav OF MagnitudeComparator4Bit IS

	SIGNAL out_gt0 : BIT;
	SIGNAL out_eq0 : BIT;
	SIGNAL out_lt0 : BIT;
	SIGNAL out_gt1 : BIT;
	SIGNAL out_eq1 : BIT;
	SIGNAL out_lt1 : BIT;
	SIGNAL out_gt2 : BIT;
	SIGNAL out_eq2 : BIT;
	SIGNAL out_lt2 : BIT;

	COMPONENT MagnitudeComparator1Bit IS
	PORT (A, B, in_gt, in_eq, in_lt : IN BIT;
	      out_gt, out_eq, out_lt : OUT BIT);
	END COMPONENT;

BEGIN

	C0 : MagnitudeComparator1Bit PORT MAP (A => A0, B => B0, in_gt => '0', in_eq => '1', in_lt => '0', out_gt => out_gt0, out_eq => out_eq0, out_lt => out_lt0);
	C1 : MagnitudeComparator1Bit PORT MAP (A => A1, B => B1, in_gt => out_gt0, in_eq => out_eq0, in_lt => out_lt0, out_gt => out_gt1, out_eq => out_eq1, out_lt => out_lt1);
	C2 : MagnitudeComparator1Bit PORT MAP (A => A2, B => B2, in_gt => out_gt1, in_eq => out_eq1, in_lt => out_lt1, out_gt => out_gt2, out_eq => out_eq2, out_lt => out_lt2);
	C3 : MagnitudeComparator1Bit PORT MAP (A => A3, B => B3, in_gt => out_gt2, in_eq => out_eq2, in_lt => out_lt2, out_gt => AgtB, out_eq => AeqB, out_lt => AltB);

END ARCHITECTURE behav;
