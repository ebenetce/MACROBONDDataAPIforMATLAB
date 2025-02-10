classdef SeriesWeekdays < macrobond.JSONEnum
% SeriesWeekdays   1 = Sunday (Represents a Sunday)  2 = Monday (Represents a Monday)  4 = Tuesday (Represents a Tuesday)  8 = Wednesday (Represents a Wednesday)  16 = Thursday (Represents a Thursday)  31 = SundayToThursday (Sunday to Thursday daymask, weekend on Friday and Saturday)  32 = Friday (Represents a Friday)  62 = MondayToFriday (Standard five day week)  64 = Saturday (Represents a Saturday)  79 = SaturdayToWednesday (Saturday to Wednesday daymask, weekend on Thursday and Friday)  94 = MondayToThursdayAndSaturday (Monday to Thursday and Saturday, weekend on Friday and Sunday)  95 = SaturdayToThursday (Saturday to Thursday, weekend on Friday)  127 = FullWeek (All days of the week)

    % This file is automatically generated using OpenAPI
    % Specification version: v1
    % MATLAB Generator for OpenAPI version: 1.0.0
    

    properties  (Constant)
        baseType = "int32"
    end

    enumeration 
        Sunday (int32(1))
        Monday (int32(2))
        Tuesday (int32(4))
        Wednesday (int32(8))
        Thursday (int32(16))
        SundayToThursday (int32(31))
        Friday (int32(32))
        MondayToFriday (int32(62))
        Saturday (int32(64))
        SaturdayToWednesday (int32(79))
        MondayToThursdayAndSaturday (int32(94))
        SaturdayToThursday (int32(95))
        FullWeek (int32(127))
    end

end %class

