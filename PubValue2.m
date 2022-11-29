function [n] = PubValue2(ValueSuc,ValueFail,Fee,ProbSuc,ProbPosSuc,ProbPosFail,N)
n = 0;
    for i=0:N
        ProbPosNegSuccess=nchoosek(N,i)*(ProbPosSuc^i)*((1-ProbPosSuc)^(N-i));
        ProbPosNegFail=nchoosek(N,i)*(ProbPosFail^i)*((1-ProbPosFail)^(N-i));
        ProbPosNeg = (ProbPosNegSuccess*ProbSuc) + (ProbPosNegFail*(1-ProbSuc));
        [~,Net] = PubValue1(ValueSuc,ValueFail,Fee,ProbSuc,ProbPosSuc,ProbPosFail,i,N-i);
        n = n + Net*ProbPosNeg;
    end
end
