_vehicle = _this select 0;
_initPlayer = _this select 1;

_crewMembers = crew _vehicle;

{
	_jumpString = [name _initPlayer, " initiated a jump!"] joinString "";
	_jumpString remoteExec ["hintSilent", _x, false];
}forEach _crewMembers;
uiSleep 2;


{
	"Jump starting in 3!" remoteExec ["hintSilent", _x, false];
}forEach _crewMembers;
uiSleep 1;
{
	"Jump starting in 2!" remoteExec ["hintSilent", _x, false];
}forEach _crewMembers;
uiSleep 1;
{
	"Jump starting in 1!" remoteExec ["hintSilent", _x, false];
}forEach _crewMembers;
uiSleep 1;
{
	"" remoteExec ["hintSilent", _x, false];
}forEach _crewMembers;
uiSleep 1;


_crewMembers = crew _vehicle - [driver _vehicle, commander _vehicle, gunner _vehicle];
{
	remoteExec ["TG_fnc_StaticParadrop", _x, false];
	uiSleep 0.75;
}forEach _crewMembers;

_crewMembers = crew _vehicle;

uiSleep 3;
{
	"All OUT!" remoteExec ["hintSilent", _x, false];
}forEach _crewMembers;
uiSleep 2;
{
	"" remoteExec ["hintSilent", _x, false]
}forEach _crewMembers;