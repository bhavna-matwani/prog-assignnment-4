function [Bool,Net] = PubValue1(ValuesSuc,ValueFail,Fee,ProbSuc,ProbPosSuc,ProbPosFail,NPos,NNeg)
ProbSucPosNeg = ProbSuccess(ProbSuc,ProbPosSuc,ProbPosFail,NPos,NNeg);
Net = ProbSucPosNeg*(ValuesSuc) - ((1-ProbSucPosNeg)*(ValueFail)) - (Fee*(NPos+NNeg));
if(Net>-Fee*(NPos+NNeg))
    Bool = true;

else
    Bool = false;
    Net = -Fee*(NPos+NNeg);
end
end
