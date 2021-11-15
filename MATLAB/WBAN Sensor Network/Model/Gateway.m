classdef Gateway
    %GATEWAY Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        X
        Y
        Z
        PowerReserve
    end
    
    methods
        function obj = Gateway(x, y, z, powerReserve)
            %TRANSMITTER Construct an instance of this class
            %   Detailed explanation goes here
            obj.PowerReserve = powerReserve;
            obj.X = x;
            obj.Y = y;
            obj.Z = z;
        end

        function obj = send(obj, bytes, distance)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            obj.PowerReserve = obj.PowerReserve - (bytes * distance);
        end
    end
end

