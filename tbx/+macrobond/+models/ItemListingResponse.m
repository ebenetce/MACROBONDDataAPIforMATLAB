classdef ItemListingResponse < macrobond.JSONMapper
% ItemListingResponse The response of listing items that can be organized into directories
% 
% ItemListingResponse Properties:
%   title - The title of the directory - type: string
%   directories - The list of sub directories if any. - type: array of ItemListingResponse
%   items - The list of if any. - type: array of ItemInformation

% This file is automatically generated using OpenAPI
% Specification version: v1
% MATLAB Generator for OpenAPI version: 1.0.0


    % Class properties
    properties
        % title - The title of the directory - type: string
        title string { macrobond.JSONMapper.fieldName(title,"title") }
        % directories - The list of sub directories if any. - type: array of ItemListingResponse
        directories macrobond.models.ItemListingResponse { macrobond.JSONMapper.fieldName(directories,"directories"), macrobond.JSONMapper.JSONArray }
        % items - The list of if any. - type: array of ItemInformation
        items macrobond.models.ItemInformation { macrobond.JSONMapper.fieldName(items,"items"), macrobond.JSONMapper.JSONArray }
    end

    % Class methods
    methods
        % Constructor
        function obj = ItemListingResponse(s,inputs)
            % To allow proper nesting of object, derived objects must
            % call the JSONMapper constructor from their constructor. This 
            % also allows objects to be instantiated with Name-Value pairs
            % as inputs to set properties to specified values.
            arguments
                s { macrobond.JSONMapper.ConstructorArgument } = []
                inputs.?macrobond.models.ItemListingResponse
            end
            obj@macrobond.JSONMapper(s,inputs);
        end
    end %methods
end %class

