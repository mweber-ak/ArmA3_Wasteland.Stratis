/*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*///*//*//*/

//@file Version: 1.1
//@file Name: gearCheck.sqf
//@file Author: Mokey
//@file Modified: soulkobk 12:46 PM 19/04/2018

/*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.
/*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*/


va_var_gearCheckInProgress = true;

_gearsEnabled = ["A3W_gearsEnabled"] call isConfigOn;
_gearLevel = player getVariable ["gear", 0];

sleep 1;
switch (_gearLevel) do
{
    case 1: { player call va_fnc_gearLevel01; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 2: { player call va_fnc_gearLevel02; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 3: { player call va_fnc_gearLevel03; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 4: { player call va_fnc_gearLevel04; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 5: { player call va_fnc_gearLevel05; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 6: { player call va_fnc_gearLevel06; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 7: { player call va_fnc_gearLevel07; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 8: { player call va_fnc_gearLevel08; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 9: { player call va_fnc_gearLevel09; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 10: { player call va_fnc_gearLevel10; sleep 5; hint format ["Congrats! Your Level %1 Gear Loaded.",_gearLevel]; };
    case 11: { player call va_fnc_gearLevel11; sleep 5; hint format ["Congrats! Your Prestige Level %1 Gear Loaded.",_gearLevel - 10]; };
    case 12: { player call va_fnc_gearLevel12; sleep 5; hint format ["Congrats! Your Prestige Level %1 Gear Loaded.",_gearLevel - 10]; };
    case 13: { player call va_fnc_gearLevel13; sleep 5; hint format ["Congrats! Your Prestige Level %1 Gear Loaded.",_gearLevel - 10]; };
    case 14: { player call va_fnc_gearLevel14; sleep 5; hint format ["Congrats! Your Prestige Level %1 Gear Loaded.",_gearLevel - 10]; };
    case 15: { player call va_fnc_gearLevel15; sleep 5; hint format ["Congrats! Your Prestige Level %1 Gear Loaded (Virtual Arsenal).",_gearLevel - 10]; waitUntil {(isNil "va_var_gearCheckInProgress")};}; // see \client\init.sqf arsenalOpened/arsenalClosed event handlers.
    case 16: { player call va_fnc_gearLevel16; sleep 5; hint format ["Congrats! Your Member Level %1 Gear Loaded (UXO Gaming Event).",_gearLevel - 10]; };
    default { hint "Check The Map Info To Learn More About Gear Levels Or Visit Discord"; };
};

va_var_gearCheckInProgress = nil;
