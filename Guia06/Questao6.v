module Questao6(input X,
                input Y,
                input W,
                input Z,
                output S);
    not NOT_y(Y);
    not NOT_w(W);
    not NOT_z(Z);
    
    or OR_1(s1, X, Y, W);
    or OR_2(s2, X, Y ,NOT_w);
    or OR_3(s3, X, NOT_y, W);
    or OR_4(s4, X, NOT_y, NOT_w);
    or OR_5(s5, NOT_y, NOT_w, NOT_z);

    end END_1(S, s1, s2, s3, s4, s5);
endmodule