classdef SeriesRequest < macrobond.JSONMapper
% SeriesRequest A time series request
% 
% SeriesRequest Properties:
%   values - The values of the series. - type: array of double
%   dates - The dates of the series or not specified if deducted from metadata. When included, it must be the same length as the list of Values. - type: array of datetime
%   forecastFlags - An optional array of forecast flags. When included, it must be the same length as the list of Values. - type: array of logical
%   metadata - The metadata. - type: macrobond.JSONMapperMap
%   metadataBaseSeries - An optional existing series to inherit metadata from. - type: string

% This file is automatically generated using OpenAPI
% Specification version: v1
% MATLAB Generator for OpenAPI version: 1.0.0


    % Class properties
    properties
        % values - The values of the series. - type: array of double
        values double { macrobond.JSONMapper.fieldName(values,"values"), macrobond.JSONMapper.JSONArray}
        % dates - The dates of the series or not specified if deducted from metadata. When included, it must be the same length as the list of Values. - type: array of datetime
        dates datetime { macrobond.JSONMapper.fieldName(dates,"dates"), macrobond.JSONMapper.JSONArray}
        % forecastFlags - An optional array of forecast flags. When included, it must be the same length as the list of Values. - type: array of logical
        forecastFlags logical { macrobond.JSONMapper.fieldName(forecastFlags,"forecastFlags"), macrobond.JSONMapper.JSONArray}
        % metadata - The metadata. - type: macrobond.JSONMapperMap
        metadata  { macrobond.JSONMapper.fieldName(metadata,"metadata")}
        % metadataBaseSeries - An optional existing series to inherit metadata from. - type: string
        metadataBaseSeries string { macrobond.JSONMapper.fieldName(metadataBaseSeries,"metadataBaseSeries")}
    end

    % Class methods
    methods
        % Constructor
        function obj = SeriesRequest(s,inputs)
            % To allow proper nesting of object, derived objects must
            % call the initialize method from their constructor. This 
            % also allows objects to be instantiated with Name-Value pairs
            % as inputs to set properties to specified values.
            arguments
                s { macrobond.JSONMapper.ConstructorArgument } = []
                inputs.?macrobond.models.SeriesRequest
            end
            obj = obj.initialize(s,inputs);
        end
    end %methods
end %class

