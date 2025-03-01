classdef SeriesWithTimesOfChangeResponse < macrobond.JSONMapper
% SeriesWithTimesOfChangeResponse A time series with times of change
% 
% SeriesWithTimesOfChangeResponse Properties:
%   errorText - The error text if there was an error or not specified if there was no error - type: string
%   errorCode - Set if there was an error and not specified if there was no error  206 = PartialContent (The operation was successful, but only new revisions are included)  304 = NotModified (The item was not modified and is not included in the response)  403 = Forbidden (Access to the item was denied)  404 = NotFound (The item was not found)  500 = Other (There was an error and it is described in the error text) - type: ResponseErrorCode
%   metadata - The metadata of the entity or not specified if there was an error - type: macrobond.JSONMapperMap
%   values - The values of the series or not specified if there was an error. Missing values are represented by null. - type: array of double
%   dates - The dates of the series or not specified if there was an error - type: array of datetime
%   timesOfChange - The time each value was last modified - type: array of datetime

% This file is automatically generated using OpenAPI
% Specification version: v1
% MATLAB Generator for OpenAPI version: 1.0.0


    % Class properties
    properties
        % errorText - The error text if there was an error or not specified if there was no error - type: string
        errorText string { macrobond.JSONMapper.fieldName(errorText,"errorText")}
        % errorCode - Set if there was an error and not specified if there was no error  206 = PartialContent (The operation was successful, but only new revisions are included)  304 = NotModified (The item was not modified and is not included in the response)  403 = Forbidden (Access to the item was denied)  404 = NotFound (The item was not found)  500 = Other (There was an error and it is described in the error text) - type: ResponseErrorCode
        errorCode  { macrobond.JSONMapper.fieldName(errorCode,"errorCode")}
        % metadata - The metadata of the entity or not specified if there was an error - type: macrobond.JSONMapperMap
        metadata  { macrobond.JSONMapper.fieldName(metadata,"metadata")}
        % values - The values of the series or not specified if there was an error. Missing values are represented by null. - type: array of double
        values double { macrobond.JSONMapper.fieldName(values,"values"), macrobond.JSONMapper.JSONArray}
        % dates - The dates of the series or not specified if there was an error - type: array of datetime
        dates datetime { macrobond.JSONMapper.fieldName(dates,"dates"), macrobond.JSONMapper.JSONArray}
        % timesOfChange - The time each value was last modified - type: array of datetime
        timesOfChange datetime { macrobond.JSONMapper.fieldName(timesOfChange,"timesOfChange"), macrobond.JSONMapper.JSONArray}
    end

    % Class methods
    methods
        % Constructor
        function obj = SeriesWithTimesOfChangeResponse(s,inputs)
            % To allow proper nesting of object, derived objects must
            % call the initialize method from their constructor. This 
            % also allows objects to be instantiated with Name-Value pairs
            % as inputs to set properties to specified values.
            arguments
                s { macrobond.JSONMapper.ConstructorArgument } = []
                inputs.?macrobond.models.SeriesWithTimesOfChangeResponse
            end
            obj = obj.initialize(s,inputs);
        end
    end %methods
end %class

