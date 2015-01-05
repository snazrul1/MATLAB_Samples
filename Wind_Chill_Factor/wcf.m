%The WCF function calculates the Wind Chill Factor from temperature and
%velocity values.

function WCF=wcf(T,V)
WCF=35.7+0.6*T-35.7*(V^0.16)+0.43*T*(V^0.16);
end