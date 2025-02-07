classdef SeriesToLowerFrequencyMethod < MacrobondMATLABAPI.JSONEnum
% SeriesToLowerFrequencyMethod   0 = Auto (Determine the method based on the series classification)  1 = Last (Use last observation in higher frequency when converting to lower frequency)  2 = First (Use first observation in higher frequency when converting to lower frequency)  3 = Flow (Use aggregate of observations in higher frequency when converting to lower frequency)  4 = PercentageChange (Use recalculated percentage changes when converting pp100 series to lower frequency)  5 = Highest (Use highest observation in higher frequency when converting to lower frequency)  6 = Lowest (Use lowest observation in higher frequency when converting to lower frequency)  7 = Average (Use average of observations in higher frequency when converting to lower frequency)  8 = ConditionalPercentageChange (Use recalculated percentage changes when converting pp100 series to lower frequency, but only if it actually has the pp100 attribute)

    % This file is automatically generated using OpenAPI
    % Specification version: v1
    % MATLAB Generator for OpenAPI version: 1.0.0
    

    properties  (Constant)
        baseType = "int32"
    end

    enumeration 
        Auto (int32(0))
        Last (int32(1))
        First (int32(2))
        Flow (int32(3))
        PercentageChange (int32(4))
        Highest (int32(5))
        Lowest (int32(6))
        Average (int32(7))
        ConditionalPercentageChange (int32(8))
    end

end %class

