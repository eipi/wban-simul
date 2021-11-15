%% Example Title
% Summary of example objective

%% Section 1 Title
% Setting Initial Conditions
gateway = Gateway(1, 1, 1, 1000);
body = Body(1, 1, 1);

% Initialize Sensors
leftKneeSensor = Sensor(BodyParts.LeftKnee)
rightKneeSensor = Sensor(BodyParts.RightKnee)
leftHandSensor = Sensor(BodyParts.LeftHand)
rightHandSensor = Sensor(BodyParts.RightHand)

body.Sensors = [leftKneeSensor, rightKneeSensor, leftHandSensor, rightHandSensor]


%% Section 2 Title
% Running Simulation
n = 100;
m = 1;

while (m < n)
    body.captureDataFromSensors();
end
