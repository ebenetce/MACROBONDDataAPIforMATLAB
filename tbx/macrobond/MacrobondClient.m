classdef MacrobondClient

    properties (Access = private)
        Scopes (:,1) string
    end

    properties (SetAccess = private)
        Metadata
        Search
        Series
        SeriesTree
        InHouseSeries        
    end

    methods
        
        function obj = MacrobondClient(nvp)

            arguments
                nvp.scopes (:,1) string = [...
                    "macrobond_web_api.read_mb",... % Read entities from the Macrobond database
                    "macrobond_web_api.search_mb",... % Search in the Macrobond database
                    "macrobond_web_api.read_structure",... % Read database structure like the database tree
                    "macrobond_web_api.write_ih",... % Create and update in-house time series
                    ];
            end
            obj.Scopes = nvp.scopes;

            obj.Metadata = macrobond.api.Metadata(scopes = obj.Scopes);
            obj.Search = macrobond.api.Search(scopes = obj.Scopes);
            obj.Series = macrobond.api.Series(scopes = obj.Scopes);
            obj.SeriesTree = macrobond.api.SeriesTree(scopes = obj.Scopes);
            obj.InHouseSeries = macrobond.api.InHouseSeries(scopes = obj.Scopes);

        end

    end

end