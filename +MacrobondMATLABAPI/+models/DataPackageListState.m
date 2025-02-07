classdef DataPackageListState < MacrobondMATLABAPI.JSONEnum
% DataPackageListState   0 = FullListing (A complete listing of all series. Make another request for full data at some point after timestamp in downloadFullListOnOrAfter.)  1 = UpToDate (The list contains all updates since the specified start date. Wait 15 minutes before making another request where timeStampForIfModifiedSince is used.)  2 = Incomplete (The list might not contain all updates. Wait one minute and then use the timeStampForIfModifiedSince in an a new request.)

    % This file is automatically generated using OpenAPI
    % Specification version: v1
    % MATLAB Generator for OpenAPI version: 1.0.0
    

    properties  (Constant)
        baseType = "int32"
    end

    enumeration 
        FullListing (int32(0))
        UpToDate (int32(1))
        Incomplete (int32(2))
    end

end %class

