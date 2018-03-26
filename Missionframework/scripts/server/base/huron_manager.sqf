waitUntil { !isNil "GRLIB_all_fobs" };
waitUntil { !isNil "save_is_loaded" };

firstloop = true;
huron = objNull;
_savedhuron = objNull;

while { true } do {

	{
		if ( typeof _x == huron_typename ) then {
			_savedhuron = _x;
		};
	} foreach vehicles;

	if ( firstloop && !isNull _savedhuron ) then {
		huron = _savedhuron;
	} else {
		huron = huron_typename createVehicle (getposATL huronspawn);
		huron enableSimulationGlobal false;
		huron allowdamage false;
		huron setDir (getDir huronspawn);
		huron setPosATL (getposATL huronspawn);
		[huron, 20] call ace_cargo_fnc_setSpace;

		if (GRLIB_load_fob_in_huron == 1 && count GRLIB_all_fobs == 0) then {
			_fobbox = FOB_box_typename createVehicle (getposATL base_boxspawn);
			_fobbox setdir getDir base_boxspawn;
			_fobbox setposATL (getposATL base_boxspawn);

			_fobbox call F_setFobMass;
			[_fobbox, 3] call ace_cargo_fnc_setSize;
			[_fobbox, huron] call ace_cargo_fnc_loadItem;
		}
	};

	firstloop = false;

	huron AnimateDoor ["Door_rear_source", 1, true];
	publicVariable "huron";
	if(KP_liberation_clear_cargo) then {
		clearWeaponCargoGlobal huron;
		clearMagazineCargoGlobal huron;
		clearItemCargoGlobal huron;
		clearBackpackCargoGlobal huron;
	};
	huron setDamage 0;
	sleep 0.5;
	huron enableSimulationGlobal true;
	huron setDamage 0;
	huron setVariable ["ace_medical_medicClass", 1, true];
	sleep 1.5;

	huron setDamage 0;
	huron allowdamage true;

	if ( alive huron ) then {

		waitUntil {
			sleep 1;
			!alive huron;
		};
		stats_spartan_respawns = stats_spartan_respawns + 1;
		sleep 15;

	};

	if (huron distance startbase < 500) then {
		deletevehicle huron;
	};
	sleep 0.25;
};
