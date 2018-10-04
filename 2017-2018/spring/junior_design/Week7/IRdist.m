%--------------------------------------------------------------------------
% Created: 3/6/2017 by Charlie Coleman, Michael Eagleton
% 
% Revision History: None
% 
% Purpose: Determine the distance measured by an IR sensor, takes a list of
% sensor values and returns estimated distances
% 
% Variables: 
%   S - Input list of sensor values
%   Dest - Output list of distance estimates
% 
%--------------------------------------------------------------------------
function Dest = IRdist(S)
    poly = [-3.176731378511806e-15, 2.091712957401613e-11, ...
            -5.465999955737650e-08, 7.102166974509156e-05, ...
            -0.053183993683240, 30.375986964834524];
    Dest = polyval(poly, S);
end