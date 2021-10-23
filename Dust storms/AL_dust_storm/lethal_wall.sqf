
_wall_dest	= _this select 0;
_x_dev		= _this select 1;
_y_dev		= _this select 2;

_dir_blow_wall = wind; //hint str _x_dev;hint str _dir_blow_wall;

while {al_duststorm_on} do 
{
	//hint str _dir_blow_wall;
	_list_potential_objt = [];
	_list_potential_objt = nearestObjects [position _wall_dest,["LandVehicle","Man","Air"], 600];//	hint str _list_potential_objt;
	//_list_potential_objt = nearestObjects [position _wall_dest,["LandVehicle","Man","Air","TREE","SMALL TREE","BUSH"], 600];
	{
		if ((position _x) inArea [position _wall_dest, _x_dev/2,_y_dev/2,0,true]) then 
		{
			_x setvelocity [random (_dir_blow_wall select 0)*(5+(random 10)),random (_dir_blow_wall select 1)*(5+(random 10)),1+(random 5)];
			_x setdamage ((getDammage _x) + 0.1); sleep (0.1+(random 0.5));
		};
		sleep 0.1;		
	} forEach _list_potential_objt;
	sleep 8;
};