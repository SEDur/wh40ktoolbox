classdef gear40Koptions
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
    methods
        function obj = unit40koptions(unitString)
            obj.name = unitString;
            switch obj.name
                case 'Typhus'
                    obj = obj.Typhus;
                otherwise
                    error('This is not implemented yet');
            end
        end
        function obj = Typhus(obj)
            obj.numModels = 1;
            obj.gear = [gear40k(gear40koptions('theDestroyerHive'))...
                gear40k(gear40koptions('masterCraftedManreaper')) gear40k(gear40koptions('blightGrenade'))];
            obj.movement = 6;
            obj.pointsPerModel = 175;
            obj.balisticSkill = 2;
            obj.weaponSkill = 2;
            obj.type = 'HQ';
            obj.strength = 4;
            obj.toughness = 5;
            obj.woundsPerModel = 6;
            obj.attacks = 4;
            obj.leadership = 9;
            obj.save = 2;
            obj.power = 9;
        end
    end
end