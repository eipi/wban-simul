classdef Body
    %BODY Summary of this class goes here
    %   Detailed explanation goes here

    properties
        Height
        Breadth
        Scale
        Sensors
        Gateway
    end
    
    methods
        function obj = Body(height,breadth,scale)
            %BODY Construct an instance of this class
            %   Detailed explanation goes here
            obj.Height = height;
            obj.Breadth = breadth;
            obj.Scale = scale;
        end

        function captureCurrentEnergyState(obj)
            for sensor = obj.Sensors
                status = sprintf('Sensor %s has %d power remaining.', sensor.BodyPart, sensor.PowerReserve);
                disp(status);
               
                %obj.Gateway.send(8, 1);
            end
        end

        function distance = getDistanceFromGateway(bodyPart)
            distance = uint(bodyPart) * obj.Scale * obj.Breadth;
        end
    end
 
end

