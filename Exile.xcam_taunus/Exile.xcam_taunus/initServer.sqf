//Modifed by Thomas [T.K.O]
/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 109 Vehicles
private _vehicles = [
["Exile_ConcreteMixer", [12303.9, 4610.88, 167.86], [0.783691, -0.621151, 0], [0, 0, 1], true],
["Exile_ConcreteMixer", [1242.37, 14863.7, 377.2], [0.984918, 0.173019, 0], [0, 0, 1], true],
["Exile_ConcreteMixer", [14445.2, 19326.1, 305.08], [-0.722111, -0.691778, 0], [0, 0, 1], true],
["Exile_RussianRouletteChair", [1485.23, 17870.6, 554.714], [0.999735, 0.0230004, 0], [0, 0, 1], true],
["Exile_RussianRouletteChair", [1485.07, 17871.6, 554.714], [0.917775, 0.397101, 0], [0, 0, 1], true],
["Exile_RussianRouletteChair", [1484.2, 17872.4, 554.714], [-0.221219, 0.975224, 0], [0, 0, 1], true],
["Exile_RussianRouletteChair", [1484.6, 17869.5, 554.713], [0.139976, -0.990155, 0], [0, 0, 1], true],
["Exile_RussianRouletteChair", [1483.6, 17870.4, 554.712], [-0.993973, -0.109623, 0], [0, 0, 1], true],
["Exile_RussianRouletteChair", [1483.48, 17871.1, 554.714], [-0.993973, -0.109623, 0], [0, 0, 1], true]
];

{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];
    
    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;


