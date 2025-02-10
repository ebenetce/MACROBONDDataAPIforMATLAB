classdef seriestree_getnodes_get_200_response_inner < macrobond.JSONMapper
% seriestree_getnodes_get_200_response_inner Information about a node in the series database tree
% 
% seriestree_getnodes_get_200_response_inner Properties:
%   nodeType - The node type. Can be one of ''leaf'', ''branch'', ''branchref''. - type: string
%   title - The title of the tree node - type: string
%   children - The children of this branch - type: array of SeriesTreeNodeBranch_allOf_children
%   path - The path of the sub tree - type: string

% This file is automatically generated using OpenAPI
% Specification version: v1
% MATLAB Generator for OpenAPI version: 1.0.0

    % Class properties
    properties
        % nodeType - The node type. Can be one of ''leaf'', ''branch'', ''branchref''. - type: string
        nodeType string { macrobond.JSONMapper.fieldName(nodeType,"nodeType") }
        % title - The title of the tree node - type: string
        title string { macrobond.JSONMapper.fieldName(title,"title") }
        % children - The children of this branch - type: array of SeriesTreeNodeBranch_allOf_children
        children macrobond.models.SeriesTreeNodeBranch_allOf_children { macrobond.JSONMapper.fieldName(children,"children"), macrobond.JSONMapper.JSONArray }
        % path - The path of the sub tree - type: string
        path string { macrobond.JSONMapper.fieldName(path,"path") }
    end

    % Class methods
    methods
        % Constructor
        function obj = seriestree_getnodes_get_200_response_inner(s,inputs)
            % To allow proper nesting of object, derived objects must
            % call the JSONMapper constructor from their constructor. This 
            % also allows objects to be instantiated with Name-Value pairs
            % as inputs to set properties to specified values.
            arguments
                s { macrobond.JSONMapper.ConstructorArgument } = []
                inputs.?macrobond.models.seriestree_getnodes_get_200_response_inner
            end
            obj@macrobond.JSONMapper(s,inputs);
        end

        function out = getSpecificClass(obj)
            % Create an instance of the more specific class
            switch (obj.nodeType)
                case "branch"
                    out = macrobond.models.SeriesTreeNodeBranch();
                case "branchref"
                    out = macrobond.models.SeriesTreeNodeBranchRef();
                case "leaf"
                    out = macrobond.models.SeriesTreeNodeLeaf();
                case "SeriesTreeNodeBranch"
                    out = macrobond.models.SeriesTreeNodeBranch();
                case "SeriesTreeNodeBranchRef"
                    out = macrobond.models.SeriesTreeNodeBranchRef();
                case "SeriesTreeNodeLeaf"
                    out = macrobond.models.SeriesTreeNodeLeaf();
            end
            % Copy only the relevant property values
            for p = string(properties(out))'
                out.(p) = obj.(p);
            end
        end

    end %methods
end %class

