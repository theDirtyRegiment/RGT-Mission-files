// by ALIAS
// SNOW STORM SCRIPT DEMO
// Tutorial: https://www.youtube.com/user/aliascartoons

/*
================================================================================================================================
>>>>> SNOW STORM Parameters =======================
================================================================================================================================
null = ["_snowfall","_duration_storm","_ambient_sounds_al","_breath_vapors","_snow_burst","_effect_on_objects","_vanilla_fog","_no_snow_indoor","_local_fog","_intensifywind","_unitsneeze"] execvm "AL_snowstorm\al_snow.sqf";

snowfall			- boolean, if true snowflakes made out of particles will be created
duration_storm		- number, life time of the SNOW STORM expressed in seconds
ambient_sounds_al	- seconds/number, a random number will be generated based on your input value and used to set the frequency for played ambient sounds
					- if is negative NO custom ambient sounds will be played
breath_vapors		- boolean, if true you will see breath vapors for all units, however if you have many units in your mission you should set this false to diminish the impact on frames
snow_burst			- seconds/number, if higher than 0 burst of snow will be generated at intervals based on your value
effect_on_objects	- boolean, if is true occasionally a random object will be pushed by the wind during the snow burst if the later is enabled
vanilla_fog			- boolean, vanilla fog will be managed by the script if true, otherwise the values you set in editor will be used 
local_fog			- boolean, if true particles will be used to create sort of waves of fog and snow
intensifywind		- boolean, if is true the wind will blow with force otherwise default value from Eden or other script will be used
unitsneeze			- boolean, if is true the at random units will sneeze/caugh and will shiver when snow burst occurs
*/

>>>>>>>>>> EXAMPLE
null = ["_snowfall","_duration_storm","_ambient_sounds_al","_breath_vapors","_snow_burst","_effect_on_objects","_vanilla_fog","_no_snow_indoor","_local_fog","_intensifywind","_unitsneeze"] execvm "AL_snowstorm\al_snow.sqf";
[true,3000,15,true,5,true,true,false,false,true] execvm "AL_snowstorm\al_snow.sqf";