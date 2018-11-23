ENTITY par_detector IS
GENERIC (bits: POSITIVE);
PORT (input: IN BIT_VECTOR(bits-1 DOWNTO 0);
	output: OUT BIT);
END par_detector;

ARCHITECTURE behavior OF par_detector IS
BEGIN
	PROCESS(input)
	VARIABLE temp: BIT;
	BEGIN
		temp := '0';
		FOR i IN input 'RANGE LOOP
			temp := temp XOR input(i);
		END LOOP;
		output <= temp;
	END PROCESS;
END behavior;