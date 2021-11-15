classdef Sensor
    %SENSOR Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        BodyPart
        DistanceFactorFromGateway
        PowerReserve
        PowerConsumption
        PowerRecovery
    end
    
    methods
        function obj = Sensor(bodyPart,distanceFactorFromGateway,powerReserve,powerConsumption,powerRecovery)
            %SENSOR Construct an instance of this class
            %   Detailed explanation goes here
            obj.BodyPart = bodyPart;
            obj.DistanceFactorFromGateway = distanceFactorFromGateway;
            obj.PowerReserve = powerReserve;
            obj.PowerConsumption = powerConsumption;
            obj.PowerRecovery = powerRecovery;
        end

        function obj = sendData(obj, bytes)
            obj.PowerReserve = obj.PowerReserve + obj.PowerConsumption * bytes + obj.PowerRecovery;
        end
        
        function distanceFromGateway = evalutateStatus(obj, gateway)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            distanceFromGateway = sqrt((obj.X-gateway.X)^2 + (obj.Y-gateway.Y)^2 + (obj.Z-gateway.Z)^2);
        end

    end
end
