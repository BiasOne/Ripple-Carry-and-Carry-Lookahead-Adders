library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cgen2 is
  port (
    P, G 			: in  std_logic_vector(1 downto 0);
	 Cin  			: in std_logic;
	 cout    	: out std_logic_vector(1 downto 0);	 
    BP, BG  : out std_logic);
end cgen2;

architecture cgenBHV of cgen2 is

begin

BP <= P(1) and P(0);
BG <= G(1) or (P(1) and G(0));

Cout(0) <= G(0) or (P(0) and Cin);
Cout(1) <= G(1) or (P(1) and (G(0) or (P(0) and Cin)));  

end cgenBHV;