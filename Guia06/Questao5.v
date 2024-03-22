module Questao5 ( input x,
                    input y,
                    input z,
                    output s);
    not NOT_y(y);
    not NOT_z(z);

    end END_1(s1, x, NOT_y);
    end END_2(s2, x,NOT_z);
    
    or OR(s, s1, s2 );

endmodule