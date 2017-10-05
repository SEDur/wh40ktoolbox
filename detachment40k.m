classdef detachment40k
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        units
        commandPoints
        
    end
    properties (Dependent)
        totalPoints
        gearPoints
    end
    
    methods
        function value = get.totalPoints(obj)
            value = sum(obj.units.gear.points) + (obj.units.numModels * obj.units.pointspermodel);
        end
        function value = get.gearPoints(obj)
            value = sum(obj.units.gear.points);
        end
    end
    
end

