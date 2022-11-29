function [ProbSucPosNeg] = ProbSuccess(ProbSuc,ProbPosSuc,ProbPosFail,NPos,NNeg)
     ProbPosNegSuccess=(ProbPosSuc^NPos)*((1-ProbPosSuc)^NNeg);
     ProbPosNegFail=(ProbPosFail^NPos)*((1-ProbPosFail)^NNeg);
     ProbPosNeg=(ProbPosNegSuccess*ProbSuc)+(ProbPosNegFail*(1-ProbSuc));
     ProbSucPosNeg=ProbPosNegSuccess*ProbSuc/ProbPosNeg;
end
