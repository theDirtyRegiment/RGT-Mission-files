_time = _this;
_count = 1;

while {_count <= _time}
do
{
	hintSilent format ["%1 Jump!",_count];
	_count = _count + 1;
	uiSleep 1.25;

};
hintSilent "";
