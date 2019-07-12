/*
	Custom configs for Taunus.
	Created by Thomas 
*/

// Making these configs below as strict as possible will help in reducing the number of attempts taken to find a valid position, and as a result, improve performance.

DMS_MinDistFromWestBorder			= 1500;
DMS_MinDistFromEastBorder			= 1500;
DMS_MinDistFromSouthBorder			= 1500;
DMS_MinDistFromNorthBorder			= 1500;

// Plenty of slopes
DMS_MinSurfaceNormal				= 0.8;


DMS_findSafePosBlacklist append

[

	[[5759,1973],1500]		// RainMainAir are blacklisted for Taunus by default.

];

DMS_StaticMissionTypes append 			[
                                            ["Schiessplatz",1],
                                            ["Sportschau",1],
                                            ["Kolbenberg",1],
	                                        ["Aussenposten",1],
											["Lagerhaus",1],
											["Nachschublager",1],
											["Hanfplantage",1],
											["WaffenFabrik",1],
											["Waffenlager",1]
];

// Add the "salt flats base" and "slums" to the "bases" to spawn on server startup. NOTE: "append" and "pushback" are NOT the same."saltflatsbase",
//DMS_BasesToImportOnServerStart append ["slums_objects"];
