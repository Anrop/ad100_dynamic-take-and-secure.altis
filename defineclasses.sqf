#include "islandspecific.hpp"

private ["_attackerPrimary", "_attackerMagazine", "_attackerGrenade", "_attackerSmoke", "_attackerColorSmoke", "_attackerAttachments", "_attackerHelm", "_attackerUniform", "_attackerVest", "_attackerBackpack", "_attackerGlobalBackpack", "_attackerGlasses", "_defenderPrimary", "_defenderMagazine", "_defenderGrenade", "_defenderSmoke", "_defenderColorSmoke", "_defenderAttachments", "_defenderSpecOpsAttachments", "_defenderMGAttachments", "_defenderMarksmanSight", "_defenderMarksmanNVSight", "_defenderMarksmanAttachments", "_defenderUniform", "_defenderHelm", "_attackerHandgun", "_attackerHandgunMagazine", "_attackerHandgunSuppressor", "_attackerMarksmanPrimary", "_attackerMarksmanScope", "_attackerMarksmanNVScope", "_attackerMarksmanAttachments", "_defenderBackpack", "_defenderWeakPrimary", "_defenderWeakMagazine", "_defenderGL", "_defenderGLMagazines", "_defenderMG", "_defenderMGMagazines", "_defenderVest", "_defenderSmallVest", "_attackerGL", "_attackerGLMagazines", "_attackerLMG", "_attackerLMGMagazines", "_attackerMG", "_attackerMGMagazines", "_attackerSR", "_attackerSRMagazine", "_attackerSRScope", "_attackerSRNVScope", "_attackerSniperUniform", "_attackerSniperHat", "_attackerGLVest", "_attackerMedicVest", "_attackerMGVest", "_attackerSuppressor", "_attackerHat", "_attackerSMG", "_attackerSMGAttachments", "_attackerSMGMagazine", "_defenderSMG", "_defenderSMGAttachments", "_defenderSMGMagazine", "_defenderGlasses"];

// Default equipment, overridden below by mods where needed.

defenderNVG = "NVGoggles_OPFOR";
attackerNVG = "NVGoggles_OPFOR";

_attackerPrimary = "arifle_MX_F";
_attackerMagazine = "30Rnd_65x39_caseless_mag";
_attackerGrenade = "HandGrenade";
_attackerSmoke = "SmokeShell";
_attackerColorSmoke = "SmokeShellGreen";

_attackerHandgun = "hgun_P07_F";
_attackerHandgunMagazine = "16Rnd_9x21_Mag";
_attackerHandgunSuppressor = "muzzle_snds_L";

_attackerMarksmanPrimary = _attackerPrimary;
_attackerMarksmanScope = "optic_Hamr";
_attackerMarksmanNVScope = "optic_NVS";
_attackerMarksmanAttachments = [if (nightVision > 0) then {"optic_NVS"} else {"optic_Hamr"}, "acc_pointer_IR"];

_attackerSMG = "SMG_02_F";
_attackerSMGAttachments = ["optic_Holosight_smg", "muzzle_snds_L"];
_attackerSMGMagazine = "30Rnd_9x21_Mag";

_attackerGL = "arifle_MX_GL_F";
_attackerGLMagazines = [["1Rnd_HE_Grenade_shell", 10], ["1Rnd_SmokeGreen_Grenade_shell", 4], ["UGL_FlareWhite_F", if (nightVision == 0) then {8} else {0}], [_attackerHandgunMagazine, 3]];

_attackerLMG = "LMG_Mk200_F";
_attackerLMGMagazines = ["200Rnd_65x39_cased_Box", 3];

_attackerMG = "LMG_Zafir_F";
_attackerMGMagazines = ["150Rnd_762x54_Box", 3];

_attackerSR = "srifle_LRR_F";
_attackerSRMagazine = "7Rnd_408_Mag";
_attackerSRScope = "optic_SOS";
_attackerSRNVScope = "optic_NVS";
_attackerSniperUniform = "U_B_GhillieSuit";
_attackerSniperHat = "";

_attackerHAT = "launch_B_Titan_short_F";

_attackerSuppressor = "muzzle_snds_H";

_attackerHat = "H_Booniehat_mcamo";

_attackerAttachments = ["optic_Holosight", "acc_pointer_IR"];
if (nightVision == 0) then
{
	_attackerAttachments set [1, "acc_flashlight"];
};

_attackerHelm = "H_HelmetB";
_attackerUniform = "U_B_CombatUniform_mcam";
_attackerVest = "V_PlateCarrier3_rgr";
_attackerBackpack = "B_AssaultPack_mcamo";
_attackerGlobalBackpack = "";
_attackerGlasses = "G_Combat";

_defenderUniform = "U_BG_Guerilla2_1";
_defenderHelm = "H_ShemagOpen_khk";
_defenderGlasses = "";
_defenderPrimary = "arifle_Mk20_F";
_defenderMagazine = "30Rnd_556x45_Stanag";
_defenderGrenade = _attackerGrenade;
_defenderSmoke = "SmokeShell";
_defenderColorSmoke = "SmokeShellBlue";
_defenderWeakPrimary = "arifle_Mk20C_F";
_defenderWeakMagazine = "30Rnd_556x45_Stanag";

_defenderGL = "arifle_Mk20_GL_F";
_defenderGLMagazines = [["1Rnd_HE_Grenade_shell", 4 + 2 * defenderGearQuality], ["1Rnd_SmokeBlue_Grenade_shell", 3]];
if ((nightVision >= 0) && (nightVision < 2)) then
{
	_defenderGLMagazines = _defenderGLMagazines + [["UGL_FlareWhite_F", 5]];
};
_defenderMG = "arifle_MX_SW_Black_F";
_defenderMGMagazines = ["100Rnd_65x39_caseless_mag", 3 + defenderGearQuality];

_defenderVest = "V_BandollierB_blk";
_defenderSmallVest = _defenderVest;
_defenderBackpack = "B_FieldPack_Cbr";
_defenderAttachments = if (nightVision >= 0) then {["acc_flashlight"]} else {[]};

_defenderSpecOpsAttachments = _defenderAttachments + ["optic_ACO_grn"];

_defenderSMG = "SMG_02_F";
_defenderSMGAttachments = ["optic_ACO_grn_smg"];
_defenderSMGMagazine = "30Rnd_9x21_Mag";

_defenderMGAttachments = _defenderAttachments;
_defenderMarksmanSight = "Optic_ARCO";
_defenderMarksmanNVSight = "optic_NVS";
_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanSight];
if (nightVision > 1) then
{
	_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanNVSight];
};

if (defenderGearQuality > 0) then
{
	_defenderVest = "V_Chestrig_blk";
	
	_defenderSpecOpsAttachments = _defenderSpecOpsAttachments + ["muzzle_snds_M"];
	
	_defenderAttachments = _defenderAttachments + ["optic_ACO_grn"];
	
	_defenderSMGAttachments = ["optic_ACO_grn_smg", "muzzle_snds_L"];
};

// IDF equipment.
if (attackerFaction == 0) then
{
	_attackerHelm = "IDF_Helmet_CQB_Golani";
	_attackerUniform = "IDF_Uniform";
	_attackerBackpack = "B_AssaultPack_rgr";
	_attackerVest = "IDF_Vest";
	_attackerPrimary = "idf_x95_ng";
	_attackerAttachments = ["IDF_optic_Mars"];
	_attackerMarksmanPrimary = "idf_x95";
	_attackerMarksmanScope = "RH_ta31rco_2D";
	_attackerMarksmanAttachments = [if (nightVision > 0) then {"RH_anpvs4"} else {_attackerMarksmanScope}];
	_attackerSMGAttachments = ["IDF_optic_Mars", "muzzle_snds_L"];
	_attackerMagazine = "30Rnd_556x45_Stanag";
	_attackerGL = "arifle_TRG21_black_GL_F";
	_attackerSuppressor = "RH_fa556";
	_attackerSniperUniform = _attackerUniform;
	_attackerSRScope = "RH_leu_mk4";
	_attackerSRNVScope = "RH_anpvs10";
	if (nightVision > 0) then
	{
		_attackerSRScope = _attackerSRNVScope;
	};
	_attackerHat = "IDF_Cap_Golani";
	_attackerSniperHat = _attackerHat;
	_attackerHAT = "launch_I_Titan_short_F";
};

_attackerGLVest = _attackerVest;
_attackerMedicVest = _attackerVest;
_attackerMGVest = _attackerVest;

// US equipment
if (attackerFaction == 1 || attackerFaction == 2) then
{
	_attackerUniform = "rhs_uniform_cu_ocp";
	_attackerHelm = "rhsusf_ach_helmet_headset_ocp";
	_attackerVest = "rhsusf_iotv_ocp_Rifleman";
	_attackerBackpack = "rhsusf_assault_eagleaiii_ocp";
	_attackerGlobalBackpack = _attackerBackpack;
	_attackerHat = "rhs_Booniehat_ocp";
	
	_attackerGLVest = "rhsusf_iotv_ocp_Grenadier";
	_attackerMedicVest = "rhsusf_iotv_ocp_Medic";
	_attackerMGVest = "rhsusf_iotv_ocp_SAW";
	
	if (attackerFaction == 2) then
	{
		_attackerUniform = "rhs_uniform_cu_ucp";
		_attackerHelm = "rhsusf_ach_helmet_headset_ucp";
		_attackerVest = "rhsusf_iotv_ucp_Rifleman";
		_attackerBackpack = "rhsusf_assault_eagleaiii_ucp";
		_attackerGlobalBackpack = _attackerBackpack;
		_attackerHat = "rhs_Booniehat_ucp";
		
		_attackerGLVest = "rhsusf_iotv_ucp_Grenadier";
		_attackerMedicVest = "rhsusf_iotv_ucp_Medic";
		_attackerMGVest = "rhsusf_iotv_ucp_SAW";
	};
	
	_attackerPrimary = "rhs_weap_m4a1_grip";
	_attackerMagazine = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
	
	_attackerAttachments = ["rhsusf_acc_EOTECH", "rhsusf_acc_anpeq15"];
	if (nightVision == 0) then
	{
		_attackerAttachments set [1, "acc_flashlight"];
	};
	
	_attackerMarksmanPrimary = "rhs_weap_m4a1_grip";
	_attackerMarksmanScope = "rhsusf_acc_ACOG2";
	_attackerMarksmanAttachments = [_attackerMarksmanScope, "rhsusf_acc_anpeq15"];
	
	_attackerGL = "rhs_m4a1_m320";
	_attackerGLMagazines = [["rhs_mag_M441_HE", 10], ["rhs_mag_m715_Green", 4], ["rhs_mag_M585_white", if (nightVision == 0) then {10} else {0}], [_attackerHandgunMagazine, 3]];
	
	_attackerLMG = "rhs_weap_m249_pip";
	_attackerLMGMagazines = ["rhsusf_100Rnd_556x45_soft_pouch", 5];
	_attackerMG = "rhs_weap_m240B";
	_attackerMGMagazines = ["rhsusf_100Rnd_762x51", 4];
};

if (attackerFaction == 3) then
{
	attackerNVG = "rhsusf_ANPVS_14";
	if (nightVision > 1) then
	{
		attackerNVG = "rhsusf_ANPVS_15";
	};
	
	_attackerUniform = "rhs_uniform_vdv_emr";
	_attackerHelm = "rhs_6b28";	
	_attackerVest = "rhs_6b23_digi_6sh92_headset";
	_attackerBackpack = "rhs_rpg";
	_attackerGlobalBackpack = "rhs_sidor";
	_attackerHat = "rhs_fieldcap_digi";
	
	_attackerMedicVest = "rhs_6b23_digi_medic";
	_attackerMGVest = _attackerVest;
	
	_attackerPrimary = "rhs_weap_ak74m";
	_attackerMagazine = "rhs_30Rnd_545x39_AK";
	_attackerGrenade = "rhs_mag_rgd5";
	_attackerSmoke = "rhs_mag_rdg2_white";
	_attackerColorSmoke = _attackerSmoke;
	_attackerHandgun = "rhs_weap_pya";
	_attackerHandgunMagazine = "rhs_mag_9x19_17";
	_attackerHandgunSuppressor = "";
	_attackerSuppressor = "rhs_acc_tgpa";
	_attackerAttachments = ["rhs_acc_pkas"];
	
	_attackerGL = "rhs_weap_ak74m_gp25";
	_attackerGLMagazines = [["rhs_VOG25", 10], ["rhs_GRD40_Red", 4], ["rhs_VG40OP_white", if (nightVision == 0) then {10} else {0}], [_attackerHandgunMagazine, 3]];
	_attackerGLVest = "rhs_6b23_digi_6sh92_vog_headset";
	
	_attackerMarksmanPrimary = _attackerPrimary;
	_attackerMarksmanScope = "rhs_acc_pso1m2";
	_attackerMarksmanNVScope = "rhs_acc_1pn93_1";
	_attackerMarksmanAttachments = [if (nightVision > 0) then {"rhs_acc_1pn93_1"} else {"rhs_acc_pso1m2"}];
	
	_attackerLMG = "rhs_weap_rpk74m";
	_attackerLMGMagazines = ["rhs_45Rnd_545x39_AK", 6];
	_attackerMG = "rhs_weap_pkp";
	_attackerMGMagazines = ["rhs_100Rnd_762x54mmR", 3];
	
	_attackerSR = "rhs_weap_svdp";
	_attackerSRMagazine = "rhs_10Rnd_762x54mmR_7N1";
	_attackerSRScope = "rhs_acc_pso1m2";
	_attackerSRNVScope = "rhs_acc_1pn93_1";
	_attackerSniperUniform = _attackerUniform;
	_attackerSniperHat = _attackerHat;
};

if (defenderFaction == 0 || defenderFaction == 1) then
{
	_defenderPrimary = "hlc_rifle_ak47";
	_defenderMagazine = "hlc_30Rnd_762x39_b_ak";
	_defenderWeakPrimary = "hlc_rifle_ak74";
	_defenderWeakMagazine = "hlc_30Rnd_545x39_B_AK";
	_defenderGL = "hlc_rifle_aks74_GL";
	_defenderGLMagazines = [["hlc_VOG25_AK", 4 + 2 * defenderGearQuality], ["hlc_GRD_blue", 3]];
	_defenderMG = "hlc_rifle_rpk";
	_defenderMGMagazines = ["hlc_75Rnd_762x39_m_rpk", 5];
	_defenderAttachments = if (nightVision >= 0) then {["acc_flashlight"]} else {[]};
	_defenderMGAttachments = _defenderAttachments;
	_defenderSpecOpsAttachments = _defenderAttachments + ["hlc_optic_kobra"];
	_defenderMarksmanSight = "HLC_Optic_PSO1";
	_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanSight];
	if (nightVision > 1) then
	{
		_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanNVSight];
	};
	if (defenderGearQuality > 0) then
	{
		_defenderSpecOpsAttachments = _defenderSpecOpsAttachments + ["hlc_muzzle_762SUP_AK"];
		_defenderAttachments = _defenderAttachments + ["hlc_optic_kobra"];
	};
};

if (defenderFaction == 0) then
{
	_defenderUniform = "HAMAS_Uniform_rpk";
	_defenderHelm = "";
	_defenderGlasses = "HAMAS_balaclava";
};

if (defenderFaction == 2) then
{
	defenderNVG = "rhsusf_ANPVS_14";
	
	_defenderPrimary = "rhs_weap_ak74m";
	_defenderWeakPrimary = _defenderPrimary;
	_defenderMagazine = "rhs_30Rnd_545x39_AK";
	_defenderWeakMagazine = _defenderMagazine;
	_defenderGrenade = "rhs_mag_rgd5";
	_defenderSmoke = "rhs_mag_rdg2_white";
	_defenderColorSmoke = _defenderSmoke;
	_defenderAttachments = [];
	_defenderMGAttachments = [];
	_defenderSpecOpsAttachments = ["rhs_acc_pkas"];

	_defenderSpecOpsAttachments = ["rhs_acc_pkas"];
	
	_defenderMG = "rhs_weap_rpk74m";
	_defenderMGMagazines = ["rhs_45Rnd_545x39_AK", 6 + 2 * defenderGearQuality];
	
	_defenderGL = "rhs_weap_ak74m_gp25";
	_defenderGLMagazines = [["rhs_VOG25", 4 + 2 * defenderGearQuality], ["rhs_GRD40_Red", 3]];
	
	_defenderMarksmanSight = "rhs_acc_1p29";
	_defenderMarksmanNVSight = "rhs_acc_1pn93_1";
	_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanSight];
	
	if (nightVision > 1) then
	{
		_defenderMarksmanAttachments = _defenderAttachments + [_defenderMarksmanNVSight];
	};
	
	if ((nightVision >= 0) && (nightVision < 2)) then
	{
		_defenderGLMagazines = _defenderGLMagazines + [["rhs_VG40OP_white", 5]];
	};
	
	if (defenderGearQuality > 0) then
	{
		_defenderSpecOpsAttachments = _defenderSpecOpsAttachments + ["rhs_acc_tgpa"];
	};
};


aClasses =
[
	// 0:Description
	// 1:uniform
	// 2:vest
	// 3:backpack
	// 4:helmet
	// 5:eyewear
	// 6:weapons,
	// 7:magazines
	// 8:items
	// 9:weapon attachments
	// 10:Handgun Attachments
	// 11:init code
	// 12:condition
	[
		localize "STR_Marksman"
		,_attackerUniform
		,_attackerVest
		,""
		,_attackerHelm
		,_attackerGlasses
		,[_attackerMarksmanPrimary, _attackerHandgun]
		,[[_attackerMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1], [_attackerMarksmanScope, if (_attackerMarksmanScope in _attackerMarksmanAttachments) then {0} else {1}]]
		,_attackerMarksmanAttachments
		,[]
		,{}
		,"true"
	]

	,[
		localize "STR_Rifleman"
		,_attackerUniform
		,_attackerVest
		,_attackerGlobalBackpack
		,_attackerHelm
		,_attackerGlasses
		,[_attackerPrimary, _attackerHandgun]
		,[[_attackerMagazine, 9], [_attackerGrenade, 3], [_attackerSmoke, 2], [_attackerColorSmoke, 1], [_attackerHandgunMagazine, 4]]
		,[["FirstAidKit", 1]]
		,_attackerAttachments
		,if (_attackerHandgunSuppressor != "") then {[_attackerHandgunSuppressor]} else {[]}
		,{}
		,"true"
	]
	
	,[
		localize "STR_SuppressedRifleman"
		,_attackerUniform
		,_attackerVest
		,""
		,_attackerHelm
		,_attackerGlasses
		,[_attackerPrimary, _attackerHandgun]
		,[[_attackerMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 1], [_attackerColorSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1]]
		,_attackerAttachments + [_attackerSuppressor]
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_SuppressedSMG"
		,_attackerUniform
		,_attackerVest
		,""
		,_attackerHelm
		,_attackerGlasses
		,[_attackerSMG, _attackerHandgun]
		,[[_attackerSMGMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 1], [_attackerColorSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1]]
		,_attackerSMGAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_Medic"
		,_attackerUniform
		,_attackerMedicVest
		,_attackerGlobalBackpack
		,_attackerHelm
		,_attackerGlasses
		,[_attackerPrimary, _attackerHandgun]
		,[[_attackerMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 1], [_attackerColorSmoke, 2], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 7]]
		,_attackerAttachments
		,[]
		,{isMedic = true;}
		,"true"
	]
	
	,[
		localize "STR_RPG_HE"
		,_attackerUniform
		,_attackerVest
		,""
		,_attackerHelm
		,_attackerGlasses
		,[_attackerPrimary, "launch_RPG32_F", _attackerHandgun]
		,[["RPG32_HE_F", 1], [_attackerMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1]]
		,_attackerAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_AssistantRPG"
		,_attackerUniform
		,_attackerVest
		,_attackerBackpack
		,_attackerHelm
		,_attackerGlasses
		,[_attackerPrimary, _attackerHandgun]
		,[["RPG32_HE_F", 3], [_attackerMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 2], [_attackerHandgunMagazine, 3]]
		,[]
		,_attackerAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_Titan_HE"
		,_attackerUniform
		,_attackerVest
		,""
		,_attackerHelm
		,_attackerGlasses
		,[_attackerPrimary, _attackerHandgun, _attackerHAT]
		,[["Titan_AP", 1], [_attackerMagazine, 7], [_attackerSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[]
		,_attackerAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_AssistantTitan"
		,_attackerUniform
		,_attackerVest
		,_attackerBackpack
		,_attackerHelm
		,_attackerGlasses
		,[_attackerPrimary, _attackerHandgun]
		,[["Titan_AP", 2], [_attackerMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 2], [_attackerHandgunMagazine, 3]]
		,[]
		,_attackerAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_Grenadier"
		,_attackerUniform
		,_attackerGLVest
		,_attackerGlobalBackpack
		,_attackerHelm
		,_attackerGlasses
		,[_attackerGL, _attackerHandgun]
		,[[_attackerMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 1]] + _attackerGLMagazines
		,[["FirstAidKit", 1]]
		,_attackerAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_AutomaticRifleman"
		,_attackerUniform
		,_attackerMGVest
		,""
		,_attackerHelm
		,_attackerGlasses
		,[_attackerLMG, _attackerHandgun]
		,[_attackerLMGMagazines, [_attackerGrenade, 1], [_attackerSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1]]
		,_attackerAttachments
		,[]
		,{}
		,"attackerFaction > 0"
	]
	
	,[
		localize "STR_Machinegunner"
		,_attackerUniform
		,_attackerMGVest
		,""
		,_attackerHelm
		,_attackerGlasses
		,[_attackerMG, _attackerHandgun]
		,[_attackerMGMagazines, [_attackerGrenade, 0], [_attackerSmoke, 0], [_attackerHandgunMagazine, 2]]
		,[["FirstAidKit", 1]]
		,_attackerAttachments - [_attackerAttachments select 0]
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_Sniper"
		,_attackerSniperUniform
		,"V_BandollierB_rgr"
		,""
		,_attackerSniperHat
		,""
		,[_attackerSR, _attackerHandgun]
		,[[_attackerSRMagazine, if ((nightVision > 0) && (_attackerSRNVScope != _attackerSRScope)) then {10} else {11}], [_attackerSmoke, 1], [_attackerColorSmoke, 1], [_attackerHandgunMagazine, if ((nightVision > 0) && (_attackerSRNVScope != _attackerSRScope)) then {2} else {3}]]
		,[[_attackerSRScope, if (nightVision > 0 && _attackerSRNVScope != _attackerSRScope) then {1} else {0}]]
		,if (nightVision > 0) then {[_attackerSRNVScope]} else {[_attackerSRScope]}
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_Spotter"
		,_attackerSniperUniform
		,"V_BandollierB_rgr"
		,""
		,_attackerSniperHat
		,""
		,[_attackerPrimary, "Rangefinder", _attackerHandgun]
		,[[_attackerMagazine, 7], [_attackerGrenade, 1], [_attackerSmoke, 3], [_attackerColorSmoke, 1], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1]]
		,_attackerAttachments
		,if (_attackerHandgunSuppressor != "") then {[_attackerHandgunSuppressor]} else {[]}
		,{}
		,"true"
	]
	
	,[
		localize "STR_UAVOperator"
		,_attackerUniform
		,"V_BandollierB_rgr"
		,if (sidePlayer == WEST) then {"B_UAV_01_backpack_F"} else {"O_UAV_01_backpack_F"}
		,_attackerHat
		,""
		,[_attackerPrimary, if (sidePlayer == WEST) then {"B_UavTerminal"} else {"O_UavTerminal"}, _attackerHandgun]
		,[[_attackerMagazine, 7], [_attackerHandgunMagazine, 3]]
		,[["FirstAidKit", 1]]
		,_attackerAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_Diver"
		,"U_B_Wetsuit"
		,"V_RebreatherB"
		,""
		,""
		,"G_Diving"
		,["arifle_SDAR_F", _attackerHandgun]
		,[["30Rnd_556x45_Stanag", 5], ["20Rnd_556x45_UW_mag", 2], [_attackerGrenade, 2], [_attackerSmoke, 1], [_attackerHandgunMagazine, 2]]
		,[["FirstAidKit", 1]]
		,[]
		,if (_attackerHandgunSuppressor != "") then {[_attackerHandgunSuppressor]} else {[]}
		,{}
		,"true"
	]

];

dClasses =
[
	// 0:Description
	// 1:uniform
	// 2:vest
	// 3:backpack
	// 4:helmet
	// 5:eyewear
	// 6:weapons,
	// 7:magazines
	// 8:items
	// 9:weapon attachments
	// 10:Handgun Attachments
	// 11:code
	// 12:condition
	
	[
		localize "STR_SpecOps"
		,_defenderUniform
		,"V_TacVest_blk"
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderPrimary]
		,[[_defenderMagazine, 6 + defenderGearQuality], [_defenderGrenade, 1], [_defenderSmoke, 2]]
		,[]
		,_defenderSpecOpsAttachments
		,[]
		,{}
		,"true"
	]

	,[
		localize "STR_Rifleman"
		,_defenderUniform
		,_defenderVest
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderPrimary]
		,[[_defenderMagazine, 6 + 2 * defenderGearQuality], [_defenderGrenade, 3], [_defenderSmoke, 3]]
		,[]
		,_defenderAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_SpecOpsSMG"
		,_defenderUniform
		,"V_TacVest_blk"
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderSMG]
		,[[_defenderSMGMagazine, 6 + defenderGearQuality], [_defenderGrenade, 1], [_defenderSmoke, 2]]
		,[]
		,_defenderSMGAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_Medic"
		,_defenderUniform
		,if (defenderFaction < 2) then {"V_Chestrig_blk"} else {_defenderVest}
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderPrimary]
		,[[_defenderMagazine, 6 + defenderGearQuality], [_defenderGrenade, 1 + defenderGearQuality], [_defenderSmoke, 1 + defenderGearQuality], [_defenderColorSmoke, 1]]
		,[["FirstAidKit", 5 + 2 * defenderGearQuality]]
		,_defenderAttachments
		,[]
		,{isMedic = true;}
		,"true"
	]
	
	,[
		localize "STR_AutomaticRifleman"
		,_defenderUniform
		,if (defenderFaction == 0) then {"V_Chestrig_blk"} else {_defenderVest}
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderMG]
		,[_defenderMGMagazines, [_defenderGrenade, if (defenderFaction < 2) then {1} else {0}], [_defenderSmoke, defenderGearQuality + (if (defenderFaction < 2) then {1} else {0})]]
		,[]
		,_defenderMGAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_Grenadier"
		,_defenderUniform
		,_defenderVest
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderGL]
		,[[_defenderWeakMagazine, 6 + defenderGearQuality], [_defenderSmoke, defenderGearQuality]] + _defenderGLMagazines
		,[]
		,_defenderAttachments
		,[]
		,{}
		,"true"
	]
		
	,[
		localize "STR_RPG"
		,_defenderUniform
		,_defenderSmallVest
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderWeakPrimary, "launch_RPG32_F"]
		,[["RPG32_F", 1], [_defenderWeakMagazine, 6 + defenderGearQuality], [_defenderSmoke, 1 + defenderGearQuality]]
		,[]
		,_defenderAttachments
		,[]
		,{}
		,"true"
	]
	
	,[
		localize "STR_RPG_HE"
		,_defenderUniform
		,_defenderSmallVest
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderWeakPrimary, "launch_RPG32_F"]
		,[["RPG32_HE_F", 1], [_defenderWeakMagazine, 6 + defenderGearQuality], [_defenderSmoke, 1 + defenderGearQuality]]
		,[]
		,_defenderAttachments
		,[]
		,{}
		,"defenderGearQuality > 0"
	]
	
	,[
		localize "STR_AssistantRPG"
		,_defenderUniform
		,_defenderSmallVest
		,_defenderBackpack
		,_defenderHelm
		,_defenderGlasses
		,[_defenderPrimary]
		,[["RPG32_F", 1 + defenderGearQuality], ["RPG32_HE_F", 2], [_defenderMagazine, 6 + defenderGearQuality], [_defenderGrenade, 1], [_defenderSmoke, 1 + defenderGearQuality]]
		,[]
		,_defenderAttachments
		,[]
		,{}
		,"true"
	]

	,[
		localize "STR_Saboteur"
		,_defenderUniform
		,_defenderVest
		,""
		,_defenderHelm
		,_defenderGlasses
		,[_defenderPrimary]
		,[[_defenderMagazine, 6 + defenderGearQuality], ["APERSTripMine_Wire_Mag", 1 + defenderGearQuality], ["ClaymoreDirectionalMine_Remote_Mag", 1], [_defenderSmoke, 1]]
		,[]
		,_defenderAttachments
		,[]
		,{}
		,"true"
	]
	
];

if (defenderGearQuality > 0) then
{
	dClasses =
		[
			[
				localize "STR_Marksman"
				,_defenderUniform
				,_defenderSmallVest
				,""
				, _defenderHelm
				,_defenderGlasses
				,[_defenderWeakPrimary]
				,[[_defenderWeakMagazine, 5], [_defenderSmoke, 2]]
				,[[_defenderMarksmanSight, if (_defenderMarksmanSight in _defenderMarksmanAttachments) then {0} else {1}]]
				,_defenderMarksmanAttachments
				,[]
				,{}
				,"true"
			]
		]
		+
		dClasses
		+
		[
			[
				localize "STR_MortarGunner"
				,_defenderUniform
				,_defenderSmallVest
				,"O_Mortar_01_weapon_F"
				,_defenderHelm
				,_defenderGlasses
				,[_defenderWeakPrimary]
				,[[_defenderWeakMagazine, 6], [_defenderSmoke, 1]]
				,[]
				,[]
				,[]
				,{}
				,"true"
			]
	
			,[
				localize "STR_MortarAssistant"
				,_defenderUniform
				,_defenderSmallVest
				,"O_Mortar_01_support_F"
				,_defenderHelm
				,_defenderGlasses
				,[_defenderWeakPrimary, "Rangefinder"]
				,[[_defenderWeakMagazine, 6], [_defenderSmoke, 1], [_defenderColorSmoke, 1]]
				,[]
				,[]
				,[]
				,{}
				,"true"
			]
		];
};