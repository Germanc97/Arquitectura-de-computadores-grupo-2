ENTITY test_package IS
	GENERIC (N: POSITIVE := 8);
	PORT (x: IN BIT_VECTOR(N-1 DOWNTO 0);
		y: OUT BIT);
END test_package;

ARCHITECTURE structural OF test_package IS
	COMPONENT par_detector IS
		GENERIC (bits: POSITIVE);
		PORT (input: IN BIT_VECTOR(bits-1 DOWNTO 0);
			output: OUT BIT);
END COMPONENT;
BEGIN
	det: par_detector GENERIC MAP (bits => N)
	PORT MAP(input => x, output => y);
END structural;