LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_b4 IS
    PORT (
        p0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        p1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        sel : IN STD_LOGIC;
        ps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END mux_b4;

-- arch1
ARCHITECTURE comp1 OF mux_b4 IS
BEGIN
    ps <= p0 WHEN sel = '0' ELSE
        p1;
END ARCHITECTURE comp1;

-- arch2
ARCHITECTURE comp2 OF mux_b4 IS
BEGIN

    p_comp2: process(p0, p1, sel)
    begin
        if sel = '0' then
            ps <= p0;
        else
            ps <= p1;
        end if;
    end process;

END ARCHITECTURE comp2;