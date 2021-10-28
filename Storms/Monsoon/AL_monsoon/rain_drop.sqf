// by ALIAS

if (!hasInterface) exitWith {};
if (!al_monsoon_om) exitwith {};

poz_rain_mon = "Sign_Sphere200cm_F" createVehiclelocal [0,0,0];
poz_rain_mon setObjectTextureGlobal [0,"#(argb,8,8,3)color(1,0.6,0.1,0,ca)"];
onEachFrame {poz_rain_mon setposATL positionCameraToWorld [0,2,20]};

waitUntil {rain > 0.3};
_rain_drops_eff = "#particlesource" createVehicleLocal position player;
_rain_drops_eff setParticleCircle [10, [0, 0, 0]]; 
_rain_drops_eff setParticleRandom [0.2,[20,20,0],[0,0,0.5],13,0.5,[0,0,0,0.5],1,0]; 
_rain_drops_eff setParticleParams [["\A3\Data_F_Mark\ParticleEffects\Universal\waterBallonExplode_01",4,0,16,0],"","Billboard",1,0.4,[0,0,30],[0,0,1],0,18,7,0,[0.05,0.6],[[0.5,0.5,0.5,1],[0.5,0.5,0.5,1]],[1.5],1,0,"","",poz_rain_mon,0,true];  
_rain_drops_eff setDropInterval 0.002;
waitUntil {rain < 0.3};
deleteVehicle _rain_drops_eff;
waitUntil {!al_monsoon_om};
deleteVehicle poz_rain_mon;