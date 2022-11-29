function [N,Profit] = OptimalN(ValueSuc,ValueFail,Fee,ProbSuc,ProbPosSuc,ProbPosFail)
Profit=0;
N_max = ProbSuc*ValueSuc/Fee;
    for i=0:N_max
        P = PubValue2(ValueSuc,ValueFail,Fee,ProbSuc,ProbPosSuc,ProbPosFail,i);
        if P>Profit
            Profit = P;
            N = i;
        end
    end
end
