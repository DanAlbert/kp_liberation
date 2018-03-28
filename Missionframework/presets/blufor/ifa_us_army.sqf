/*
Needed Mods:
- IFA3

Optional Mods:
- None
*/

/* - Support classnames.
Each of these should be unique, the same classnames for different purposes may
cause various unpredictable issues with player actions. Or not, just don't try!
*/

// This is the main FOB HQ building.
// Default is "Land_Cargo_HQ_V1_F".
FOB_typename = "Land_tent_east";

// This is the FOB as a container.
// Default is "B_Slingload_01_Cargo_F".
FOB_box_typename = "LIB_WeaponsBox_Big_SU";

// This is the FOB as a vehicle.
// Default is "B_Truck_01_box_F".
FOB_truck_typename = "LIB_US_GMC_Tent";

// This is the virtual arsenal as portable supply crates.
// Default is "B_supplyCrate_F".
Arsenal_typename = "B_supplyCrate_F";

// This is the mobile respawn (and medical) truck.
// Default is "B_Truck_01_medical_F".
Respawn_truck_typename = "LIB_US_GMC_Ambulance";

// This is Spartan 01, our flying mobile respawn. In the non-WW2 mission this is
// a helicopter. In our version it's a C47 Skytrain (perhaps later it will be a
// Waco glider).
//
// ACE allows us to load the FOB box on board and air drop it. Unfortunately
// there's a bug in the latest ACE (https://github.com/acemod/ACE3/issues/5399)
// that is causing airdropped equipment to fall through the ground. Until then,
// we'll just have to land the C47 and unload it manually.
// Default is "B_Heli_Transport_03_unarmed_F".
huron_typename = "LIB_C47_Skytrain";

// This defines the crew for vehicles.
// Default is "B_crew_F".
crewman_classname = "LIB_US_tank_crew";

// This defines the pilot for helicopters.
// Default is "B_Helipilot_F".
pilot_classname = "LIB_US_pilot";

// These are the little birds which spawn on the Freedom or at Chimera base.
// Default is "B_Heli_Light_01_F".
KP_liberation_little_bird_classname = "LIB_US_P39";

// These are the boats which spawn at the stern of the Freedom.
// Default is "B_Boat_Transport_01_F".
KP_liberation_boat_classname = "LIB_LCM3_Armed";

// These are the trucks which are used in the logistic convoy system.
// Default is "B_Truck_01_transport_F".
KP_liberation_truck_classname = "LIB_US_GMC_Open";

// A small storage area for resources.
// Default is "ContainmentArea_02_sand_F".
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";

// A large storage area for resources.
// Default is "ContainmentArea_01_sand_F".
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";

// The building defined to unlock FOB recycling functionality.
// Default is "Land_CarService_F".
KP_liberation_recycle_building = "Land_CarService_F";

// The building defined to unlock FOB air vehicle functionality.
// Default is "Land_Radar_Small_F".
KP_liberation_air_vehicle_building = "Land_Radar_Small_F";

// The helipad used to increase the GLOBAL rotary-wing cap.
// Default is "Land_HelipadSquare_F".
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";

// The hangar used to increase the GLOBAL fixed-wing cap.
// Default is "Land_TentHangar_V1_F".
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";

// This defines the supply crates, as in resources.
// Default is "CargoNet_01_box_F".
KP_liberation_supply_crate = "CargoNet_01_box_F";

// This defines the ammunition crates.
// Default is "B_CargoNet_01_ammo_F".
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";

// This defines the fuel crates.
// Default is "CargoNet_01_barrels_F".
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";

/* - Friendly classnames.
Each array below represents one of the 7 pages within the build menu.
Format: ["vehicle_classname",supplies,ammunition,fuel],
Example: ["B_APC_Tracked_01_AA_F",300,150,150],
The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150
ammunition and 150 fuel to build.
*/
infantry_units = [
	["LIB_US_AT_soldier",50,10,0],
	["LIB_US_FC_rifleman",15,0,0],
	["LIB_US_engineer",30,0,0],
	["LIB_US_grenadier",25,0,0],
	["LIB_US_medic",30,0,0],
	["LIB_US_mgunner",35,0,0],
	["LIB_US_pilot",10,0,0],
	["LIB_US_radioman",25,0,0],
	["LIB_US_rifleman",20,0,0],
	["LIB_US_smgunner",25,0,0],
	["LIB_US_sniper",70,5,0],
	["LIB_US_tank_crew",10,0,0]
];

light_vehicles = [
	["LIB_LCM3_Armed",200,80,75], // Armed transport boat.
	["LIB_LCVP",100,0,25], // Unarmed transport boat.
	["LIB_US6_BM13",600,1250,300], // Katyusha.
	["LIB_US_GMC_Open",125,0,75],
	["LIB_US_GMC_Tent",125,0,75],
	["LIB_US_Scout_M3_FFV",100,40,50],
	["LIB_US_Willys_MB",50,0,25],
	["LIB_Zis5v_61K",300,250,175] // ZIS-5V mounted 61K AA gun.
];

heavy_vehicles = [
	["LIB_M3A3_Stuart",300,100,150],
	["LIB_M4A3_75",500,350,225], // Sherman 75.
	["LIB_M4A3_76",500,350,225], // Sherman 76.
	["LIB_M4A3_76_HVSS",500,350,225], // Easy 8.
	["LIB_M4A4_FIREFLY",500,400,250], // Sherman Firefly.
	["LIB_M5A1_Stuart",300,250,175],
	["LIB_SU85",500,350,225], // Su85.
	["LIB_M8_Greyhound",200,75,125]
];

air_vehicles = [
	["LIB_C47_Skytrain",300,0,175], // C47.
	["LIB_CG4_WACO",200,0,100], // Waco CG-4 Glider.
	["LIB_P47",1000,800,400], // P47.
	["LIB_US_P39",500,400,350], // P39D.
	["LIB_US_P39_2",500,400,350] // P39Q.
];

static_vehicles = [
	["LIB_61k",80,100,0], // 61k AA gun.
	["LIB_M1919_M2",25,40,0], // M1919 MG.
	["LIB_M2_60",80,150,0], // M2 Mortar.
	["LIB_Maxim_M30_base",20,40,0], // Maxim gun.
	["LIB_Zis3",50,100,0] // ZIS-3 AT gun.
];

buildings = [
	["Land_Cargo_House_V1_F",0,0,0],
	["Land_Cargo_Patrol_V1_F",0,0,0],
	["Land_Cargo_Tower_V1_F",0,0,0],
	["LIB_FlagCarrier_USA",0,0,0],
	["Land_Medevac_house_V1_F",0,0,0],
	["Land_Medevac_HQ_V1_F",0,0,0],
	["CamoNet_BLUFOR_F",0,0,0],
	["CamoNet_BLUFOR_open_F",0,0,0],
	["CamoNet_BLUFOR_big_F",0,0,0],
	["Land_PortableLight_single_F",0,0,0],
	["Land_PortableLight_double_F",0,0,0],
	["Land_LampSolar_F",0,0,0],
	["Land_LampHalogen_F",0,0,0],
	["Land_LampStreet_small_F",0,0,0],
	["Land_LampAirport_F",0,0,0],
	["Land_CampingChair_V1_F",0,0,0],
	["Land_CampingChair_V2_F",0,0,0],
	["Land_CampingTable_F",0,0,0],
	["MapBoard_altis_F",0,0,0],
	["MapBoard_stratis_F",0,0,0],
	["MapBoard_seismic_F",0,0,0],
	["Land_Pallet_MilBoxes_F",0,0,0],
	["Land_PaperBox_open_empty_F",0,0,0],
	["Land_PaperBox_open_full_F",0,0,0],
	["Land_PaperBox_closed_F",0,0,0],
	["Land_DieselGroundPowerUnit_01_F",0,0,0],
	["Land_ToolTrolley_02_F",0,0,0],
	["Land_WeldingTrolley_01_F",0,0,0],
	["Land_Workbench_01_F",0,0,0],
	["Land_GasTank_01_blue_F",0,0,0],
	["Land_GasTank_01_khaki_F",0,0,0],
	["Land_GasTank_01_yellow_F",0,0,0],
	["Land_GasTank_02_F",0,0,0],
	["Land_BarrelWater_F",0,0,0],
	["Land_BarrelWater_grey_F",0,0,0],
	["Land_WaterBarrel_F",0,0,0],
	["Land_WaterTank_F",0,0,0],
	["Land_BagFence_Round_F",0,0,0],
	["Land_BagFence_Short_F",0,0,0],
	["Land_BagFence_Long_F",0,0,0],
	["Land_BagFence_Corner_F",0,0,0],
	["Land_BagFence_End_F",0,0,0],	
	["Land_BagBunker_Small_F",0,0,0],
	["Land_BagBunker_Large_F",0,0,0],
	["Land_BagBunker_Tower_F",0,0,0],
	["Land_HBarrier_1_F",0,0,0],
	["Land_HBarrier_3_F",0,0,0],
	["Land_HBarrier_5_F",0,0,0],
	["Land_HBarrier_Big_F",0,0,0],
	["Land_HBarrierWall4_F",0,0,0],
	["Land_HBarrierWall6_F",0,0,0],
	["Land_HBarrierWall_corner_F",0,0,0],
	["Land_HBarrierWall_corridor_F",0,0,0],
	["Land_HBarrierTower_F",0,0,0],
	["Land_CncBarrierMedium_F",0,0,0],
	["Land_CncBarrierMedium4_F",0,0,0],
	["Land_Concrete_SmallWall_4m_F",0,0,0],	
	["Land_Concrete_SmallWall_8m_F",0,0,0],
	["Land_CncShelter_F",0,0,0],
	["Land_CncWall1_F",0,0,0],	
	["Land_CncWall4_F",0,0,0],
	["Land_Sign_WarningMilitaryArea_F",0,0,0],
	["Land_Sign_WarningMilAreaSmall_F",0,0,0],
	["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
	["Land_Razorwire_F",0,0,0],
	["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
	[Arsenal_typename,100,200,0],
	[Respawn_truck_typename,200,0,100],
	[FOB_box_typename,300,500,0],
	[FOB_truck_typename,300,500,75],
	[KP_liberation_small_storage_building,0,0,0],
	[KP_liberation_large_storage_building,0,0,0],
	[KP_liberation_recycle_building,250,0,0],
	[KP_liberation_air_vehicle_building,1000,0,0],
	[KP_liberation_plane_slot_building,500,0,0],
	["ACE_medicalSupplyCrate_advanced",50,0,0],
	["ACE_Box_82mm_Mo_HE",50,40,0],
	["ACE_Box_82mm_Mo_Smoke",50,10,0],
	["ACE_Box_82mm_Mo_Illum",50,10,0],
	["ACE_Wheel",10,0,0],
	["ACE_Track",10,0,0],
	["LIB_US_GMC_Parm",325,0,75], // Repair
	["LIB_US_GMC_Fuel",125,0,275],
	["LIB_US_GMC_Ammo",125,200,75],
	["B_Slingload_01_Repair_F",275,0,0],								//Huron Repair
	["B_Slingload_01_Fuel_F",75,0,200],									//Huron Fuel
	["B_Slingload_01_Ammo_F",75,200,0]									//Huron Ammo
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad.
blufor_squad_inf_light = [
	"LIB_US_second_lieutenant",
	"LIB_US_FC_rifleman",
	"LIB_US_FC_rifleman",
	"LIB_US_AT_soldier",
	"LIB_US_grenadier",
	"LIB_US_smgunner",
	"LIB_US_smgunner",
	"LIB_US_sniper",
	"LIB_US_medic",
	"LIB_US_engineer"
];

// Heavy infantry squad.
blufor_squad_inf = [
	"LIB_US_second_lieutenant",
	"LIB_US_AT_soldier",
	"LIB_US_AT_soldier",
	"LIB_US_grenadier",
	"LIB_US_smgunner",
	"LIB_US_smgunner",
	"LIB_US_mgunner",
	"LIB_US_sniper",
	"LIB_US_medic",
	"LIB_US_engineer"
];

// AT specialists squad.
blufor_squad_at = [
	"LIB_US_second_lieutenant",
	"LIB_US_rifleman",
	"LIB_US_rifleman",
	"LIB_US_AT_soldier",
	"LIB_US_AT_soldier",
	"LIB_US_AT_soldier",
	"LIB_US_medic",
	"LIB_US_rifleman"
];

// Force recon squad.
blufor_squad_recon = [
	"LIB_US_Rangers_second_lieutenant",
	"LIB_US_Rangers_FC_rifleman",
	"LIB_US_Rangers_FC_rifleman",
	"LIB_US_Rangers_AT_soldier",
	"LIB_US_Rangers_sniper",
	"LIB_US_Rangers_sniper",
	"LIB_US_Rangers_sniper",
	"LIB_US_Rangers_sniper",
	"LIB_US_Rangers_medic",
	"LIB_US_Rangers_engineer"
];

// Paratroopers squad.
blufor_squad_para = [
	"LIB_US_101AB_NCO_para",
	"LIB_US_101AB_radioman_para",
	"LIB_US_101AB_FC_rifleman_para",
	"LIB_US_101AB_FC_rifleman_para",
	"LIB_US_101AB_FC_rifleman_para",
	"LIB_US_101AB_AT_soldier_para",
	"LIB_US_101AB_smgunner_para",
	"LIB_US_101AB_mgunner_para",
	"LIB_US_101AB_sniper_para",
	"LIB_US_101AB_medic_para"
];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles = [
	"LIB_M4A3_75", // Sherman 75.
	"LIB_M4A3_76", // Sherman 76.
	"LIB_M4A3_76_HVSS", // Easy 8.
	"LIB_M4A4_FIREFLY", // Sherman Firefly
	"LIB_M5A1_Stuart",
	"LIB_P47",
	"LIB_SU85", // Su85.
	"LIB_US_P39", // P39D.
	"LIB_US_P39_2" // P39Q.
];
