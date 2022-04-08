LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux IS
    PORT (
        p0 : IN STD_LOGIC;
        p1 : IN STD_LOGIC;
        sel : IN STD_LOGIC;
        ps : OUT STD_LOGIC
    );
END mux;

ARCHITECTURE gate1 OF mux IS
BEGIN
    ps <= (p0 AND (NOT sel)) OR (p1 AND sel);
END ARCHITECTURE gate1;