//Modifed by Thomas [T.K.O]
///////////////////////////////////////////////////////////////////////////////
// Static Objects
///////////////////////////////////////////////////////////////////////////////
[] execVM "addons\statusBar\statusBar.sqf";
/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */
 
if (!hasInterface || isServer) exitWith {};
 
// 53 NPCs
private _npcs = [
["Exile_Trader_AircraftCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_AircraftCustoms", "WhiteHead_16", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Aviator",[],["","","","","",""]], [1505.2, 17902.6, 551.381], [0.0978911, -0.995197, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Aircraft", "WhiteHead_01", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [1510.03, 17903.6, 551.381], [0.257211, -0.966355, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "GreekHead_A3_06", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [1539.71, 17888.8, 551.419], [-0.0775258, 0.99699, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_16", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","rhs_googles_yellow",[],["","","","","",""]], [1532.84, 17888.3, 551.419], [-0.0768935, 0.997039, 0], [0, 0, 1]],
["Exile_Trader_Food", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Food", "WhiteHead_11", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [1525.96, 17892.9, 551.419], [0.98887, 0.148782, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Hardware", "GreekHead_A3_09", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [1481.56, 17882.2, 551.387], [0.901531, 0.432715, 0], [0, 0, 1]],
["Exile_Trader_Office", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Office", "WhiteHead_16", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [1479.08, 17871.4, 551.406], [0.975345, 0.220687, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "AfricanHead_03", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [1483.57, 17889.3, 551.387], [0.167821, -0.985817, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_VehicleCustoms", "WhiteHead_14", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [1516.58, 17904.5, 551.381], [0.0829115, -0.996557, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Vehicle", "GreekHead_A3_08", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","rhs_googles_orange",[],["","","","","",""]], [1512.55, 17903.7, 551.381], [-0.0578575, -0.998325, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_WasteDump", "WhiteHead_08", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","rhs_googles_yellow",[],["","","","","",""]], [1537.37, 17869.1, 551.381], [-0.0809615, 0.996717, 0], [0, 0, 1]],
["Exile_Trader_RussianRoulette", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_RussianRoulette", "WhiteHead_10", [[],[],["hgun_Pistol_Signal_F","","","",[],[],""],["U_Marshal",[]],["V_Rangemaster_belt",[]],[],"H_Cap_marshal","G_Sport_Blackyellow",[],["","","","","",""]], [1481.86, 17873.4, 554.716], [0.977959, -0.208799, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_AircraftCustoms", "WhiteHead_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Tactical_Clear",[],["","","","","",""]], [5546.69, 1360.28, 247.494], [0.336145, -0.94181, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Aircraft", "GreekHead_A3_09", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","rhs_googles_orange",[],["","","","","",""]], [5538.24, 1357.2, 247.494], [-0.68229, -0.731082, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_13", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [5559.45, 1363.78, 247.475], [0.306752, -0.951789, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "GreekHead_A3_06", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","rhs_googles_orange",[],["","","","","",""]], [5569.38, 1358.65, 247.421], [-0.945884, -0.324505, 0], [0, 0, 1]],
["Exile_Trader_Food", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Food", "WhiteHead_06", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [5586.24, 1315.29, 247.48], [-0.92974, -0.368216, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Hardware", "WhiteHead_05", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [5583.3, 1304.49, 247.475], [-0.317533, 0.948247, 0], [0, 0, 1]],
["Exile_Trader_Office", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Office", "WhiteHead_12", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","",[],["","","","","",""]], [5582.51, 1325.97, 247.475], [-0.89853, 0.438912, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_07", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [5574.94, 1345.95, 247.445], [-0.921644, -0.388036, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_VehicleCustoms", "WhiteHead_07", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","rhs_googles_orange",[],["","","","","",""]], [5580.46, 1298.7, 247.475], [0.303058, -0.952972, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Vehicle", "WhiteHead_19", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","rhs_googles_orange",[],["","","","","",""]], [5559.94, 1298.14, 247.494], [-0.880479, 0.474086, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_WasteDump", "WhiteHead_21", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Black",[],["","","","","",""]], [5574.32, 1296.95, 247.494], [0.304109, -0.952637, 0], [0, 0, 1]],
["Exile_Trader_RussianRoulette", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_RussianRoulette", "WhiteHead_20", [[],[],["hgun_Pistol_Signal_F","","","",[],[],""],["U_Marshal",[]],["V_Rangemaster_belt",[]],[],"H_Cap_marshal","G_Sport_Blackyellow",[],["","","","","",""]], [5570.7, 1315.36, 247.494], [-0.998718, 0.0506247, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_AircraftCustoms", "WhiteHead_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","rhs_googles_yellow",[],["","","","","",""]], [15937.6, 9310.74, 208.641], [0.135384, 0.990793, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Aircraft", "WhiteHead_20", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]], [15935.5, 9317.54, 208.64], [0.942326, 0.334698, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_14", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [15933.5, 9308.78, 208.636], [-0.842017, -0.539451, 0], [0, 0, 1]],
["Exile_Trader_Food", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Food", "WhiteHead_17", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [15912.6, 9318.98, 208.653], [0.925988, 0.377552, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Hardware", "AfricanHead_03", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [15948.7, 9256.58, 206.188], [-0.178045, 0.984022, 0], [0, 0, 1]],
["Exile_Trader_Office", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Office", "WhiteHead_03", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]], [15842.2, 9342.7, 211.803], [0.0814098, -0.996681, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_21", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [15946.3, 9255.9, 209.698], [0.992198, 0.124674, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_VehicleCustoms", "WhiteHead_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [15931.8, 9326.96, 208.64], [0.887926, -0.459987, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Vehicle", "WhiteHead_18", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Tactical_Clear",[],["","","","","",""]], [15934, 9321.55, 208.64], [0.925694, 0.378274, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_WasteDump", "WhiteHead_01", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [15837.8, 9324.98, 211.084], [-0.998245, 0.0592267, 0], [0, 0, 1]],
["Exile_Trader_RussianRoulette", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_RussianRoulette", "WhiteHead_09", [[],[],["hgun_Pistol_Signal_F","","","",[],[],""],["U_Marshal",[]],["V_Rangemaster_belt",[]],[],"H_Cap_marshal","G_Sport_Blackyellow",[],["","","","","",""]], [15862, 9269.99, 208.813], [0.171341, 0.985212, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_14", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [15929.2, 9302.9, 208.636], [0.502817, 0.864393, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_AircraftCustoms", "WhiteHead_19", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Combat",[],["","","","","",""]], [18187, 19751.1, 400.022], [0.999298, -0.0374689, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Aircraft", "WhiteHead_08", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","rhs_googles_yellow",[],["","","","","",""]], [18186.7, 19739.4, 400.022], [0.921484, -0.388416, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_VehicleCustoms", "AfricanHead_02", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","rhs_googles_orange",[],["","","","","",""]], [18249.1, 19746.4, 400.022], [-0.998836, 0.0482277, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Vehicle", "GreekHead_A3_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Tactical_Clear",[],["","","","","",""]], [18249.5, 19738.9, 400.022], [-0.767045, -0.641593, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_WasteDump", "WhiteHead_04", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","rhs_googles_orange",[],["","","","","",""]], [15453.1, 18253.4, 310.101], [0.978873, 0.204471, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_AircraftCustoms", "WhiteHead_21", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Tactical_Clear",[],["","","","","",""]], [15454.4, 18268.5, 310.101], [0.844072, 0.536231, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", [], "Exile_Trader_SpecialOperations", "WhiteHead_01", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [15546.5, 18359.2, 310.218], [0.926153, -0.377147, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Aircraft", "AfricanHead_02", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]], [15451.7, 18282.3, 310.101], [0.865318, 0.501223, 0], [0, 0, 1]],
["Exile_Trader_Office", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Office", "WhiteHead_17", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [15553.9, 18346.2, 310.199], [-0.975708, -0.219075, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Vehicle", "WhiteHead_18", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Combat",[],["","","","","",""]], [15450.8, 18314.7, 310.101], [0.807372, -0.590043, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_VehicleCustoms", "WhiteHead_21", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [15451.1, 18321.2, 310.101], [0.756362, -0.654153, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Hardware", "AfricanHead_02", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [15559.8, 18322.4, 310.101], [-0.999588, -0.0287093, 0], [0, 0, 1]],
["Exile_Trader_Food", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Food", "WhiteHead_21", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","rhs_googles_orange",[],["","","","","",""]], [15559.8, 18329.2, 310.101], [-0.228518, -0.97354, 0], [0, 0, 1]],
["Exile_Trader_Equipment", [], "Exile_Trader_Equipment", "WhiteHead_11", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [15559.8, 18312.8, 310.101], [-0.92759, 0.3736, 0], [0, 0, 1]],
["Exile_Trader_Armory", [], "Exile_Trader_Armory", "WhiteHead_19", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [15559.8, 18319.4, 310.101], [-0.425666, -0.904881, 0], [0, 0, 1]],
["Exile_Trader_RussianRoulette", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_RussianRoulette", "WhiteHead_13", [[],[],["hgun_Pistol_Signal_F","","","",[],[],""],["U_Marshal",[]],["V_Rangemaster_belt",[]],[],"H_Cap_marshal","G_Sport_Blackyellow",[],["","","","","",""]], [15580.4, 18315.4, 310.098], [0.420491, -0.907297, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_WasteDump", "WhiteHead_13", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [18213.2, 19763.3, 400.02], [-0.0480141, -0.998847, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Aircraft", "WhiteHead_20", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","rhs_googles_yellow",[],["","","","","",""]], [6580.37, 2678.47, 247.574], [-0.312417, -0.949945, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["InBaseMoves_HandsBehindBack1"], "Exile_Trader_Aircraft", "WhiteHead_15", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]], [17598, 19542.3, 400.001], [-0.449764, 0.893148, 0], [0, 0, 1]]
];

{
private _logic = "Logic" createVehicleLocal [0, 0, 0];
private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
private _animations = _x select 1;
           
_logic setPosWorld (_x select 5);
_logic setVectorDirAndUp [_x select 6, _x select 7];
           
_trader setVariable ["BIS_enableRandomization", false];
_trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
_trader setVariable ["ExileAnimations", _animations];
_trader setVariable ["ExileTraderType", _x select 2];
_trader disableAI "ANIM";
_trader disableAI "MOVE";
_trader disableAI "FSM";
_trader disableAI "AUTOTARGET";
_trader disableAI "TARGET";
_trader disableAI "CHECKVISIBLE";
_trader allowDamage false;
_trader setFace (_x select 3);
_trader setUnitLoadOut (_x select 4);
_trader setPosWorld (_x select 5);
_trader setVectorDirAndUp [_x select 6, _x select 7];
_trader reveal _logic;
_trader attachTo [_logic, [0, 0, 0]];
_trader switchMove (_animations select 0);
_trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;

[] spawn compile preprocessFileLineNumbers "addons\welcome\welcome.sqf";
_bul = [] execVM "addons\blowout\module\blowout_client.sqf";
waitUntil {!isNull findDisplay 46 && !isNil 'ExileClientLoadedIn' && getPlayerUID player != ''};
uiSleep 120;
execVM "announcepay.sqf";

NR_fnc_SalvageVehicle = compileFinal preprocessFileLineNumbers "SalvageVehicle.sqf";
SM_CalculateVector = compileFinal preprocessFileLineNumbers "SM_VectorBuilding\SM_CalculateVector.sqf";
/**
 * TheForsakenSurvivors Community
 * www.theforsakensurvivors.co.uk
 * © 2016 TheForsakenSurvivors Community
 *
 * This work is property of TheForsakenSurvivors. You do not have permissions to use/edit/distribute any of this content
 * without written permission from the TheForsakenSurvivors community.
 */

if (!hasInterface || isServer) exitWith {};

private["_code","_function","_file"];
{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;
    _code = compileFinal (preprocessFileLineNumbers _file);
    missionNamespace setVariable [_function, _code];
}
forEach
[
    ["SM_Paint","TFS\Paint\SM_Paint.sqf"],
    ["SM_Paint_Finish","TFS\Paint\SM_Paint_Finish.sqf"],
    ["SM_Paint_Config","TFS\Paint\SM_Paint_Config.sqf"],
    ["SM_Paint_OnLBChange","TFS\Paint\SM_Paint_OnLBChange.sqf"],
    ["SM_Paint_ChangeMode","TFS\Paint\SM_Paint_ChangeMode.sqf"]
];

[] call SM_Paint_Config;
//Modifed by Thomas [T.K.O]