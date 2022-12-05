LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MagnitudeComparator1Bit IS
PORT (A, B, in_gt, in_eq, in_lt : IN BIT;
	      out_gt, out_eq, out_lt : OUT BIT);
END;

ARCHITECTURE behav OF MagnitudeComparator1Bit IS
BEGIN

	out_gt <= in_gt OR (in_eq AND A AND NOT B);
	out_lt <= in_lt OR (in_eq AND NOT A AND B);
	out_eq <= in_eq AND (A XNOR B);

END;