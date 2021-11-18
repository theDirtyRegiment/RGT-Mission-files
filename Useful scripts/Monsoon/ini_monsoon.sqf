// by ALIAS
// STORM SCRIPT 
// Tutorial: https://www.youtube.com/user/aliascartoons


================================================================================================================================
>>>>> MONSOON Parameters =======================
================================================================================================================================

null = [direction_monsoon, duration_monsoon, effect_on_objects,debris,fog_rain,rain_drops,thunder,delay_thunder] execvm "AL_monsoon\al_monsoon.sqf";

direction_monsoon	- integer, from 0 to 360, direction towards the wind blows expressed in compass degrees
duration_monsoon	- integer, life time of the monsoon expressed in seconds
effect_on_objects	- boolean, if is true occasionally a random object will be thrown in the air

// >>>>>> new parameters
debris				- boolean, make it false if you dont want branches and stuff flying around
fog_rain				- boolean, if is true fog arounf players will be generated out of particles
rain_drops			- boolean, if is false not rain drops will be generated
thunder				- boolean, if is true you will hear thunders and see lights otherwise only vanilla thunder will be present... if ever
delay_thunder		- number, based on this number a delay will be generated between thunders