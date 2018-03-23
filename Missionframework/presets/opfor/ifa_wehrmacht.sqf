/*
Needed Mods:
- IFA3

Optional Mods:
- None
*/

// Enemy infantry classes
opfor_officer = "LIB_GER_hauptmann";									//Officer
opfor_squad_leader = "LIB_GER_unterofficer";							//Squad Leader
opfor_team_leader = "LIB_GER_smgunner";									//Team Leader
opfor_sentry = "LIB_GER_ober_rifleman";									//Rifleman (Lite)
opfor_rifleman = "LIB_GER_rifleman";									//Rifleman
opfor_rpg = "LIB_GER_AT_grenadier";										//Rifleman (LAT)
opfor_grenadier = "LIB_GER_AT_grenadier";								//Grenadier
opfor_machinegunner = "LIB_GER_stggunner";								//Autorifleman
opfor_heavygunner = "LIB_GER_mgunner";									//Heavy Gunner
opfor_marksman = "LIB_GER_scout_sniper";								//Marksman
opfor_sharpshooter = "LIB_GER_scout_sniper";							//Sharpshooter
opfor_sniper = "LIB_GER_scout_sniper";									//Sniper
opfor_at = "LIB_GER_AT_soldier";										//AT Specialist
opfor_aa = "LIB_GER_ober_rifleman";										//AA Specialist
opfor_medic = "LIB_GER_medic";											//Combat Life Saver
opfor_engineer = "LIB_GER_sapper";										//Engineer
opfor_paratrooper = "LNRD_Luftwaffe_stggunner";							//Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "LIB_SdKfz7";												//Ifrit
opfor_mrap_armed = "LIB_SdKfz251_FFV";									//Ifrit (HMG)
opfor_transport_helo = "LIB_Ju87";					//Mi-290 Taru (Bench)
opfor_transport_truck = "LIB_OpelBlitz_Tent_Y_Camo";					//Tempest Transport (Covered)
opfor_ammobox_transport = "LIB_OpelBlitz_Open_Y_Camo";					//Tempest Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "LIB_OpelBlitz_fuel";								//Tempest Fuel
opfor_ammo_truck = "LIB_OpelBlitz_ammo";								//Tempest Ammo
opfor_fuel_container = "LIB_AmmoCrates_NonInteractive_Large";			//Taru Fuel Pod
opfor_ammo_container = "LIB_AmmoCrates_NonInteractive_Large";			//Taru Ammo Pod
opfor_flag = "LIB_FlagCarrier_GER";										//CSAT Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
	"LIB_GER_ober_rifleman",											//Rifleman (Lite)
	"LIB_GER_ober_rifleman",											//Rifleman (Lite)
	"LIB_GER_rifleman",													//Rifleman
	"LIB_GER_rifleman",													//Rifleman
	"LIB_GER_AT_soldier",												//Rifleman (AT)
	"LIB_GER_stggunner",												//Autorifleman
	"LIB_GER_scout_sniper",												//Marksman
	"LIB_GER_medic",													//Medic
	"LIB_GER_sapper"													//Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders.
militia_vehicles = [
	"LIB_Kfz1_MG42_camo"												//Qilin (armed)
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz222_camo",												//BTR-K Kamysh
	"LIB_SdKfz234_1",													//BTR-K Kamysh
	"LIB_SdKfz_7_AA",													//ZSU-39 Tigris
	"LIB_StuG_III_G",													//T-100 Varsuk
	"LIB_PzKpfwIV_H"													//T-100 Varsuk
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz222_camo",												//MSE-3 Marid 
	"LIB_SdKfz234_1"													//BTR-K Kamysh
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_OpelBlitz_Open_Y_Camo",										//Tempest Transport
	"LIB_OpelBlitz_Tent_Y_Camo",										//Tempest Transport (Covered)
	"LIB_SdKfz222_camo",												//BTR-K Kamysh
	"LIB_SdKfz234_1",													//BTR-K Kamysh
	"LIB_SdKfz_7_AA",													//ZSU-39 Tigris
	"LIB_StuG_III_G",													//T-100 Varsuk
	"LIB_PzKpfwIV_H",													//T-100 Varsuk
	"LIB_FW190F8",														//Po-30 Orca (Armed)
	"LIB_Ju87",															//Po-30 Orca (Armed)
	"LIB_Ju87"															//Po-30 Orca (Armed)
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_OpelBlitz_Open_Y_Camo",										//Tempest Transport
	"LIB_SdKfz222_camo",												//MSE-3 Marid 
	"LIB_SdKfz234_1",													//BTR-K Kamysh
	"LIB_SdKfz_7_AA",													//ZSU-39 Tigris
	"LIB_FW190F8",														//Po-30 Orca (Armed)
	"LIB_Ju87"															//Po-30 Orca (Armed)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.	*/
opfor_troup_transports = [
	"LIB_OpelBlitz_Open_Y_Camo",										//Tempest Transport
	"LIB_OpelBlitz_Tent_Y_Camo",										//Tempest Transport (Covered)
	"LIB_SdKfz251_FFV",													//Ifrit (HMG)
	"LIB_SdKfz234_1"													//BTR-K Kamysh
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
	"LIB_Ju87",															//To-199 Neophron (CAS)
	"LIB_Ju87",															//To-199 Neophron (CAS)
	"LIB_FW190F8"														//To-201 Shikra
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
	"LIB_Ju87",															//To-199 Neophron (CAS)
	"LIB_FW190F8"														//To-201 Shikra
];
