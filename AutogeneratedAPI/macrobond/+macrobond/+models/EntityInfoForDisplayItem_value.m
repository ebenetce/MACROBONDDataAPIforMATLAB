classdef EntityInfoForDisplayItem_value < macrobond.JSONMapper
% EntityInfoForDisplayItem_value The item value
% 
% EntityInfoForDisplayItem_value Properties:

% This file is automatically generated using OpenAPI
% Specification version: v1
% MATLAB Generator for OpenAPI version: 1.0.0

    % Class properties
    properties
    end

    % Class methods
    methods
        % Constructor
        function obj = EntityInfoForDisplayItem_value(s,inputs)
            % To allow proper nesting of object, derived objects must
            % call the JSONMapper constructor from their constructor. This 
            % also allows objects to be instantiated with Name-Value pairs
            % as inputs to set properties to specified values.
            arguments
                s { macrobond.JSONMapper.ConstructorArgument } = []
                inputs.?macrobond.models.EntityInfoForDisplayItem_value
            end
            obj@macrobond.JSONMapper(s,inputs);
        end

        

    end %methods
end %class

