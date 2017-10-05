classdef unit40k
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        name
        numModels
        gear
        movement
        pointsPerModel
        balisticSkill
        weaponSkill
        type
        strength
        toughness
        woundsPerModel
        attacks
        leadership
        save
        power
    end
    properties (Dependent)
        totalPoints
        gearPoints
    end
    
    methods
        function obj = unit40k(unitOptions)
            obj.name = unitOptions.name;
            obj.numModels = unitOptions.numModels;
            obj.gear = unitOptions.gear;
            obj.movement = unitOptions.movement;
            obj.pointsPerModel = unitOptions.pointsPerModel;
            obj.balisticSkill = unitOptions.balisticSkill;
            obj.weaponSkill = unitOptions.weaponSkill;
            obj.type = unitOptions.type;
            obj.strength = unitOptions.strength;
            obj.toughness = unitOptions.toughness;
            obj.woundsPerModel = unitOptions.woundsPerModel;
            obj.attacks = unitOptions.attacks;
            obj.leadership = unitOptions.leadership;
            obj.save = unitOptions.save;
        end
        function value = get.totalPoints(obj)
            value = sum(obj.gear.points) + (obj.numModels * obj.pointspermodel);
        end
        function value = get.gearPoints(obj)
            value = sum(obj.gear.points);
        end
    end
    
end

