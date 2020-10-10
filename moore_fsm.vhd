library ieee;
use ieee.std_logic_1164.all;

entity moore_fsm is
    port(
        clk, rst: in std_logic;
        entrada: in std_logic;
        saida: out std_logic
    );
end moore_fsm;

architecture fsm of moore_fsm is
    type tipo_estado is (S,s0,s1,s00,s11);
    signal estado: tipo_estado

    begin 
        --logica controle
        process(clk, rst)
            begin
                if rst = '1' then
                    estado <= s;
                elsif clk'event and clk = '1' then 
                    case estado is
                        when s => 
                            if entrada = '1' then 
                                        estado <=s0;
                            else 
                                estado <=s;
                            end if;
                        when s0 => 
                            if entrada = '0' then
                                estado <= s0;
                            else
                                estado <= s00;
                            end if;
                        
                            --tem mais estados

                    end case;
                end if;
            end process;
        
            --logica saida
         saida <= '1' when (estado = s0 or estado = s00) else '0';
    -- end fsm;
    
        -- para maquina de meely 

        --process (estado, entrada)
        --begin
        --    case estado is
        --        when s00 =>
        --            saida <= not (entrada);
        --        when s11 => 
        --            saida <= entrada;
        --        when others =>
        --            saida <= '0';
        --    end case;
        --end process;
        
        end fsm;
====================================

library ieee;
use ieee.std_logic_1164.all;

entity fsm is
    port(
        clk, rst: in std_logic;
        entrada: in std_logic;
        saida: out std_logic
    );
end fsm;

architecture bhv of fsm is
    type tipo_estado is (S,s0,s00);
    signal estado: tipo_estado;

    begin 
        --logica controle
        process(clk, rst)
            begin
                if rst = '1' then
                    estado <= s;
                elsif clk'event and clk = '1' then 
                    case estado is
                        when s => 
                            if entrada = '1' then 
                                        estado <=s0;
                            else 
                                estado <=s;
                            end if;
                        when s0 => 
                            if entrada = '1' then
                                estado <= s00;
                            else
                                estado <= s0;
                            end if;
								when s00 =>
									estado <= s00;
                        
                    end case;
                end if;
            end process;
        
            --logica saida
        process (estado, entrada)
        begin
            case estado is
                when s00 =>
                    saida <=  entrada;
                when s0 => 
                    saida <= entrada;
                when others =>
                    saida <= '0';
            end case;
        end process;
    end bhv;