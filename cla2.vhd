library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cla2 is

  port (
    X, Y 			: in  std_logic_vector(1 downto 0);
	 Cin  			: in std_logic;
	 S    			: out std_logic_vector(1 downto 0);	 
    Cout, BP, BG  : out std_logic);
end cla2;


architecture cla2BHV of cla2 is

begin 

	process(X, Y, Cin)

		variable P, G, C 	: std_logic_vector(1 downto 0);

		begin	
		
		P(0) 	:= X(0) or Y(0);
		P(1) 	:= X(1) or Y(1);

		G(0) 	:= X(0) and Y(0);
		G(1) 	:= X(1) and Y(1);

		C(0)	:= G(0) or (P(0) AND Cin);
		C(1)	:= G(1) or (P(1) and C(0));

		Cout 	<= C(1);
	
		BP <= P(0) and P(1);
		BG <= G(1) or (G(0) AND P(1));

		S(1) 	<= X(1) XOR y(1) XOR (C(0));
		
		end process;

S(0) 	<= X(0) XOR y(0) XOR (Cin);

end cla2BHV;