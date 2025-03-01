classdef SeriesTreeNodeResponse < macrobond.JSONMapper
% SeriesTreeNodeResponse Information about a node in the series database tree
% 
% SeriesTreeNodeResponse Properties:
%   nodeType - The node type. Can be one of ''leaf'', ''branch'', ''branchref''. - type: string
%   title - The title of the tree node - type: string

% This file is automatically generated using OpenAPI
% Specification version: v1
% MATLAB Generator for OpenAPI version: 1.0.0


    % Class properties
    properties
        % nodeType - The node type. Can be one of ''leaf'', ''branch'', ''branchref''. - type: string
        nodeType string { macrobond.JSONMapper.fieldName(nodeType,"nodeType"), macrobond.JSONMapper.discriminator(nodeType,"branch","macrobond.models.SeriesTreeNodeBranch","branchref","macrobond.models.SeriesTreeNodeBranchRef","leaf","macrobond.models.SeriesTreeNodeLeaf")}
        % title - The title of the tree node - type: string
        title string { macrobond.JSONMapper.fieldName(title,"title")}
    end

    % Class methods
    methods
        % Constructor
        function obj = SeriesTreeNodeResponse(s,inputs)
            % To allow proper nesting of object, derived objects must
            % call the initialize method from their constructor. This 
            % also allows objects to be instantiated with Name-Value pairs
            % as inputs to set properties to specified values.
            arguments
                s { macrobond.JSONMapper.ConstructorArgument } = []
                inputs.?macrobond.models.SeriesTreeNodeResponse
            end
            obj = obj.initialize(s,inputs);
        end
    end %methods
end %class

