library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cla8 is
  port (
    X, Y 			: in  std_logic_vector(7  downto 0);
	 Cin  			: in std_logic;
	 S    			: out std_logic_vector(7 downto 0);	 
    Cout, BP, BG  : out std_logic);
end cla8;



architecture cla8Struct of cla8 is
signal P, G, C : std_logic_vector(3 downto 0);

begin  -- BHV

	cla2_8_1 : entity work.cla2
        port map(	
				X    => x(1 downto 0),
				Y    => y(1 downto 0),
				Cin  => cin,
				S   => s(1 downto 0),
				BP => P(0),
				BG => G(0)
				);
						
	cla2_8_2 : entity work.cla2
        port map(	
				X    => x(3 downto 2),
				Y    => y(3 downto 2),
				Cin  => C(0),
				S    => s(3 downto 2),
				BP => P(1),
				BG => G(1)
				);
	cla2_8_3 : entity work.cla2
        port map(	
				X    => x(5 downto 4),
				Y    => y(5 downto 4),
				Cin  => C(1),
				S    => s(5 downto 4),
				BP => P(2),
				BG => G(2)
				);
	cla2_8_4 : entity work.cla2
        port map(	
				X    => x(7 downto 6),
				Y    => y(7 downto 6),
				Cin  => C(2),
				S    => s(7 downto 6),
				BP => P(3),
				BG => G(3),
				cout => c(3)
				);						
	
				
end cla8Struct;