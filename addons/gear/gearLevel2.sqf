/*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*//*///*//*//*/

//	@file Version: 2.0
//	@file Name gearLevel2.sqf
//	@file Author: Mokey
//	@file Modified: Shinedwarf
//	@file Created: 4/21/2018 09:48

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

private ["_player"];

_player = _this;

_player setVariable ["gmoney",200];

{_player removeWeapon _x} forEach weapons _player;
{_player removeMagazine _x} forEach magazines _player;
removeBackpack _player;

_player addBackpack "B_Carryall_oli";
_player linkItem "NVGoggles";
_player addWeapon "Binocular";
_player addMagazines ["HandGrenade", 2];
_player addItem "FirstAidKit";
_player addMagazines ["9Rnd_45ACP_Mag", 2];
_player addWeapon "hgun_ACPC2_F";

switch (true) do
	{
		case (["_medic_", typeOf _player] call fn_findString != -1):
		{
			_player addItem "MediKit";
			_player addMagazines ["30Rnd_556x45_Stanag_Tracer_Green", 2];
			_player addMagazines ["1Rnd_Smoke_Grenade_shell", 2];
			_player addWeapon "arifle_TRG21_GL_F";
			_player addPrimaryWeaponItem "optic_Holosight_smg";
			_player addMagazines ["SmokeShell", 2];
			_player selectWeapon "arifle_TRG21_GL_F";
		};
		case (["_engineer_", typeOf _player] call fn_findString != -1):
		{
			_player addItem "ToolKit";
			_Player addItem "MineDetector";
			_player addMagazines ["30Rnd_556x45_Stanag_Tracer_Green", 2];
			_player addWeapon "arifle_TRG20_F";
			_player addPrimaryWeaponItem "optic_Holosight_smg";
			_player addPrimaryWeaponItem "muzzle_snds_M";
			_player addMagazines ["MiniGrenade", 2];

			_player selectWeapon "arifle_TRG20_F";
		};
		case (["_sniper_", typeOf _player] call fn_findString != -1):
		{
			_player addWeapon "Rangefinder";
			_player addMagazines ["30Rnd_556x45_Stanag_Tracer_Green", 2];
			_player addWeapon "arifle_TRG21_F";
			_player addPrimaryWeaponItem "optic_Holosight_smg";
			_player addPrimaryWeaponItem "muzzle_snds_M";
			_player addMagazines ["ClaymoreDirectionalMine_Remote_Mag", 1];
			_player selectWeapon "arifle_TRG21_F";
		};
		case (["_diver_", typeOf _player] call fn_findString != -1):
		{
			_player addVest "V_RebreatherIA";
			_player addGoggles "G_Diving";
			_player addMagazines ["30Rnd_556x45_Stanag_Tracer_Green", 2];
			_player addWeapon "arifle_SDAR_F";
			_player selectWeapon "arifle_SDAR_F";
		};
	};
