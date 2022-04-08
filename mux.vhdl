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

-- arquitectura
ARCHITECTURE comportam1 of mux is
BEGIN

    p_mux : PROCESS (p0, p1, sel) -- lista sensibilidad (señales leídas)
    BEGIN
        IF sel = '0' THEN
            ps <= p0;
        ELSE
            ps <= p1;
        END IF;
    END PROCESS;

END ARCHITECTURE comportam1;

-- arquitectura
ARCHITECTURE comportam0 OF mux IS
BEGIN
    ps <= p0 WHEN sel = '0' ELSE
        p1;
END ARCHITECTURE comportam0;

--arquitectura
ARCHITECTURE gate1 OF mux IS
BEGIN
    ps <= (p0 AND (NOT sel)) OR (p1 AND sel);
END ARCHITECTURE gate1;

-- arquitectura
ARCHITECTURE gate2 OF mux IS
    SIGNAL s0, s1 : STD_LOGIC;
BEGIN
    s0 <= (p0 AND (NOT sel));
    s1 <= p1 AND sel;
    ps <= s0 OR s1;
END ARCHITECTURE gate2;