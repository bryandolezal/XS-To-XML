
/**
 * Return whether the armyID is valid. 
 * @param int armyID
 * @returns bool
 */
bool kbArmyGetIsIDValid(int armyID);


/**
 * Creates a army with the given name. 
 * @param string name, bool exclusiveUnits
 * @returns int
 */
int kbArmyCreate(string name, bool exclusiveUnits);


/**
 * Destroys the given army. 
 * @param int armyID
 * @returns void
 */
void kbArmyDestroy(int armyID);


/**
 * Returns the number of armies.
 * @param 
 * @returns int
 */
int kbArmyGetNumber();


/**
 * Returns the index-th army ID. 
 * @param int index
 * @returns int
 */
int kbArmyGetIDByIndex(int index);


/**
 * Returns the ID of the given army. 
 * @param string name
 * @returns int
 */
int kbArmyGetID(string name);


/**
 * Returns the name of the given army. 
 * @param int armyID
 * @returns string
 */
string kbArmyGetName(int armyID);


/**
 * Returns the number of units in the given army. 
 * @param int armyID
 * @returns int
 */
int kbArmyGetNumberUnits(int armyID);


/**
 * Returns the appropriate unitID from the given army. 
 * @param int armyID, int index
 * @returns int
 */
int kbArmyGetUnitID(int armyID, int index);


/**
 * Adds the unitID to the given army. 
 * @param int armyID, int unitID
 * @returns void
 */
void kbArmyAddUnit(int armyID, int unitID);


/**
 * Removes the unitID from the given army. 
 * @param int armyID, int unitID
 * @returns void
 */
void kbArmyRemoveUnit(int armyID, int unitID);


/**
 * Removes the unitIndex-th unit from the given army. 
 * @param int armyID, int index
 * @returns void
 */
void kbArmyRemoveUnitByIndex(int armyID, int index);


/**
 * Removes all units from the given army. 
 * @param int armyID
 * @returns void
 */
void kbArmyRemoveUnits(int armyID);


/**
 * Returns the creation time for the given army. 
 * @param int armyID
 * @returns int
 */
int kbArmyGetCreationTime(int armyID);


/**
 * Returns the creation time for the given army. 
 * @param int armyID
 * @returns int
 */
int kbArmyGetMembershipTime(int armyID);


/**
 * Returns the vector location for the given army. 
 * @param int armyID
 * @returns vector
 */
vector kbArmyGetLocation(int armyID);


/**
 * Returns the number of units within range of the given point in the given army. 
 * @param int armyID, vector location, float range
 * @returns int
 */
int kbArmyGetNumberWithinLocation(int armyID, vector location, float range);


/**
 * Returns the current total hitpoints for the given army. 
 * @param int armyID
 * @returns float
 */
float kbArmyGetCurrentHitpoints(int armyID);


/**
 * Returns the maximum total hitpoints for the given army. 
 * @param int armyID
 * @returns float
 */
float kbArmyGetMaximumHitpoints(int armyID);


/**
 * Returns the health for the given army. 
 * @param int armyID
 * @returns float
 */
float kbArmyGetHealth(int armyID);


/**
 * Returns the number of units with at least the minimum amount of health specified for the given army. 
 * @param int armyID, float minimumHealth
 * @returns int
 */
int kbArmyGetNumberWithHealth(int armyID, float minimumHealth);


/**
 * Returns the current AI cost (worth) for the given army. 
 * @param int armyID
 * @returns float
 */
float kbArmyGetCurrentAICost(int armyID);


/**
 * Returns the maximum AI cost (worth) for the given army. 
 * @param int armyID
 * @returns float
 */
float kbArmyGetMaximumAICost(int armyID);


/**
 * Returns the current population for the player, means cheating if used by AI for other players. 
 * @param int playerID
 * @returns int
 */
int kbPlayerGetPop(int playerID);


/**
 * Returns the current population cap for the given player, means cheating if used by AI for other players. 
 * @param int playerID
 * @returns int
 */
int kbPlayerGetPopCap(int playerID);


/**
 * Returns the maximum population for the given player. 
 * @param int playerID
 * @returns int
 */
int kbPlayerGetMaxPop(int playerID);


/**
 * Returns the current age for the given player. 
 * @param int playerID
 * @returns int
 */
int kbPlayerGetAge(int playerID);


/**
 * Returns the culture for the given player. 
 * @param int playerID
 * @returns int
 */
int kbPlayerGetCulture(int playerID);


/**
 * Returns the culture name for the given culture. 
 * @param int cultureID
 * @returns string
 */
string kbCultureGetName(int cultureID);


/**
 * Returns the civilization (major god) for the given player. 
 * @param int playerID
 * @returns int
 */
int kbPlayerGetCiv(int playerID);


/**
 * Returns the civilization (major god) name for the given civID. 
 * @param int civID
 * @returns string
 */
string kbCivGetName(int civID);


/**
 * Returns the building efficiency for the given player. 
 * @param int playerID
 * @returns float
 */
float kbPlayerGetBuildingEfficiency(int playerID);


/**
 * Returns the player's resigned status. 
 * @param int playerID
 * @returns bool
 */
bool kbPlayerIsResigned(int playerID);


/**
 * Returns true if the player has either resigned or has been defeated. 
 * @param int playerID
 * @returns bool
 */
bool kbPlayerHasLost(int playerID);


/**
 * Returns the player's team number. 
 * @param int playerID
 * @returns int
 */
int kbPlayerGetTeam(int playerID);


/**
 * Returns the player's name. 
 * @param int playerID
 * @returns string
 */
string kbPlayerGetName(int playerID);


/**
 * Returns true if the given player is an enemy. 
 * @param int playerID
 * @returns bool
 */
bool kbPlayerIsEnemy(int playerID);


/**
 * Returns true if the given player is a neutral player. 
 * @param int playerID
 * @returns bool
 */
bool kbPlayerIsNeutral(int playerID);


/**
 * Returns true if the given player is an ally. 
 * @param int playerID
 * @returns bool
 */
bool kbPlayerIsAlly(int playerID);


/**
 * Returns true if the given player is a mutual ally. 
 * @param int playerID
 * @returns bool
 */
bool kbPlayerIsMutualAlly(int playerID);


/**
 * Returns the number of mutual allies.
 * @param 
 * @returns int
 */
int kbGetNumberMutualAllies();


/**
 * Returns true if the given player is a a human player. 
 * @param int playerID
 * @returns bool
 */
bool kbPlayerIsHuman(int playerID);


/**
 * Returns the player's handicap multiplier (ie., 1.0 = no handicap). 
 * @param int playerID
 * @returns float
 */
float kbPlayerGetHandicap(int playerID);


/**
 * Sets the indicated player's handicap multiplier (ie., 1.0 = no handicap). 
 * @param int playerID, float fHandicap
 * @returns void
 */
void kbPlayerSetHandicap(int playerID, float fHandicap);


/**
 * gets the player starting position. 
 * @param int playerID
 * @returns vector
 */
vector kbPlayerGetStartingPosition(int playerID);


/**
 * Creates a unit query, returns the query ID. 
 * @param string name
 * @returns int
 */
int kbUnitQueryCreate(string name);


/**
 * Resets the given unit query data AND results. 
 * @param int queryID
 * @returns void
 */
void kbUnitQueryResetData(int queryID);


/**
 * Resets the given unit query results. 
 * @param int queryID
 * @returns void
 */
void kbUnitQueryResetResults(int queryID);


/**
 * Destroys the given unit query. 
 * @param int queryID
 * @returns void
 */
void kbUnitQueryDestroy(int queryID);


/**
 * Returns the number of results in the current query. 
 * @param int queryID
 * @returns int
 */
int kbUnitQueryNumberResults(int queryID);


/**
 * Returns the UnitID of the index-th result in the current query. 
 * @param int queryID, int index
 * @returns int
 */
int kbUnitQueryGetResult(int queryID, int index);


/**
 * Returns all unit IDs in the current query. 
 * @param int queryID
 * @returns int[]
 */
int[] kbUnitQueryGetResults(int queryID);


/**
 * Query Data: Sets the player whose units we will search for. If you for example provide 3 in here, the query will only return units belonging to player 3. resetQueryData can be used to instantly completely reset a query when using this syscall, so use it BEFORE you set any other data. Use either this function or kbUnitQuerySetPlayerRelation, you must have either one of these two. Default value: -1 (finds no units) 
 * @param int queryID, int playerID, bool resetQueryData
 * @returns void
 */
void kbUnitQuerySetPlayerID(int queryID, int playerID, bool resetQueryData);


/**
 * Query Data: Sets the player relation the query will search for. Valid inputs here are the relation constants which are prefixed by cPlayerRelation. If you for example provide cPlayerRelationEnemy in here the query will only find units that are your enemy. Use either this function or kbUnitQuerySetPlayerID, you must have either one of these two. Default value: invalid (finds no units) 
 * @param int queryID, int relation
 * @returns void
 */
void kbUnitQuerySetPlayerRelation(int queryID, int relation);


/**
 * Query Data: Set what units the query will search for. This can be all cUnitType constants. You MUST set this for every query, or it has no idea what to search for. Default value: -1 (finds no units) 
 * @param int queryID, int unitType
 * @returns void
 */
void kbUnitQuerySetUnitType(int queryID, int unitType);


/**
 * Query Data: Sets what action type the units must be performing to be picked up by the query. This can be all cActionType constants. If you call this on enemy units and don't have the cUnitQuerySeeableStateVisible state set then it will cheat!!! Default value: -1 (not filtered on actions) 
 * @param int queryID, int actionTypeID
 * @returns void
 */
void kbUnitQuerySetActionType(int queryID, int actionTypeID);


/**
 * Query Data: Sets what unit state the queries will search for. Valid inputs here are the unit state constants which are prefixed by cUnitState. If you for example provide cUnitStateAlive inhere the query will only find units that are alive. Default value: cUnitStateAny (be mindful here that this state will also find dead units) 
 * @param int queryID, int unitState
 * @returns void
 */
void kbUnitQuerySetState(int queryID, int unitState);


/**
 * Query Data: Sets from what position the query will start searching. You MUST combine this with kbUnitQuerySetMaximumDistance or it has no effect. Default value: cInvalidVector (not filtered by position) 
 * @param int queryID, vector position
 * @returns void
 */
void kbUnitQuerySetPosition(int queryID, vector position);


/**
 * Query Data: Sets the maximum distance from the position the query will search, in a circular radius. You MUST combine this with kbUnitQuerySetPosition or it has no effect. Default value: -1.0 (no distance and thus entire map) 
 * @param int queryID, float distance
 * @returns void
 */
void kbUnitQuerySetMaximumDistance(int queryID, float distance);


/**
 * Query Data: Sets if the query will count knocked out units or not. If for example this is set to true then a knocked out Arkantos will not be picked up by the query. Default value: true. 
 * @param int queryID, bool value
 * @returns void
 */
void kbUnitQuerySetIgnoreKnockedOutUnits(int queryID, bool value);


/**
 * Query Data: Sets if the query results will be sorted from closest to furthest in relation to the position. You MUST combine this with kbUnitQuerySetPosition or it has no effect. Default value: false (randomly sorted) 
 * @param int queryID, bool value
 * @returns void
 */
void kbUnitQuerySetAscendingSort(int queryID, bool value);


/**
 * Query Data: Sets what base the unit must be in to be valid for the query. Main use for this is with AI scripting where the AI bases can be analyzed. Default value: -1 (not filtered on bases) 
 * @param int queryID, int baseID
 * @returns void
 */
void kbUnitQuerySetBaseID(int queryID, int baseID);


/**
 * Query Data: Sets what areaID the unit must be in to be valid for the query. Default value: -1 (not filtered on areas) 
 * @param int queryID, int areaID
 * @returns void
 */
void kbUnitQuerySetAreaID(int queryID, int areaID);


/**
 * Query Data: Sets what areaGroupID the unit must be in to be valid for the query. Default value: -1 (not filtered on areas groups) 
 * @param int queryID, int areaGroupID
 * @returns void
 */
void kbUnitQuerySetAreaGroupID(int queryID, int areaGroupID);


/**
 * Query Data: Sets what armyID the unit must be in to be valid for the query. Default value: -1 (not filtered on armies) 
 * @param int queryID, int armyID
 * @returns void
 */
void kbUnitQuerySetArmyID(int queryID, int armyID);


/**
 * Query Data: Sets minimum creation time, in game time milisseconds, for unit to be considered valid for the query and whether or not the check for creation time should be inclusiveDefault value: -1 (not filtered by minimum creation time), true (check is inclusive) 
 * @param int queryID, int time, bool inclusive
 * @returns void
 */
void kbUnitQuerySetMinCreationTime(int queryID, int time, bool inclusive);


/**
 * Query Data: Sets maximum creation time, in game time milisseconds, for unit to be considered valid for the query and whether or not the check for creation time should be inclusiveDefault value: -1 (not filtered by maximum creation time), true (check is inclusive) 
 * @param int queryID, int time, bool inclusive
 * @returns void
 */
void kbUnitQuerySetMaxCreationTime(int queryID, int time, bool inclusive);


/**
 * Query Data: sets the state in relation to LOS for what units are considered valid for this queryID. A unit can have different visiblity states in the KB that you can uniquely search for. cUnitQuerySeeableStateAllValid: no filtering. cUnitQuerySeeableStateVisible: requires active LOS of the unit. cUnitQuerySeeableStateUnderFog: doppled units, like gold mines and buildings. cUnitQuerySeeableStateNotVisible: units that we once saw but are not visible to us anymore. cUnitQuerySeeableStateSeeable: combination of Visible and UnderFog, so both are valid. cUnitQueryVisibleStateRecentPositionKnown: excludes all units that we know no valid position off. cUnitQueryVisibleStateNoRecentPositionKnown: excludes all units that we have a valid position off. 
 * @param int queryID, int state
 * @returns void
 */
void kbUnitQuerySetVisibleState(int queryID, int state);


/**
 * Query Data: if a unit is any of the types in the types array it will be skipped. This array accepts proto units as well as abstract types. 
 * @param int queryID, int[] types
 * @returns void
 */
void kbUnitQuerySetExcludeTypes(int queryID, int[] types);


/**
 * Executes the query (using the query data) and returns the number of units found. ATTENTION: if you execute a query multiple times, without resetting the results, the results will stack on top of each other. You can't get duplicate results this way, but accidentally stacking results can lead to unexpected outcomes. 
 * @param int queryID
 * @returns int
 */
int kbUnitQueryExecute(int queryID);


/**
 * Executes the query (using the query data) on the other query and returns the number of units found. For example your previousQueryID searches for enemy units and finds 20 of them of which 5 are myth units. Then your currentQueryID looks only for myth units. If you now execute your currentQueryID on your previousQueryID you will get back the 5 myth units you originally found in your previousQueryID. 
 * @param int currentQueryID, int previousQueryID
 * @returns int
 */
int kbUnitQueryExecuteOnQuery(int currentQueryID, int previousQueryID);


/**
 * Returns the total aiCost of the found units, uses values set by kbSetAICostWeight to calculate multipliers. If considerHealth is true it will take the current hitpoints of the unit into account. For example if your Hoplite is half hp then only half the cost of the Hoplite is added to the total. 
 * @param int queryID, bool considerHealth
 * @returns float
 */
float kbUnitQueryGetUnitCost(int queryID, bool considerHealth);


/**
 * Returns the total maximum hitpoints of the found units. If considerHealth is true it will instead return the total of current hitpoints. 
 * @param int queryID, bool currentHitpoints
 * @returns float
 */
float kbUnitQueryGetUnitHitpoints(int queryID, bool currentHitpoints);


/**
 * Returns the number of pop slots currently occupied by the results in the given query. If this is called on a query that uses a player relation instead of a playerID it will calculate using default population values. 
 * @param int queryID
 * @returns int
 */
int kbUnitQueryGetPopulationSlots(int queryID);


/**
 * Returns if the unitID corresponds to a unit that is currently in the game. Dead units remain valid for some time after their death, which is why deadIsValid variable exists. If deadIsValid is false then dead units are considered not valid. 
 * @param int unitID, bool deadIsValid
 * @returns bool
 */
bool kbUnitGetIsIDValid(int unitID, bool deadIsValid);


/**
 * Returns total damage stat for this unit action for this unit. 
 * @param int unitID, string actionName, int damageTypeID, bool addBuffs
 * @returns float
 */
float kbUnitGetActionDamageForType(int unitID, string actionName, int damageTypeID, bool addBuffs);


/**
 * Returns the player ID for this unit ID. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetPlayerID(int unitID);


/**
 * Returns the plan ID for this unit ID. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetPlanID(int unitID);


/**
 * Returns the base ID for this unit ID. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetBaseID(int unitID);


/**
 * Returns the area ID for this unit ID. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetAreaID(int unitID);


/**
 * Returns the army ID for this unit ID. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetArmyID(int unitID);


/**
 * Returns the movementType for this unitTypeID. 
 * @param int unitTypeID
 * @returns int
 */
int kbUnitGetMovementType(int unitTypeID);


/**
 * Returns the current AI cost (worth) for this unit ID. 
 * @param int unitID
 * @returns float
 */
float kbUnitGetCurrentAICost(int unitID);


/**
 * Returns the maximum AI cost (worth) for this unit ID. 
 * @param int unitID
 * @returns float
 */
float kbUnitGetMaximumAICost(int unitID);


/**
 * Returns the position for this unit ID. If we don't know a recent position of this unit it reports back as cNoRecentPositionKnown. Any unit that isn't visible under fog of war will be set to cNoRecentPositionKnown after 25-26 seconds of losing line of sight of the unit. 
 * @param int unitID
 * @returns vector
 */
vector kbUnitGetPosition(int unitID);


/**
 * Returns the heading for this unit ID. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetHeading(int unitID);


/**
 * Returns the idle time for this unit ID. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetIdleTime(int unitID);


/**
 * Returns true if the unit is of the unitTypeID. 
 * @param int unitID, int unitTypeID
 * @returns bool
 */
bool kbUnitIsType(int unitID, int unitTypeID);


/**
 * returns true if this unit is Training or Researching. 
 * @param int unitID
 * @returns bool
 */
bool kbUnitIsTrainingOrResearching(int unitID);


/**
 * returns true if this unit is empowered. 
 * @param int uID
 * @returns bool
 */
bool kbUnitIsEmpowered(int uID);


/**
 * Returns the actionTypeID of the unit. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetActionType(int unitID);


/**
 * Returns the target unit ID of the given unit. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetTargetUnitID(int unitID);


/**
 * Returns the number of units currently working on the given unit. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetNumberWorkers(int unitID);


/**
 * Returns the index-th worker unit ID. 
 * @param int unitID, int index
 * @returns int
 */
int kbUnitGetWorkerID(int unitID, int index);


/**
 * Returns the unit's protounit ID. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetProtoUnitID(int unitID);


/**
 * returns the resource amount of the unit. 
 * @param int unitID, int resourceID
 * @returns float
 */
float kbUnitGetResourceAmount(int unitID, int resourceID);


/**
 * returns the resource carry capacity of the unit. 
 * @param int unitID, int resourceID
 * @returns float
 */
float kbUnitGetCarryCapacity(int unitID, int resourceID);


/**
 * Returns true if unit is within terrain lush belonging to the given player. 
 * @param int unitID, int playerID
 * @returns bool
 */
bool kbUnitIsInLush(int unitID, int playerID);


/**
 * Returns the container for the given unit, or -1, if it's not being currently contained. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetContainer(int unitID);


/**
 * Returns true, if unit is contained by a container belonging to the given unitType. 
 * @param int unitID, int unitTypeID
 * @returns bool
 */
bool kbUnitIsContainedBy(int unitID, int unitTypeID);


/**
 * Returns the number of units contained within the given unit. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetNumberContained(int unitID);


/**
 * Returns the number of units contained of a particular unitType within the given unit. 
 * @param int unitID, int unitTypeID
 * @returns int
 */
int kbUnitGetNumberContainedOfType(int unitID, int unitTypeID);


/**
 * Returns the ID for the unit contained at the given index, or -1, if it's invalid. Use in combination with the constants in the BKBData::BKBStatusEffect enum. 
 * @param int unitID, int index
 * @returns int
 */
int kbUnitGetContainedUnitByIndex(int unitID, int index);


/**
 * Returns true if the selected unit is affected by the given status effect. 
 * @param int unitID, int statusEffectID
 * @returns bool
 */
bool kbUnitGetIsAffectedByStatusEffect(int unitID, int statusEffectID);


/**
 * Returns the tech ID for the given relic unit ID, or -1, if it's invalid. 
 * @param int unitID
 * @returns int
 */
int kbRelicGetTechID(int unitID);


/**
 * Returns number of actions of the unit. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetNumberActions(int unitID);


/**
 * Returns action ID of the unit. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetActionID(int unitID);


/**
 * Returns action ID at the index of the unit. 
 * @param int unitID, int index
 * @returns int
 */
int kbUnitGetActionIDByIndex(int unitID, int index);


/**
 * Returns action type at the index of the unit. 
 * @param int unitID, int index
 * @returns int
 */
int kbUnitGetActionTypeByIndex(int unitID, int index);


/**
 * Returns action is paused or not at the index of the unit. 
 * @param int unitID, int index
 * @returns bool
 */
bool kbUnitGetMaintainActionPausedByIndex(int unitID, int index);


/**
 * Returns the maximum range of the action for the unit. 
 * @param int unitID, string actionName
 * @returns float
 */
float kbUnitGetActionMaximumRange(int unitID, string actionName);


/**
 * Returns what KB resource this unit is in. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetKBResourceID(int unitID);


/**
 * Returns the ID of the current animation for the given unit. 
 * @param int unitID
 * @returns int
 */
int kbUnitGetCurAnimationID(int unitID);


/**
 * Returns the distance from the given unit to the point including the unit's radius. 
 * @param int unitID, vector p
 * @returns float
 */
float kbUnitGetDistanceToPoint(int unitID, vector p);


/**
 * Returns the distance from the given unit to other unit including the units' radii. 
 * @param int unitID, int otherUnitID
 * @returns float
 */
float kbUnitGetDistanceToUnit(int unitID, int otherUnitID);


/**
 * Returns the auto-gather rate value for the provided resource of a unit. 
 * @param int unitID, int resEnumID
 * @returns float
 */
float kbUnitGetResourceAutoGatherRate(int unitID, int resEnumID);


/**
 * Returns true if the protoUnitID is valid. 
 * @param int protoUnitID
 * @returns bool
 */
bool kbProtoUnitGetIsValidID(int protoUnitID);


/**
 * Returns true if the protoUnit has the given unitType set. 
 * @param int protoUnitID, int unitType
 * @returns bool
 */
bool kbProtoUnitIsType(int protoUnitID, int unitType);


/**
 * Returns true if the protoUnit is currently available. 
 * @param int protoUnitID
 * @returns bool
 */
bool kbProtoUnitAvailable(int protoUnitID);


/**
 * returns the cost of the protounit for the given resource. 
 * @param int protoUnitID, int resourceID
 * @returns float
 */
float kbProtoUnitCostPerResource(int protoUnitID, int resourceID);


/**
 * returns the cost of the protounit. 
 * @param int protoUnitID
 * @returns float[]
 */
float[] kbProtoUnitGetCost(int protoUnitID);


/**
 * returns the total cost of the protounit with AI cost weight factored in. 
 * @param int protoUnitID
 * @returns float
 */
float kbProtoUnitGetCostTotal(int protoUnitID);


/**
 * gets the unit gather rate. 
 * @param int protoUnitID, int resourcePUID
 * @returns float
 */
float kbProtoUnitGetGatherRate(int protoUnitID, int resourcePUID);


/**
 * checks whether the proto unit can train the specified unit. 
 * @param int protoUnitID, int trainPUID
 * @returns bool
 */
bool kbProtoUnitCanTrain(int protoUnitID, int trainPUID);


/**
 * checks whether the proto unit can research the specific technology. 
 * @param int protoUnitID, int techID
 * @returns bool
 */
bool kbProtoUnitCanResearch(int protoUnitID, int techID);


/**
 * Returns an array of all accessible PUIDs that can train this protoUnitID. 
 * @param int protoUnitID
 * @returns int[]
 */
int[] kbProtoUnitGetTrainers(int protoUnitID);


/**
 * Returns the name of the protounit ID. 
 * @param int protoUnitID
 * @returns string
 */
string kbProtoUnitGetName(int protoUnitID);


/**
 * Returns the name of the unit type. 
 * @param int unitTypeID
 * @returns string
 */
string kbUnitTypeGetName(int unitTypeID);


/**
 * Returns the value for the provided float stat of a unit. 
 * @param int unitID, int statEnumID
 * @returns float
 */
float kbUnitGetStatFloat(int unitID, int statEnumID);


/**
 * Returns the value for the provided float stat of a provided unit action. 
 * @param int unitID, string actionName, int statEnumID
 * @returns float
 */
float kbUnitGetActionStatFloat(int unitID, string actionName, int statEnumID);


/**
 * Returns the value for the provided float stat of a player's proto unit. 
 * @param int playerID, int protoUnitID, int statEnumID
 * @returns float
 */
float kbPlayerGetProtoStatFloat(int playerID, int protoUnitID, int statEnumID);


/**
 * Returns the value for the provided float stat of a proto unit. 
 * @param int protoUnitID, int statEnumID
 * @returns float
 */
float kbDefaultGetProtoStatFloat(int protoUnitID, int statEnumID);


/**
 * Returns the value for the provided integer stat of a unit. 
 * @param int unitID, int statEnumID
 * @returns int
 */
int kbUnitGetStatInt(int unitID, int statEnumID);


/**
 * Returns the value for the provided integer stat of a player's proto unit. 
 * @param int playerID, int protoUnitID, int statEnumID
 * @returns int
 */
int kbPlayerGetProtoStatInt(int playerID, int protoUnitID, int statEnumID);


/**
 * Returns the value for the provided integer stat of a unit's proto unit. 
 * @param int protoUnitID, int statEnumID
 * @returns int
 */
int kbDefaultGetProtoStatInt(int protoUnitID, int statEnumID);


/**
 * Returns the value for the provided bool stat of a unit. 
 * @param int unitID, int statEnumID
 * @returns bool
 */
bool kbUnitGetStatBool(int unitID, int statEnumID);


/**
 * Returns the value for the provided bool stat of a player's proto unit. 
 * @param int playerID, int protoUnitID, int statEnumID
 * @returns bool
 */
bool kbPlayerGetProtoStatBool(int playerID, int protoUnitID, int statEnumID);


/**
 * Returns the value for the provided bool stat of a unit's proto unit. 
 * @param int protoUnitID, int statEnumID
 * @returns bool
 */
bool kbDefaultGetProtoStatBool(int protoUnitID, int statEnumID);


/**
 * Returns the value for the provided string stat of a unit. 
 * @param int unitID, int stat
 * @returns string
 */
string kbUnitGetStatString(int unitID, int stat);


/**
 * Returns the value for the provided string stat of a player's proto unit. 
 * @param int playerID, int protoUnitID, int stat
 * @returns string
 */
string kbPlayerGetProtoStatString(int playerID, int protoUnitID, int stat);


/**
 * Returns the value for the provided string stat of a base proto unit. 
 * @param int protoUnitID, int stat
 * @returns string
 */
string kbDefaultGetProtoStatString(int protoUnitID, int stat);


/**
 * Returns the center vector of the map.
 * @param 
 * @returns vector
 */
vector kbGetMapCenter();


/**
 * Returns the X size of the map.
 * @param 
 * @returns float
 */
float kbGetMapXSize();


/**
 * Returns the Z size of the map.
 * @param 
 * @returns float
 */
float kbGetMapZSize();


/**
 * Returns if the provided location is on the map. 
 * @param vector location
 * @returns bool
 */
bool kbGetIsLocationOnMap(vector location);


/**
 * Returns if the areaID is valid. 
 * @param int areaID
 * @returns bool
 */
bool kbAreaGetIsIDValid(int areaID);


/**
 * Returns the number of areas the KB has generated.
 * @param 
 * @returns int
 */
int kbAreaGetNumber();


/**
 * Returns the areaID that is located at the given position. 
 * @param vector position
 * @returns int
 */
int kbAreaGetIDByPosition(vector position);


/**
 * Returns the areaGroupID of the given areaID. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetGroupID(int areaID);


/**
 * Returns the center of the given areaID. 
 * @param int areaID
 * @returns vector
 */
vector kbAreaGetCenter(int areaID);


/**
 * Returns the number of tiles in the given areaID. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetNumberTiles(int areaID);


/**
 * Returns the number of black tiles in the given areaID. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetNumberBlackTiles(int areaID);


/**
 * Returns the number of visible tiles in the given areaID. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetNumberVisibleTiles(int areaID);


/**
 * Returns the number of fog tiles in the given areaID. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetNumberFogTiles(int areaID);


/**
 * Returns the gametime in milliseconds of the last visibility change for the given areaID. If any of the tiles change their visibility status this timer is updated. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetVisibilityChangeTime(int areaID);


/**
 * Returns what percentage of tiles are either in fog or visible. 
 * @param int areaID
 * @returns float
 */
float kbAreaGetPercentExplored(int areaID);


/**
 * Returns the number of units in the given areaID. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetNumberUnits(int areaID);


/**
 * Returns the unitID of the index-th unit in the given areaID. 
 * @param int areaID, int index
 * @returns int
 */
int kbAreaGetUnitID(int areaID, int index);


/**
 * Returns the number of border areas for the given areaID. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetNumberBorderAreas(int areaID);


/**
 * Returns the areaID of the index-th border area in the given areaID. 
 * @param int areaID, int index
 * @returns int
 */
int kbAreaGetBorderAreaID(int areaID, int index);


/**
 * Returns true of the provided areaID borders the provided borderAreaID. 
 * @param int areaID, int borderAreaID
 * @returns bool
 */
bool kbAreaBordersAreaID(int areaID, int borderAreaID);


/**
 * Scans from the given position for areas of the given type. Returns the areaID of the closest matching area. minDistance can be left undefined to set no distance at all, if defined the found areas must be within that distance. areaType MUST be defined. 
 * @param vector position, int areaType, float minDistance
 * @returns int
 */
int kbAreaGetClosestAreaID(vector position, int areaType, float minDistance);


/**
 * Returns the type of the given areaID, cAreaType constants. 
 * @param int areaID
 * @returns int
 */
int kbAreaGetType(int areaID);


/**
 * Returns the danger rating of the given areaID. If averageInBorderAreas is defined you will get the average rating of the provided area plus its border areas. 
 * @param int areaID, bool averageInBorderAreas
 * @returns float
 */
float kbAreaGetDangerLevel(int areaID, bool averageInBorderAreas);


/**
 * Force updates all the areas, use with caution due to performance concerns.
 * @param 
 * @returns void
 */
void kbAreaUpdateAllAreas();


/**
 * Returns if the areaGroupID is valid. 
 * @param int areaGroupID
 * @returns bool
 */
bool kbAreaGroupGetIsIDValid(int areaGroupID);


/**
 * Returns the number of area groups the KB has generated.
 * @param 
 * @returns int
 */
int kbAreaGroupGetNumber();


/**
 * Returns the areaID at the given index of the given areaGroupID. 
 * @param int areaGroupID, int index
 * @returns int
 */
int kbAreaGroupGetAreaID(int areaGroupID, int index);


/**
 * Returns the type of the given areaGroupID, cAreaGroupType constants. 
 * @param int areaGroupID
 * @returns int
 */
int kbAreaGroupGetType(int areaGroupID);


/**
 * Returns the number of areas of the given areaGroupID. 
 * @param int areaGroupID
 * @returns int
 */
int kbAreaGroupGetNumberAreas(int areaGroupID);


/**
 * Returns the areaGroupID that is located at the given position. 
 * @param vector position
 * @returns int
 */
int kbAreaGroupGetIDByPosition(vector position);


/**
 * Returns the center of the given areaGroupID. 
 * @param int areaGroupID
 * @returns vector
 */
vector kbAreaGroupGetCenter(int areaGroupID);


/**
 * Returns the amount of border area groups this areaGroupID has. 
 * @param int areaGroupID
 * @returns int
 */
int kbAreaGroupGetNumberBorderAreaGroups(int areaGroupID);


/**
 * Returns the areaGroupID of the index-th border area group in the given areaGroupID. 
 * @param int areaGroupID, int index
 * @returns int
 */
int kbAreaGroupGetBorderAreaGroupID(int areaGroupID, int index);


/**
 * Returns true of the provided areaGroupID borders the provided borderAreaGroupID. 
 * @param int areaGroupID, int borderAreaGroupID
 * @returns bool
 */
bool kbAreaGroupsBordersAreaGroupID(int areaGroupID, int borderAreaGroupID);


/**
 * Returns the surface area of the given areaGroupID. 
 * @param int areaGroupID
 * @returns float
 */
float kbAreaGroupGetSurfaceArea(int areaGroupID);


/**
 * Returns if the provided pathID is valid. 
 * @param int pathID
 * @returns bool
 */
bool kbPathGetIsIDValid(int pathID);


/**
 * Creates a path with the given name. 
 * @param string name
 * @returns int
 */
int kbPathCreate(string name);


/**
 * Destroys the given path. 
 * @param int pathID
 * @returns void
 */
void kbPathDestroy(int pathID);


/**
 * Returns the number of paths the KB has.
 * @param 
 * @returns int
 */
int kbPathGetNumber();


/**
 * Returns the index-th pathID, use in combination with kbPathGetNumber. 
 * @param int index
 * @returns int
 */
int kbPathGetIDByIndex(int index);


/**
 * Returns the pathID of the given name. 
 * @param string name
 * @returns int
 */
int kbPathGetIDByName(string name);


/**
 * Returns the name of the given path. 
 * @param int pathID
 * @returns string
 */
string kbPathGetName(int pathID);


/**
 * Returns the length of the given path. 
 * @param int pathID
 * @returns float
 */
float kbPathGetLength(int pathID);


/**
 * Returns the length of the given path after calculating it. 
 * @param int pathID, bool ignoreY
 * @returns float
 */
float kbPathCalculateLength(int pathID, bool ignoreY);


/**
 * Returns the number of waypoints in the given path. 
 * @param int pathID
 * @returns int
 */
int kbPathGetNumberWaypoints(int pathID);


/**
 * Adds the waypoint to the given path. 
 * @param int pathID, vector wp
 * @returns void
 */
void kbPathAddWaypoint(int pathID, vector wp);


/**
 * Adds the waypoint to the given path. 
 * @param int pathID, int wpIndex, vector wp
 * @returns void
 */
void kbPathAddWaypointAfter(int pathID, int wpIndex, vector wp);


/**
 * Returns the appropriate waypoint from the given path. 
 * @param int pathID, int wpIndex
 * @returns vector
 */
vector kbPathGetWaypoint(int pathID, int wpIndex);


/**
 * TODO. 
 * @param int pathID, int startAreaID, int goalAreaID, int movementType, float dangerThreshold, bool allowPartialPath
 * @returns bool
 */
bool kbPathCreateAreaPath(int pathID, int startAreaID, int goalAreaID, int movementType, float dangerThreshold, bool allowPartialPath);


/**
 * Returns true if the given unit type can path from pointA to pointB. Only performs high level pathing (ignores moveable obstructions like units) 
 * @param vector pointA, vector pointB, int unitTypeID, float range
 * @returns bool
 */
bool kbCanPath(vector pointA, vector pointB, int unitTypeID, float range);


/**
 * Returns true if the given area path can be made. 
 * @param vector pointA, vector pointB, int movementType, float dangerThreshold, bool allowPartialPath, int[] ignoreAreas
 * @returns bool
 */
bool kbCanAreaPath(vector pointA, vector pointB, int movementType, float dangerThreshold, bool allowPartialPath, int[] ignoreAreas);


/**
 * Returns if the provided routeID is valid. 
 * @param int routeID
 * @returns bool
 */
bool kbAttackRouteGetIsIDValid(int routeID);


/**
 * Returns the Route ID if successful. Creates an attack route and automatically adds some random attack sectors based on numInitialSectors. The startPoint/targetPoint/numInitialSectors only comes into play if you call kbAttackRouteCreatePaths as well. If you just need a route to add paths to manually then you need not worry about these 3 parameters. You can give attack routes that don't have kbAttackRouteCreatePaths called to attack plans directly, as long as you added valid paths yourself. 
 * @param string name, vector startPoint, vector endPoint, int numInitialSectors
 * @returns int
 */
int kbCreateAttackRouteWithPath(string name, vector startPoint, vector endPoint, int numInitialSectors);


/**
 * Returns the attack route ID with the matching name. 
 * @param string name
 * @returns int
 */
int kbAttackRouteGetByName(string name);


/**
 * Destroys the given routeID. 
 * @param int routeID
 * @returns void
 */
void kbAttackRouteDestroy(int routeID);


/**
 * Returns the number of attack routes the KB has saved. Attention: this includes deleted attack routes.
 * @param 
 * @returns int
 */
int kbAttackRouteGetNumber();


/**
 * Returns the index-th attack route ID. Use in combination with kbAttackRouteGetNumber to know how many indexes there are. Attention: this can often return -1 since destroyed attack routes are also fetched by this. 
 * @param int index
 * @returns int
 */
int kbAttackRouteGetIDByIndex(int index);


/**
 * TODO DOESN'T WORK ATM. Creates all the paths following the provided parameters. The number of sectors equals the amount of paths generated. 
 * @param int routeID
 * @returns bool
 */
bool kbAttackRouteCreatePaths(int routeID);


/**
 * Adds the given pathID to the given routeID. If addRouteStartAndTargetPoints is true the path will be adjusted so its first waypoint is the startPoint of the route and the last waypoint is the targetPoint of the route (if they aren't already). Existing waypoints won't be altered, just new ones insterted potentially. 
 * @param int routeID, int pathID, bool addRouteStartAndTargetPoints
 * @returns void
 */
void kbAttackRouteAddPath(int routeID, int pathID, bool addRouteStartAndTargetPoints);


/**
 * Returns how many paths the given routeID has. 
 * @param int routeID
 * @returns int
 */
int kbAttackRouteGetNumberPaths(int routeID);


/**
 * Returns the index-th path ID of the routeID. Use in combination with kbAttackRouteGetNumberPaths to know how many indexes there are. 
 * @param int routeID, int index
 * @returns int
 */
int kbAttackRouteGetPathIDByIndex(int routeID, int index);


/**
 * Removes the given pathID from the given routeID. Attention: this does not delete the path, use kbPathDestroy for that. 
 * @param int routeID, int pathID
 * @returns void
 */
void kbAttackRouteRemovePathByID(int routeID, int pathID);


/**
 * Creates an escrow. 
 * @param string name, int resourceID, float percentage, int parentID
 * @returns int
 */
int kbEscrowCreate(string name, int resourceID, float percentage, int parentID);


/**
 * Destroys an escrow. 
 * @param int escrowID, bool promoteChildren
 * @returns bool
 */
bool kbEscrowDestroy(int escrowID, bool promoteChildren);


/**
 * Returns the ID of the named escrow. 
 * @param string name
 * @returns int
 */
int kbEscrowGetID(string name);


/**
 * Returns the percentage of the escrow. 
 * @param int escrowID, int resourceID
 * @returns float
 */
float kbEscrowGetPercentage(int escrowID, int resourceID);


/**
 * Sets the percentage of the escrow. 
 * @param int escrowID, int resourceID, float percentage
 * @returns bool
 */
bool kbEscrowSetPercentage(int escrowID, int resourceID, float percentage);


/**
 * Sets the cap of the escrow. 
 * @param int escrowID, int resourceID, float cap
 * @returns bool
 */
bool kbEscrowSetCap(int escrowID, int resourceID, float cap);


/**
 * Returns the amount of credits in the given escrow for the given resource. 
 * @param int escrowID, int resourceID
 * @returns float
 */
float kbEscrowGetAmount(int escrowID, int resourceID);


/**
 * Removes all credits (and puts them into the root escrow) of the given resource type from the given escrow. 
 * @param int escrowID, int resourceID, bool flushChildren
 * @returns bool
 */
bool kbEscrowFlush(int escrowID, int resourceID, bool flushChildren);


/**
 * Reallocates the current resource stockpile into the escrows.
 * @param 
 * @returns bool
 */
bool kbEscrowAllocateCurrentResources();


/**
 * Returns true if the player can afford the proto unit. 
 * @param int protoUnitTypeID, int escrowID
 * @returns bool
 */
bool kbCanAffordUnit(int protoUnitTypeID, int escrowID);


/**
 * sets the ResourceSelector Factor value. 
 * @param int type, int resourceType, float val
 * @returns void
 */
void kbSetResourceSelectorFactor(int type, int resourceType, float val);


/**
 * gets the ResourceSelector Factor value. 
 * @param int type, int resourceType
 * @returns float
 */
float kbGetResourceSelectorFactor(int type, int resourceType);


/**
 * Returns the AI cost weight for the given resource. 
 * @param int resourceID
 * @returns float
 */
float kbAICostGetWeight(int resourceID);


/**
 * Sets the weight this resource type is given during AI cost calculuations. 
 * @param int resourceID, float weight
 * @returns bool
 */
bool kbAICostSetWeight(int resourceID, float weight);


/**
 * Returns the AI cost for the given protoUnit type ID. 
 * @param int protoUnitTypeID
 * @returns float
 */
float kbAICostGetProtoUnitCost(int protoUnitTypeID);


/**
 * Returns the AI cost for the given tech ID. 
 * @param int techID
 * @returns float
 */
float kbAICostGetTechCost(int techID);


/**
 * Returns if the base exists for the player. 
 * @param int playerID, int baseID
 * @returns bool
 */
bool kbBaseGetIsIDValid(int playerID, int baseID);


/**
 * Sets the flag for the base to the state. 
 * @param int playerID, int baseID, int flag, bool state
 * @returns void
 */
void kbBaseSetFlag(int playerID, int baseID, int flag, bool state);


/**
 * Gets if the flag for the base is set to true. 
 * @param int playerID, int baseID, int flag
 * @returns bool
 */
bool kbBaseIsFlagSet(int playerID, int baseID, int flag);


/**
 * Returns the auto base creation value.
 * @param 
 * @returns bool
 */
bool kbGetAutoMyBaseCreation();


/**
 * Sets whether or not the KB automatically creates bases for its OWN units. 
 * @param bool v
 * @returns void
 */
void kbSetAutoMyBaseCreation(bool v);


/**
 * Returns the auto base creation distance.
 * @param 
 * @returns float
 */
float kbGetAutoMyBaseCreationDistance();


/**
 * Sets the default distances for which OWN bases are made. 
 * @param float distance
 * @returns void
 */
void kbSetAutoMyBaseCreationDistance(float distance);


/**
 * Returns the auto base creation distance.
 * @param 
 * @returns float
 */
float kbGetAutoMyBaseCreationDistanceTC();


/**
 * Sets the default distances for which OWN bases are made. 
 * @param float distance
 * @returns void
 */
void kbSetAutoMyBaseCreationDistanceTC(float distance);


/**
 * Returns the auto base detection value.
 * @param 
 * @returns bool
 */
bool kbGetAutoOtherBaseCreation();


/**
 * Sets whether or not the KB automatically creates bases for OTHER player's units. 
 * @param bool v
 * @returns void
 */
void kbSetAutoOtherBaseCreation(bool v);


/**
 * Returns the auto base creation distance.
 * @param 
 * @returns float
 */
float kbGetAutoOtherBaseCreationDistance();


/**
 * Sets the default distances for which OTHER player's bases are made. 
 * @param float distance
 * @returns void
 */
void kbSetAutoOtherBaseCreationDistance(float distance);


/**
 * Returns the auto base creation distance.
 * @param 
 * @returns float
 */
float kbGetAutoOtherBaseCreationDistanceTC();


/**
 * Sets the default distances for which OTHER player's bases are made. 
 * @param float distance
 * @returns void
 */
void kbSetAutoOtherBaseCreationDistanceTC(float distance);


/**
 * Gets the nearest base belonging to playerID OR player relation from the location. Only returns bases with the military flag set if militaryBasesOnly is defined. 
 * @param int playerID, int playerRelation, vector location, bool militaryOnly
 * @returns int
 */
int kbFindClosestBase(int playerID, int playerRelation, vector location, bool militaryOnly);


/**
 * Returns the ID of the next base that will be created, can be used for base names.
 * @param 
 * @returns int
 */
int kbBaseGetNextID();


/**
 * Returns the number of bases for the given player. 
 * @param int playerID
 * @returns int
 */
int kbBaseGetNumber(int playerID);


/**
 * Returns the BaseID for the given base. 
 * @param int playerID, int index
 * @returns int
 */
int kbBaseGetIDByIndex(int playerID, int index);


/**
 * Returns the name for the given base. 
 * @param int playerID, int baseID
 * @returns string
 */
string kbBaseGetNameByID(int playerID, int baseID);


/**
 * Creates a base. 
 * @param int playerID, string name, vector position, float distance
 * @returns int
 */
int kbBaseCreate(int playerID, string name, vector position, float distance);


/**
 * TODO. 
 * @param vector position, int resourceType, int resourceSubType, float distance, float dangerTreshold, bool unclaimedOnly, bool idleOnly, bool areaGroupsNeedToMatch
 * @returns int
 */
int kbBaseFindOrCreateResourceBase(vector position, int resourceType, int resourceSubType, float distance, float dangerTreshold, bool unclaimedOnly, bool idleOnly, bool areaGroupsNeedToMatch);


/**
 * Destroys the given base. 
 * @param int playerID, int baseID
 * @returns bool
 */
bool kbBaseDestroy(int playerID, int baseID);


/**
 * Destroys all of the bases for the given player. 
 * @param int playerID
 * @returns void
 */
void kbBaseDestroyAll(int playerID);


/**
 * Gets the location of the base. 
 * @param int playerID, int baseID
 * @returns vector
 */
vector kbBaseGetLocation(int playerID, int baseID);


/**
 * Gets the last known damage location of the base. 
 * @param int playerID, int baseID
 * @returns vector
 */
vector kbBaseGetLastKnownDamageLocation(int playerID, int baseID);


/**
 * Returns the player ID of the specified base's owner. 
 * @param int baseID
 * @returns int
 */
int kbBaseGetOwner(int baseID);


/**
 * Sets the front (and back) of the base. 
 * @param int playerID, int baseID, vector front
 * @returns void
 */
void kbBaseSetFrontVector(int playerID, int baseID, vector front);


/**
 * Gets the front vector of the base. 
 * @param int playerID, int baseID
 * @returns vector
 */
vector kbBaseGetFrontVector(int playerID, int baseID);


/**
 * Gets the back vector of the base. 
 * @param int playerID, int baseID
 * @returns vector
 */
vector kbBaseGetBackVector(int playerID, int baseID);


/**
 * Returns the number of continuous seconds the base has been under attack. 
 * @param int playerID, int baseID
 * @returns int
 */
int kbBaseGetTimeUnderAttack(int playerID, int baseID);


/**
 * Returns the time when the base was last attacked. 
 * @param int playerID, int baseID
 * @returns int
 */
int kbBaseGetLastUnderAttackTime(int playerID, int baseID);


/**
 * Returns the defense rating for the base. 
 * @param int playerID, int baseID
 * @returns float
 */
float kbBaseGetDefenseRating(int playerID, int baseID);


/**
 * Returns the offense rating for the base. 
 * @param int playerID, int baseID
 * @returns float
 */
float kbBaseGetOffenseRating(int playerID, int baseID);


/**
 * Gets the main base ID for the player. 
 * @param int playerID
 * @returns int
 */
int kbBaseGetMainID(int playerID);


/**
 * Gets the military gather point of the base. 
 * @param int playerID, int baseID
 * @returns vector
 */
vector kbBaseGetMilitaryGatherPoint(int playerID, int baseID);


/**
 * Sets the military gather point of the base. 
 * @param int playerID, int baseID, vector gatherPoint
 * @returns void
 */
void kbBaseSetMilitaryGatherPoint(int playerID, int baseID, vector gatherPoint);


/**
 * Adds the given unit to the base. 
 * @param int playerID, int baseID, int unitID
 * @returns void
 */
void kbBaseAddUnit(int playerID, int baseID, int unitID);


/**
 * Removes the given unit to the base. 
 * @param int playerID, int baseID, int unitID
 * @returns void
 */
void kbBaseRemoveUnit(int playerID, int baseID, int unitID);


/**
 * Returns the number of units that match the unitTypeID. 
 * @param int playerID, int baseID, int unitTypeID
 * @returns int
 */
int kbBaseGetNumberUnitsOfType(int playerID, int baseID, int unitTypeID);


/**
 * Returns the unitIDs of all the units that are in the base. 
 * @param int playerID, int baseID
 * @returns int[]
 */
int[] kbBaseGetUnits(int playerID, int baseID);


/**
 * Sets position and distance of the base. 
 * @param int playerID, int baseID, vector position, float distance
 * @returns void
 */
void kbBaseSetPositionAndDistance(int playerID, int baseID, vector position, float distance);


/**
 * Gets distance of the base. 
 * @param int playerID, int baseID
 * @returns float
 */
float kbBaseGetDistance(int playerID, int baseID);


/**
 * Sets distance of the base. 
 * @param int playerID, int baseID, float newDistance
 * @returns void
 */
void kbBaseSetDistance(int playerID, int baseID, float newDistance);


/**
 * Returns if the upID is valid. 
 * @param int upID
 * @returns bool
 */
bool kbUnitPickGetIsIDValid(int upID);


/**
 * Creates a unit picker and return the ID of it. 
 * @param string name
 * @returns int
 */
int kbUnitPickCreate(string name);


/**
 * Destroys the given upID. 
 * @param int upID
 * @returns bool
 */
bool kbUnitPickDestroy(int upID);


/**
 * Resets all the upID's values. 
 * @param int upID
 * @returns void
 */
void kbUnitPickResetAll(int upID);


/**
 * Gets the upID's preference weight. 
 * @param int upID
 * @returns float
 */
float kbUnitPickGetPreferenceWeight(int upID);


/**
 * Sets the upID's Preference weight. We multiply the unit preferences by this amount for a final preference weight. Setting unit preference values is done via kbUnitPickSetPreferenceFactor. 
 * @param int upID, float weight
 * @returns void
 */
void kbUnitPickSetPreferenceWeight(int upID, float weight);


/**
 * Sets the upID's enemy player ID, -1 is allowed to not take any player into account. When we query to decide if we can go to counter mode we search for units belonging to this playerID. When analyzing the strength of units we take the stats of the units belonging to this playerID. 
 * @param int upID, int playerID
 * @returns void
 */
void kbUnitPickSetEnemyPlayerID(int upID, int playerID);


/**
 * Sets the upID's Combat Efficiency weight. We multiply the unit combat efficiencies by this amount for a final combat efficiency weight. Setting combat efficiency values is done via kbUnitPickAddCombatEfficiencyType. 
 * @param int upID, float weight
 * @returns void
 */
void kbUnitPickSetCombatEfficiencyWeight(int upID, float weight);


/**
 * Resets the enemy unitTypeIDs for the upID's combat efficiency calculation. 
 * @param int upID
 * @returns void
 */
void kbUnitPickResetCombatEfficiencyTypes(int upID);


/**
 * Adds an enemy unitTypeID to the upID's combat efficiency calculation. This ONLY works after having used kbUnitPickSetEnemyPlayerID! This is ONLY used when we're NOT in counter mode and have to base our picks off default stats + weights. Example: we're NOT in counter mode and have only 1 combat efficiency set, against AbstractInfantry. We will now analyze all our valid units and test them against all enemy units that are AbstractInfantry. Which will results in our highest picks being units that do well against AbstractInfantry. 
 * @param int upID, int unitTypeID, float weight
 * @returns bool
 */
bool kbUnitPickAddCombatEfficiencyType(int upID, int unitTypeID, float weight);


/**
 * Removes a unitTypeID from the upID's combat efficiency calculation. 
 * @param int upID, int unitTypeID
 * @returns void
 */
void kbUnitPickRemoveCombatEfficiencyType(int upID, int unitTypeID);


/**
 * Sets the upID's movement type, this is used to filter our own units. If any of our units don't have at least one of the specified movement types it's not valid. Use cPassability*** constants for this, you can stack multiple types on top of one another. 
 * @param int upID, int movementType
 * @returns void
 */
void kbUnitPickSetMovementType(int upID, int movementType);


/**
 * Resets the unit pick movement type to cPassabilityNone. 
 * @param int upID
 * @returns void
 */
void kbUnitPickResetMovementType(int upID);


/**
 * Sets the upID's attack unit type. When we're querying to see if we have enough enemies to go into counter mode, this is the unitTypeID we use to query for. 
 * @param int upID, int unitTypeID
 * @returns void
 */
void kbUnitPickSetAttackUnitType(int upID, int unitTypeID);


/**
 * Gets the upID's attack unit type. 
 * @param int upID
 * @returns int
 */
int kbUnitPickGetAttackUnitType(int upID);


/**
 * Sets the upID's Preference Factor for that unitTypeID. A preference is a flat value that has two purposes: 1. Adding a unit to the list of our own valid units. If a unit has no preference set it won't be analyzed. 2. Artificially increasing the likelihood a unit does well in our analyzis (the preference is added to the total factor). If you add a preference for AbstractInfantry then all the units that are currently enabled for us with the AbstractInfantry tag will be added to our valid unit list. Setting a preference for a unit multiple times is supported, you just overwrite the previously set preference. Setting a preference of <= 0.0 will completely exclude those units from our valid list. 
 * @param int upID, int unitTypeID, float baseFactor
 * @returns bool
 */
bool kbUnitPickSetPreferenceFactor(int upID, int unitTypeID, float baseFactor);


/**
 * Sets the minimum number of enemy units that have to be visible (not seeable only) to turn on counter enemy mode.Can be used together with kbUnitPickSetMinimumCounterModePop, if one of the two is true we will enter counter mode. 
 * @param int upID, int numberUnits
 * @returns void
 */
void kbUnitPickSetMinimumCounterModeNumberUnits(int upID, int numberUnits);


/**
 * Sets the minimum total pop count of enemy units that have to be visible (not seeable only) to turn on counter enemy mode.Can be used together with kbUnitPickSetMinimumCounterModeNumberUnits, if one of the two is true we will enter counter mode. 
 * @param int upID, int pop
 * @returns void
 */
void kbUnitPickSetMinimumCounterModePop(int upID, int pop);


/**
 * Resets all the previous results and then runs the unit picker again. Returns how many results there are. Final results are calculated like this: Preference Factor * Preference Weight + Combat Efficiency value (determined via analysis) * Combat Efficiency Weight. Before you run a unit picker you should always do the entire setup of all the data again. This is because when you add preferences or combat efficiencies weights the code will look at the current state of the game to fill up its lists. So if you wanted to include AbstractInfantry in your own list of units and were Classical Zeus you only added Hoplites, Jason, and Heracles. But if in the meantime you're now Heroic the system won't have added Hypaspists to that list by itself. You need to set a preference weight for AbstractInfantry again to have Hypaspists added. 
 * @param int upID
 * @returns int
 */
int kbUnitPickRun(int upID);


/**
 * Returns the number of results, can only be used after kbUnitPickRun. 
 * @param int upID
 * @returns int
 */
int kbUnitPickGetNumberResults(int upID);


/**
 * Returns the index-th ProtoUnitID, can only be used after kbUnitPickRun. 
 * @param int upID, int index
 * @returns int
 */
int kbUnitPickGetResult(int upID, int index);


/**
 * Returns all the results, can only be used after kbUnitPickRun. 
 * @param int upID
 * @returns int[]
 */
int[] kbUnitPickGetResults(int upID);


/**
 * Returns the index-th total factor, can only be used after kbUnitPickRun. 
 * @param int upID, int index
 * @returns float
 */
float kbUnitPickGetResultFactor(int upID, int index);


/**
 * Returns all the result factors, can only be used after kbUnitPickRun. 
 * @param int upID
 * @returns float[]
 */
float[] kbUnitPickGetResultFactors(int upID);


/**
 * Returns whether or not the unit picker actually went into counter mode, can only be used after kbUnitPickRun. 
 * @param int upID
 * @returns bool
 */
bool kbUnitPickGetCounterMode(int upID);


/**
 * Returns the amount of resources for the given area group. 
 * @param int areaGroupID
 * @returns float[]
 */
float[] kbGetAmountResourcesByAreaGroup(int areaGroupID);


/**
 * Returns the number of valid KB resources matching the parameters. 
 * @param vector position, int resourceType, int resourceSubType, float distance, float dangerTreshold, bool unclaimedOnly, bool idleOnly, bool areaGroupsNeedToMatch
 * @returns int
 */
int kbGetNumberValidResourcesByPosition(vector position, int resourceType, int resourceSubType, float distance, float dangerTreshold, bool unclaimedOnly, bool idleOnly, bool areaGroupsNeedToMatch);


/**
 * Returns the combined resource amount of valid KB resources for the resource types. 
 * @param vector position, int resourceType, int resourceSubType, float distance, float dangerTreshold, bool unclaimedOnly, bool idleOnly, bool areaGroupsNeedToMatch
 * @returns float
 */
float kbGetAmountValidResourcesByPosition(vector position, int resourceType, int resourceSubType, float distance, float dangerTreshold, bool unclaimedOnly, bool idleOnly, bool areaGroupsNeedToMatch);


/**
 * Returns the resourceIDs matching the parameters. 
 * @param vector position, int resourceType, int resourceSubType, float distance, float dangerTreshold, bool unclaimedOnly, bool idleOnly, bool areaGroupsNeedToMatch
 * @returns int[]
 */
int[] kbGetValidResourcesByPosition(vector position, int resourceType, int resourceSubType, float distance, float dangerTreshold, bool unclaimedOnly, bool idleOnly, bool areaGroupsNeedToMatch);


/**
 * Returns if the resourceID is valid. 
 * @param int resourceID
 * @returns bool
 */
bool kbResourceGetIsIDValid(int resourceID);


/**
 * Returns the number of KB resources that we currently have.
 * @param 
 * @returns int
 */
int kbResourceGetNumber();


/**
 * Returns the resourceID at the index. Use kbResourceGetNumber to find out how many indexes there are. 
 * @param int index
 * @returns int
 */
int kbResourceGetIDByIndex(int index);


/**
 * Returns the resourceID of the given unitID. 
 * @param int unitID
 * @returns int
 */
int kbResourceGetIDByUnitID(int unitID);


/**
 * Returns the resourceID's type. A type here means the cResource constants, like cResourceFood. 
 * @param int resourceID
 * @returns int
 */
int kbResourceGetType(int resourceID);


/**
 * Returns the resourceID's subtype. A subtype here means the cAIResourceSubType constants, like cAIResourceSubTypeEasy. 
 * @param int resourceID
 * @returns int
 */
int kbResourceGetSubType(int resourceID);


/**
 * Returns how many units are in the resourceID. 
 * @param int resourceID
 * @returns int
 */
int kbResourceGetNumberUnits(int resourceID);


/**
 * Returns the unitID found at the index of the resourceID. Use together with kbResourceGetNumberUnits to find out how many index there are. ATTENTION: you should always check if the unitID that is returned is valid for this specific function. 
 * @param int resourceID, int index
 * @returns int
 */
int kbResourceGetUnit(int resourceID, int index);


/**
 * Returns the position of the resourceID. This position is the center position of all units combined in the resourceID. ATTENTION: for Berry Bush resources this position isn't updated when certain Berry Bushes disappear. For forests it is updated when trees disappear. 
 * @param int resourceID
 * @returns vector
 */
vector kbResourceGetPosition(int resourceID);


/**
 * Toggles whether or not the resourceID is blacklisted. A resource that is blacklisted can't be picked up by the automatic search for new KB resources that the gather plan does. 
 * @param int resourceID, bool toggle
 * @returns void
 */
void kbResourceSetBlacklisted(int resourceID, bool toggle);


/**
 * Returns whether the resourceID is blacklisted or not. 
 * @param int resourceID
 * @returns bool
 */
bool kbResourceGetBlacklisted(int resourceID);


/**
 * Returns the total amount of resources that are left in the resourceID. If for example 10 trees with each 150 wood remain in the resource this func will return 1500. 
 * @param int resourceID
 * @returns float
 */
float kbResourceGetTotalResources(int resourceID);


/**
 * Returns the planID that may be associated with the resourceID. Each gather plan that goes to gather from a resource will attach its planID to said resourceID. 
 * @param int resourceID
 * @returns int
 */
int kbResourceGetPlanID(int resourceID);


/**
 * Returns the unitID of the dropsite that is closest to the center of the resourceID. 
 * @param int resourceID
 * @returns int
 */
int kbResourceGetClosestDropsiteID(int resourceID);


/**
 * Returns the unitID of the Farm that is furthest away from a dropsite of the resourceID. 
 * @param int resourceID
 * @returns int
 */
int kbResourceGetFarmIDWithFurthestAwayDropsite(int resourceID);


/**
 * Combines all Herdable KB Resources around the provided unitID within the provided distance. If there is already an active gather plan harvesting from one of the resources then all others will be merged into that resource. 
 * @param int unitID, float distance
 * @returns void
 */
void kbResourceCombineHerdableResourcesAroundUnit(int unitID, float distance);


/**
 * Sorts all the units in the resource towards to position. 
 * @param int resourceID, vector position
 * @returns void
 */
void kbResourceSortTowardsPosition(int resourceID, vector position);


/**
 * Returns the resource name. 
 * @param int id
 * @returns string
 */
string kbGetResourceName(int id);


/**
 * Returns the current amount of the given resource. 
 * @param int resourceID
 * @returns float
 */
float kbResourceGet(int resourceID);


/**
 * Returns the maximum amount of the given resource you can have. 
 * @param int resourceID
 * @returns float
 */
float kbMaximumResourceGet(int resourceID);


/**
 * Gets the number of gatherers of a resource for the given player. 
 * @param int playerID, string resName
 * @returns int
 */
int kbGetNumberResourceGatherers(int playerID, string resName);


/**
 * Returns the resource income over the last X seconds. 
 * @param int resourceID, float seconds, bool relative
 * @returns float
 */
float kbResourceGetIncome(int resourceID, float seconds, bool relative);


/**
 * Returns true if the unit is currently visible to the player. 
 * @param int unitID
 * @returns bool
 */
bool kbUnitVisible(int unitID);


/**
 * Returns true if the location is currently visible to the player. 
 * @param vector location
 * @returns bool
 */
bool kbLocationVisible(vector location);


/**
 * Returns true if the location is currently fogged to the player. 
 * @param vector location
 * @returns bool
 */
bool kbLocationFogged(vector location);


/**
 * Gets the number of function units from the given civ and function. 
 * @param int civ, int function
 * @returns int
 */
int kbFunctionUnitGetNumber(int civ, int function);


/**
 * Gets the function unit from the given civ and function at index. 
 * @param int civ, int function, int index
 * @returns int
 */
int kbFunctionUnitGetByIndex(int civ, int function, int index);


/**
 * Gets the number of shared function units from the given function. 
 * @param int function
 * @returns int
 */
int kbSharedFunctionUnitGetNumber(int function);


/**
 * Gets the shared function unit with the given function at index. 
 * @param int function, int index
 * @returns int
 */
int kbSharedFunctionUnitGetByIndex(int function, int index);


/**
 * Creates a building placement with the given name (no concurrent duplicates), returns the bpID. 
 * @param string name
 * @returns int
 */
int kbBuildingPlacementCreate(string name);


/**
 * Destroys the bpID, freeing up its name/potential existing lot too. 
 * @param int bpID
 * @returns void
 */
void kbBuildingPlacementDestroy(int bpID);


/**
 * Returns whether the bpID is valid or not. 
 * @param int bpID
 * @returns bool
 */
bool kbBuildingPlacementGetIsIDValid(int bpID);


/**
 * Returns the bpID's state, cBuildingPlacementPlacementState constants. 
 * @param int bpID
 * @returns int
 */
int kbBuildingPlacementGetState(int bpID);


/**
 * Returns the bpID's placement type, cBuildingPlacementPlacementType constants. 
 * @param int bpID
 * @returns int
 */
int kbBuildingPlacementGetPlacementType(int bpID);


/**
 * Returns the bpID's base ID, which is only set via kbBuildingPlacementSetBaseID. 
 * @param int bpID
 * @returns int
 */
int kbBuildingPlacementGetBaseID(int bpID);


/**
 * Sets the bpID's buffer space, must be >= 0.0. This control the minimum distance the building will be placed away from anything else that also has obstruction. Defaults to 2.0. 
 * @param int bpID, float bufferSpace
 * @returns void
 */
void kbBuildingPlacementSetBufferSpace(int bpID, float bufferSpace);


/**
 * Returns the buffer space set for this bpID. 
 * @param int bpID
 * @returns float
 */
float kbBuildingPlacementGetBufferSpace(int bpID);


/**
 * Sets how big the step sizes are with which the bpID goes through the grid assigned to analyze. Default is 2.0.This is used for every placement type apart from socket. Example: you use kbBuildingPlacementSetCenterPosition(X/Z = 10.0, 5.0). This means that we will analyze all the spots between X/Z = 5.0 and X/Z = 15.0. The stepSize is used to increment X and Z until we've analyzed all spots. If we for this example take a stepSize of 5.0 we get the following: X=5, X=10, X=15 with Z remaining 5 are analyzed in the first run (we analyze one X row at a time and then increment Z). After this first run we increment Z with 5.0 (stepSize) and go again like follows: X=5, X=10, X=15 with Z being 10. And then we do our last run and we get 9 total spots that we've analyzed. Big stepSizes means that we analyze fewer spots/less precise but the building placement goes faster. Because if you use kbBuildingPlacementSetBaseID we need to analyze all the spots in a base, with a low stepSize that can take a while. 
 * @param int bpID, float stepSize
 * @returns void
 */
void kbBuildingPlacementSetStepSize(int bpID, float stepSize);


/**
 * Sets the building that will be used during all the analysis of the given bpID. This must be a protoUnit, it can't be an abstractType. 
 * @param int bpID, int buildingTypeID
 * @returns void
 */
void kbBuildingPlacementSetBuildingPUID(int bpID, int buildingTypeID);


/**
 * Gets the building set by kbBuildingPlacementSetBuildingPUID for the given bpID. 
 * @param int bpID
 * @returns int
 */
int kbBuildingPlacementGetBuildingPUID(int bpID);


/**
 * Puts this bpID into Base PlacementType using center position calculations, only one Type can be active at a time! This resets all influences, so do this first! Sets the base ID for this bpID which can be fetched via kbBuildingPlacementGetBaseID. Setting a base ID works as follows: it adds the center position of the base as the center position for the analysis. And it then adds the distance of the base as the distance. Thus a base with a center on X/Z=50 and a range of 25.0 makes it analyze everything from X/Z=25 to X/Z=75. Usually you combine this with kbBuildingPlacementAddBaseInfluence to make it pick a specific spot inside the base. 
 * @param int bpID, int baseID, int orientationPreference
 * @returns void
 */
void kbBuildingPlacementSetBaseID(int bpID, int baseID, int orientationPreference);


/**
 * Sets this bpID into Socket PlacementType, only one Type can be active at a time! Sets the bpID's socket ID, which must be a valid unit ID. 
 * @param int bpID, int socketID
 * @returns void
 */
void kbBuildingPlacementSetSocketID(int bpID, int socketID);


/**
 * Puts this bpID into Dock building mode with Area PlacementType using area calculations, only one Type can be active at a time! Sets the two points from which the building placement will calculate a possible Dock position. It will create a path as the crow flies between both points and must find a shoreline area on the way (the landPosition is included as the first waypoint on this path). Once it has found a shoreline area it will check all areas surrounding that specific shoreline area, and if they're also of the type shoreline it will add them too to the list of areas to analyze. These automatically added areas have no influence added to them and don't add border areas, they're just valid spots. The landPosition and waterPosition both get a position influence of 100 value in 100 range with linear falloff. 
 * @param int bpID, vector landPosition, vector waterPosition
 * @returns void
 */
void kbBuildingPlacementSetDockPositions(int bpID, vector landPosition, vector waterPosition);


/**
 * Puts this bpID into CenterPosition PlacementType, only one Type can be active at a time! This resets all influences, so do this first! Read the explanation for kbBuildingPlacementSetStepSize to learn how this works. 
 * @param int bpID, vector position, float distance
 * @returns void
 */
void kbBuildingPlacementSetCenterPosition(int bpID, vector position, float distance);


/**
 * Puts this bpID into area PlacementType using area calculations, only one Type can be active at a time! This resets all influences, so do this first! Adds all areas belonging to the areaGroupID to the given bpID. It also adds the center of the areas as a position influence of: 100 range, 30 value, and linear falloff. 
 * @param int bpID, int areaGroupID
 * @returns void
 */
void kbBuildingPlacementSetAreaGroupID(int bpID, int areaGroupID);


/**
 * Puts this bpID into area PlacementType using area calculations, only one Type can be active at a time! You can call this function multiple times per bpID to add multiple areas, that's why it's called "add" and not "set". Adds the AreaID to the bpID, addCenterInfluence adds a positional influence from the areaID center with 100 value, 30 range, and linear falloff. If numberBorderAreaLayers is 1 we loop through all our border areas and add them in the same way we did the original areaID (but no center influence). If numberBorderAreaLayers is 2 we also loop through all the newly added areas and add all their border areas too (no duplicates will be created). You can put numberBorderAreaLayers as high as you want but it will of course create the biggest placement ever. 
 * @param int bpID, int areaID, int numberBorderAreaLayers, bool addCenterInfluence
 * @returns void
 */
void kbBuildingPlacementAddAreaID(int bpID, int areaID, int numberBorderAreaLayers, bool addCenterInfluence);


/**
 * Adds a unit influence to the bpID, you can only do this AFTER setting your PlacementType. Example: the spot we're analyzing is at X/Z=15. We have a unit influence for cUnitTypeHouse with 25.0 value, 5.0 distance, and linear falloff. There is a House located at X/Z=12.5, now the following happens: The House is within 5.0 distance of our spot so the unit influence will be analyzed. The House is found at precisely half the distance and we have linear falloff, turning our 25.0 value into 12.5 being added to this spot's value. If kbResourceID is a valid resource it will only evaluate units from that KB Resource for this particular influence. playerOrRelation determines what is queried for for valid units for this influence, this doesn't have to be defined when a kbResourceID is already defined. 
 * @param int bpID, int unitTypeID, float influenceValue, float influenceDistance, int falloff, int kbResourceID, int playerOrRelation
 * @returns void
 */
void kbBuildingPlacementAddUnitInfluence(int bpID, int unitTypeID, float influenceValue, float influenceDistance, int falloff, int kbResourceID, int playerOrRelation);


/**
 * Adds a base influence to the bpID, you can only do this AFTER setting your PlacementType. It's called BaseInfluence because of the input variables, but in the end this just adds a special position influence to the bpID. For the first step it works like any other position influence and calculates the value as normal using the commonly used parameters. But then there are 2 important/unique things: 1. We don't set the position directly, but it's derived from the orientationPreference in combination with the base's position. 2. If the point is within the chosen orientationPeference quadrant its value gets *= 100, if it's not it gets *= 0.1. 
 * @param int bpID, int baseID, int orientationPreference, float influenceValue, int falloff
 * @returns void
 */
void kbBuildingPlacementAddBaseInfluence(int bpID, int baseID, int orientationPreference, float influenceValue, int falloff);


/**
 * Adds the position influence for the given bpID, you can only do this AFTER setting your PlacementType. This works precisely the same as kbBuildingPlacementAddUnitInfluence but instead of looking for a unit within range we just increase the value if the position is within range. 
 * @param int bpID, vector position, float influenceValue, float influenceDistance, int falloff
 * @returns void
 */
void kbBuildingPlacementAddPositionInfluence(int bpID, vector position, float influenceValue, float influenceDistance, int falloff);


/**
 * In base mode every building placement has an mechanic active that prefers positions within an "inner ring" over positions in the "outer ring". So even if a position in the outer ring has 100000 value and the position in the inner ring has 10 value the inner ring position will always be chosen. This mechanic is used to make sure we build close to the base's center wherever possible, because building too far away is potentially very bad. The default value for this is set to 37.50 on every building placement. Putting it to your base's size or above practically removes this mechanic from the placement. 
 * @param int bpID, float innerRingRange
 * @returns void
 */
void kbBuildingPlacementSetInnerRingRange(int bpID, float innerRingRange);


/**
 * Sets the minimum value a spot must have to be considered valid for the provided bpID. Defaults to 0.0. 
 * @param int bpID, float minimumValue
 * @returns void
 */
void kbBuildingPlacementSetMinimumValue(int bpID, float minimumValue);


/**
 * Sets if the bpID will randomize the results a bit. Defaults to false.It will chose a number between -50% and +50% of the original value. 
 * @param int bpID, bool randomness
 * @returns void
 */
void kbBuildingPlacementSetRandomness(int bpID, bool randomness);


/**
 * Sets if the given bpID will take current GP Exclusion effects into account. Defaults to true. 
 * @param int bpID, bool exclusion
 * @returns void
 */
void kbBuildingPlacementSetCheckGPExclusion(int bpID, bool exclusion);


/**
 * Sets the given bpID's LOS type. If set to cBuildingPlacementLOSNormal (default) the location must have active visibility or be under fog to be valid. If set to cBuildingPlacementFullVisible the location must have active visibility to be valid. Regardless of the mode, any spot in the blackmap is not valid. 
 * @param int bpID, int LOSType
 * @returns void
 */
void kbBuildingPlacementSetLOSType(int bpID, int LOSType);


/**
 * Sets if the given BPID's obstruction check should fail if there is any obstruction at all. Ordinarily units are ignored in this obstruction check since they can move off the foundation. But with this to true units will also cause specific spots to fail. 
 * @param int bpID, bool requiresCompletelyUnobstructed
 * @returns void
 */
void kbBuildingPlacementSetRequiresCompletelyUnobstructed(int bpID, bool requiresCompletelyUnobstructed);


/**
 * Starts the bpID's process of analyzing all the possible spots. Depending on the amount of spots that have to be analyzed this may take longer than a second. If this bpID is part of a build/godpower plan the plan will start it itself, and will also automatically destroy it. If we're manually managing the bpID it won't be automatically started/destroyed. 
 * @param int bpID
 * @returns void
 */
void kbBuildingPlacementStart(int bpID);


/**
 * Returns the best result's position for bpID. 
 * @param int bpID
 * @returns vector
 */
vector kbBuildingPlacementGetBestResultPosition(int bpID);


/**
 * Returns the best result's value for bpID. 
 * @param int bpID
 * @returns float
 */
float kbBuildingPlacementGetBestResultValue(int bpID);


/**
 * Resets the given bpID's PlacementType and influences, allowing you to configure it again without errors. 
 * @param int bpID
 * @returns void
 */
void kbBuildingPlacementClearPlacementType(int bpID);


/**
 * Sets an event handler for the bpID and event, use cBuildingPlacementEvent. 
 * @param int bpID, int eventType, string handlerName
 * @returns void
 */
void kbBuildingPlacementSetEventHandler(int bpID, int eventType, string handlerName);


/**
 * Returns if the provided protoPowerID corresponds to a valid god power. 
 * @param int protoPowerID
 * @returns bool
 */
bool kbGodPowerGetIsIDValid(int protoPowerID);


/**
 * Returns the name of the given protoPowerID. 
 * @param int protoPowerID
 * @returns string
 */
string kbGodPowerGetName(int protoPowerID);


/**
 * Returns the ID for the given protoPowerName. 
 * @param string protoPowerName
 * @returns int
 */
int kbGodPowerGetID(string protoPowerName);


/**
 * returns whether that God Power type, for that player, is currently in effect 
 * @param int protoPowerID, int playerID
 * @returns bool
 */
bool kbGodPowerCheckActive(int protoPowerID, int playerID);


/**
 * returns whether that God Power type is currently in effect 
 * @param int protoPowerID
 * @returns bool
 */
bool kbGodPowerCheckActiveForAnyPlayer(int protoPowerID);


/**
 * returns the number of available charges/uses of given God Power for a player 
 * @param int protoPowerID, int playerID
 * @returns int
 */
int kbGodPowerGetNumCharges(int protoPowerID, int playerID);


/**
 * returns whether the given God Power, for that player, is currently under cooldown 
 * @param int protoPowerID, int playerID
 * @returns bool
 */
bool kbGodPowerIsOnCooldown(int protoPowerID, int playerID);


/**
 * returns the number of times the given God Power has been used by the given player 
 * @param int protoPowerID, int playerID
 * @returns int
 */
int kbGodPowerGetNumUsedTimes(int protoPowerID, int playerID);


/**
 * returns 'true' if the given God Power is infinitely castable by the given player 
 * @param int protoPowerID, int playerID
 * @returns bool
 */
bool kbGodPowerIsRepeatable(int protoPowerID, int playerID);


/**
 * returns the current cost of the given God Power for the given player 
 * @param int protoPowerID, int playerID, bool includePrePurchased
 * @returns float
 */
float kbGodPowerGetCost(int protoPowerID, int playerID, bool includePrePurchased);


/**
 * returns the current base cost of the given God Power within power data for the given player 
 * @param int protoPowerID, int playerID
 * @returns float
 */
float kbGodPowerGetDataCost(int protoPowerID, int playerID);


/**
 * returns the current base repeat cost of the given God Power within power data for the given player 
 * @param int protoPowerID, int playerID
 * @returns float
 */
float kbGodPowerGetDataRepeatCost(int protoPowerID, int playerID);


/**
 * returns 'true' if the given God Power is currently pre-purchasable by the given player 
 * @param int protoPowerID, int playerID
 * @returns bool
 */
bool kbGodPowerCanPrePurchase(int protoPowerID, int playerID);


/**
 * returns the current cost of pre-purchasing the provided number of charges of a God Power for the given player 
 * @param int protoPowerID, int numUses, int playerID
 * @returns float
 */
float kbGodPowerGetPrePurchaseCost(int protoPowerID, int numUses, int playerID);


/**
 * returns the current number of pre-purchased uses/charges of a God Power for the given player 
 * @param int protoPowerID, int playerID
 * @returns int
 */
int kbGodPowerGetNumPrePurchasedUses(int protoPowerID, int playerID);


/**
 * Returns the protoPowerID of the god power that is currently in the slotIndex for the given playerID. 
 * @param int slotIndex, int playerID
 * @returns int
 */
int kbGodPowerGetIDInSlot(int slotIndex, int playerID);


/**
 * Returns the radius of the provided protoPowerID for the given playerID. 
 * @param int protoPowerID, int playerID
 * @returns float
 */
float kbGodPowerGetRadius(int protoPowerID, int playerID);


/**
 * TODO. 
 * @param int index
 * @returns vector
 */
vector kbGodPowerCastEventGetCastLocation(int index);


/**
 * TODO. 
 * @param int index
 * @returns int
 */
int kbGodPowerCastEventInfoGetCaster(int index);


/**
 * TODO. 
 * @param int index
 * @returns int
 */
int kbGodPowerCastEventInfoGetProtoPower(int index);


/**
 * Returns the gold amount required to buy 100 of the given resource. 
 * @param int resourceID
 * @returns float
 */
float kbGetMarketBuyCost(int resourceID);


/**
 * Returns the gold amount received for selling 100 of the given resource. 
 * @param int resourceID
 * @returns float
 */
float kbGetMarketSellReward(int resourceID);


/**
 * Returns the resource ID. 
 * @param string resName
 * @returns int
 */
int kbGetResourceID(string resName);


/**
 * Returns the unitType ID. 
 * @param string typeName
 * @returns int
 */
int kbGetUnitTypeID(string typeName);


/**
 * Gets the value of any given KB Stat as integer. 
 * @param int playerID, int statID, int param
 * @returns int
 */
int kbGetStatValueInt(int playerID, int statID, int param);


/**
 * Gets the value of a given KB Stat as float. 
 * @param int playerID, int statID, int param
 * @returns float
 */
float kbGetStatValueFloat(int playerID, int statID, int param);


/**
 * Gets current amount of the given resource. 
 * @param int playerID, int resourceID
 * @returns float
 */
float kbGetResourceAmount(int playerID, int resourceID);


/**
 * Gets total amount of given resource so far. 
 * @param int playerID, int resourceID
 * @returns float
 */
float kbGetTotalResourceAmount(int playerID, int resourceID);


/**
 * Gets the number of units killed of the given unitType. 
 * @param string unitTypeName, int playerID
 * @returns int
 */
int kbGetNumberUnitTypeKilled(string unitTypeName, int playerID);


/**
 * Returns a quick unit count of units for a player. 
 * @param string unitTypeName, int playerID, int stateID, bool excludeKnockout
 * @returns int
 */
int kbUnitTypeCount(string unitTypeName, int playerID, int stateID, bool excludeKnockout);


/**
 * Returns a quick unit count of units for a player, within the vicinity of the given center unit. 
 * @param string unitTypeName, int playerID, int stateID, int centerUnitID, float radius
 * @returns int
 */
int kbUnitTypeCountInArea(string unitTypeName, int playerID, int stateID, int centerUnitID, float radius);


/**
 * Returns the ID of the protounit. 
 * @param string name
 * @returns int
 */
int kbProtoUnitGetID(string name);


/**
 * Returns the hashed ID for a given animation name. 
 * @param string animName
 * @returns int
 */
int kbGetAnimationID(string animName);


/**
 * Returns the number of pop slots currently occupied by this unit type. 
 * @param int unitTypeID, int playerID
 * @returns int
 */
int kbGetPopulationSlotsByUnitTypeID(int unitTypeID, int playerID);


/**
 * Returns the ID of a random unit among the living units on the map, belonging to any player, including Mother Nature units.
 * @param 
 * @returns int
 */
int kbGetRandomUnitID();


/**
 * returns the id of the best building to repair. 
 * @param vector position, float distance, float healthRatio, int repairUnderAttackUnitTypeID
 * @returns int
 */
int kbFindBestBuildingToRepair(vector position, float distance, float healthRatio, int repairUnderAttackUnitTypeID);


/**
 * Returns the combat efficiency of the comparison (in terms of playerID1's units). 
 * @param int playerID1, int unitTypeID1, int playerID2, int unitTypeID2, bool ignoreTrainCheck
 * @returns float
 */
float kbGetCombatEfficiency(int playerID1, int unitTypeID1, int playerID2, int unitTypeID2, bool ignoreTrainCheck);


/**
 * Returns a quick unit count of units for a player. 
 * @param int unitTypeID, int playerID, int stateID
 * @returns int
 */
int kbUnitCount(int unitTypeID, int playerID, int stateID);


/**
 * Returns whether this map is an island map or not. If not every land area group has a land path to every other land area group this will return true.
 * @param 
 * @returns bool
 */
bool kbGetIslandMap();


/**
 * checks whether we have FFA turned on or not.
 * @param 
 * @returns bool
 */
bool kbGetIsFFA();


/**
 * Returns allied trading bonus.
 * @param 
 * @returns float
 */
float kbGetAlliedTradingBonus();


/**
 * Returns how long a KOTH needs to be held for for the team to win, in seconds.
 * @param 
 * @returns int
 */
int kbGetKOTHVictoryTime();


/**
 * Cheats and looks at all of the units on the map. This will format your harddrive if you're not authorized to use it. 
 * @param bool ignoreNature
 * @returns void
 */
void kbLookAtAllUnitsOnMap(bool ignoreNature);


/**
 * Returns the total number of steps to complete the progression. 
 * @param int progressionID
 * @returns int
 */
int kbProgressionGetTotalNodes(int progressionID);


/**
 * Returns the total cost of the given resource for this progressionID. A resourceID of -1 will return the total Cost. 
 * @param int progressionID, int resourceID
 * @returns float
 */
float kbProgessionGetTotalResourceCost(int progressionID, int resourceID);


/**
 * Returns the type of node at the given index, either Unit type or Tech type. 
 * @param int progressionID, int nodeIndex
 * @returns int
 */
int kbProgressionGetNodeType(int progressionID, int nodeIndex);


/**
 * Returns the data at nodeIndex, either UnitID or TechID, depending on the type. 
 * @param int progressionID, int nodeIndex
 * @returns int
 */
int kbProgressionGetNodeData(int progressionID, int nodeIndex);


/**
 * Creates a unit progression of the given name. 
 * @param string unitName, string name
 * @returns int
 */
int kbCreateUnitProgression(string unitName, string name);


/**
 * Creates a tech progression of the given name. 
 * @param string techName, string name
 * @returns int
 */
int kbCreateTechProgression(string techName, string name);


/**
 * Returns the current tech status for the provided techID. Takes prereqs into account if checkPrereqs is set to true. The return values correspond with the cTechStatus constants. 
 * @param int techID, bool checkPrereqs
 * @returns int
 */
int kbTechGetStatus(int techID, bool checkPrereqs);


/**
 * Returns the percent complete for the provided techID. The return value will be within 0.0 and 1.0. (inclusive) 
 * @param int techID
 * @returns float
 */
float kbTechGetPercentComplete(int techID);


/**
 * Returns the research points for the provided techID. 
 * @param int techID
 * @returns float
 */
float kbTechGetResearchPoints(int techID);


/**
 * Returns the name for the provided techID. 
 * @param int techID
 * @returns string
 */
string kbTechGetName(int techID);


/**
 * Returns if the flag is set for the given techID. 
 * @param int techID, int flag
 * @returns bool
 */
bool kbTechGetFlag(int techID, int flag);


/**
 * gets cheapest researchable unit upgrade, optionally for specified unit/unit line. 
 * @param int protoUnitID, int researcherTypeID
 * @returns int
 */
int kbTechTreeGetCheapestUnitUpgrade(int protoUnitID, int researcherTypeID);


/**
 * Returns all technology IDs of the technologies that are obtainable to us (excluding age ups and technologies which prereqs we haven't met), the IDs correspond to the cTech constants. If needAliveResearcher is true we exclude technologies for which we have no building alive to research it. 
 * @param bool needAliveResearcher
 * @returns int[]
 */
int[] kbTechTreeGetAllObtainableTechnologies(bool needAliveResearcher);


/**
 * Returns all PUIDs that are available to us and that can research the provided techID. 
 * @param int techID
 * @returns int[]
 */
int[] kbTechTreeGetResearchers(int techID);


/**
 * Returns if the provided techID affects the provided unitTypeID. Detail: this only looks at cEffectTypeData effects. 
 * @param int techID, int unitTypeID
 * @returns bool
 */
bool kbTechAffectsUnitType(int techID, int unitTypeID);


/**
 * Returns if the techID affects work rate in any way, for this resourceID must be left at -1. If resourceID is defined it will return if the techID affects the work rate of a specific resourceID. 
 * @param int techID, int resourceID
 * @returns bool
 */
bool kbTechAffectsWorkRate(int techID, int resourceID);


/**
 * Returns if the player can afford the provided techID with the current resource stockpile. If provided the escrow will be taken into account. 
 * @param int techID, int escrowID
 * @returns bool
 */
bool kbTechCanAfford(int techID, int escrowID);


/**
 * Returns the cost of the provided techID for the given resourceID. 
 * @param int techID, int resourceID
 * @returns float
 */
float kbTechCostPerResource(int techID, int resourceID);


/**
 * Returns the cost of the provided techID, without taking AI weights into account. 
 * @param int techID
 * @returns float[]
 */
float[] kbTechGetCost(int techID);


/**
 * Returns the total cost of the provided techID, takes AI weights into account. 
 * @param int techID
 * @returns float
 */
float kbTechGetCostTotal(int techID);


/**
 * Returns the number of "<Effect>" nodes of the tech. CAUTION: this number also includes effects that we're unable to give any information for. Only the " type='Data' " is supported with all other syscalls. For example: a technology could have 4 effects, 3 are data changing effects and one effect sets another tech to active ("type='TechStatus'"). Using this syscall will give you back the number 4. But if you now loop over these 4 effects you only have syscalls to access information from the Data effect one. So the index at which the TechStatus effect lives will return -1 for all syscalls and should be immediately skipped in the script. 
 * @param int techID
 * @returns int
 */
int kbTechGetNumberEffects(int techID);


/**
 * Returns the effect type of the given techID at the given effectIndex. The return values correspond with the cEffectType constants. For anything else than cDataEffect there is no way to get more information sadly. 
 * @param int techID, int effectIndex
 * @returns int
 */
int kbTechGetEffectType(int techID, int effectIndex);


/**
 * Inserts (loc)strings into (loc)strings. 
 * @param string format, string[] inserts
 * @returns string
 */
string trFormatString(string format, string[] inserts);


/**
 * increment the current value of the counter. 
 * @param string name, int amount
 * @returns bool
 */
bool trCounterIncrementManual(string name, int amount);


/**
 * decrement the current value of the counter. 
 * @param string name, int amount
 * @returns bool
 */
bool trCounterDecrementManual(string name, int amount);


/**
 * sets the current value of the given manual counter. 
 * @param string name, int value
 * @returns bool
 */
bool trCounterSetManual(string name, int value);


/**
 * displays a player name as a counter. 
 * @param string name, string message, int playerID
 * @returns bool
 */
bool trCounterAddPlayerName(string name, string message, int playerID);


/**
 * changes the player name to be displayed on a given player name pseudocounter. 
 * @param string name, int playerID
 * @returns bool
 */
bool trCounterSetPlayerName(string name, int playerID);


/**
 * start a counter that may or may not fire an event. 
 * @param string name, int start, int stop, string message, int eventID
 * @returns void
 */
void trCounterAddTime(string name, int start, int stop, string message, int eventID);


/**
 * forcibly sets the current value of a given counter. 
 * @param string name, int value
 * @returns void
 */
void trCounterTimeSetValue(string name, int value);


/**
 * start a counter that may or may not fire an event. 
 * @param string name, int start, int stop, string message, int eventID
 * @returns void
 */
void trCounterAddTimeMs(string name, int start, int stop, string message, int eventID);


/**
 * pause a counter. 
 * @param string name, bool pause
 * @returns void
 */
void trCounterPause(string name, bool pause);


/**
 * hides or displays a counter. 
 * @param string name, bool visible
 * @returns void
 */
void trCounterSetVisibility(string name, bool visible);


/**
 * returns the current value of the given counter. 
 * @param string name
 * @returns int
 */
int trCounterGetValue(string name);


/**
 * abort a counter. 
 * @param string name
 * @returns void
 */
void trCounterAbort(string name);


/**
 * TODO. 
 * @param string message
 * @returns void
 */
void trSetCounterDisplay(string message);


/**
 * TODO.
 * @param 
 * @returns void
 */
void trClearCounterDisplay();


/**
 * enables or disables persistency for a counter. Persistent counters aren't deleted even after reaching their maximum value. 
 * @param string name, bool persistent
 * @returns void
 */
void trCounterPersistent(string name, bool persistent);


/**
 * sets whether or not a given counter should be restricted to specific players, and, if so, assigns the given player to the counter.. 
 * @param string name, bool playerSpecific, int playerID
 * @returns void
 */
void trCounterPlayerSpecific(string name, bool playerSpecific, int playerID);


/**
 * start an XS-based counter, that may or may not fire an event. The name of this counter is also a QV under the hood that can be adjusted at will. If you attached an xsCall to this counter the QV variable will be updated each frame so doing custom things to it won't have an effect. 
 * @param string name, string msg, string appendMsg, string xsCall, int eventID, int initialVal, int finalVal, bool finalAsMin, bool showFinal, bool reverseCount, bool startAtZero
 * @returns void
 */
void trCounterAddGenericXS(string name, string msg, string appendMsg, string xsCall, int eventID, int initialVal, int finalVal, bool finalAsMin, bool showFinal, bool reverseCount, bool startAtZero);


/**
 * pause or unpause the game. 
 * @param bool pause
 * @returns void
 */
void trGamePause(bool pause);


/**
 * adds a rule to the runtime to be activated on the next update. 
 * @param string name, bool checkForTrigger
 * @returns void
 */
void trDelayedRuleActivation(string name, bool checkForTrigger);


/**
 * Clears the waypoints in the trigger selection system.
 * @param 
 * @returns void
 */
void trWaypointClear();


/**
 * Adds the waypoint into the trigger selection system. 
 * @param vector v
 * @returns void
 */
void trWaypointAddPoint(vector v);


/**
 * Adds the unit's position as a waypoint in the trigger selection system. 
 * @param int unitID
 * @returns void
 */
void trWaypointAddUnitPosition(int unitID);


/**
 * Clears the units in the trigger selection system.
 * @param 
 * @returns void
 */
void trUnitSelectClear();


/**
 * 'Selects' the unit in the trigger selection system. 
 * @param int unitID
 * @returns void
 */
void trUnitSelectByID(int unitID);


/**
 * Returns true if the specified player is built on the specified socket. 
 * @param int playerID, int unitID
 * @returns bool
 */
bool trPlayerControlsSocket(int playerID, int unitID);


/**
 * Returns true if the object is currently being worked. 
 * @param int unitID
 * @returns bool
 */
bool trObjectGettingWorked(int unitID);


/**
 * Moves the selected unit(s) to the given position. 
 * @param float x, float y, float z, int eventID, bool bAttackMove, bool bUnitRun, float runSpeedMultiplier
 * @returns bool
 */
bool trUnitMoveToPoint(float x, float y, float z, int eventID, bool bAttackMove, bool bUnitRun, float runSpeedMultiplier);


/**
 * Moves the selected unit(s) to the spot occupied by the given unit. 
 * @param int unitID, int eventID, bool bAttackMove, bool bUnitRun, float runSpeedMultiplier
 * @returns bool
 */
bool trUnitMoveToUnit(int unitID, int eventID, bool bAttackMove, bool bUnitRun, float runSpeedMultiplier);


/**
 * Finds the specified revealer and sets it to active or inactive. 
 * @param string revealerName, bool active
 * @returns void
 */
void trSetRevealerActiveState(string revealerName, bool active);


/**
 * Creates a revealer with the given attributes. 
 * @param int playerID, string revealerName, vector position, float revealerLOS, bool blackmapOnly
 * @returns void
 */
void trCreateRevealer(int playerID, string revealerName, vector position, float revealerLOS, bool blackmapOnly);


/**
 * Moves all matching units near the selected unit(s) to the given position. 
 * @param float x, float y, float z, int eventID, bool bAttackMove, int playerID, string unitType, float radius
 * @returns bool
 */
bool trUnitMoveFromArea(float x, float y, float z, int eventID, bool bAttackMove, int playerID, string unitType, float radius);


/**
 * Selects units and makes the build a unit at specified location. 
 * @param string protoName, vector position, vector forward
 * @returns bool
 */
bool trUnitBuildUnit(string protoName, vector position, vector forward);


/**
 * Tasks the selected unit(s) to perform work on the given unit. 
 * @param int unitID, int eventID
 * @returns bool
 */
bool trUnitDoWorkOnUnit(int unitID, int eventID);


/**
 * Tasks the selected unit(s) to garrision into another unit. 
 * @param int unitID, int eventID
 * @returns bool
 */
bool trUnitGarrison(int unitID, int eventID);


/**
 * Instantly garrisons units inside another unit without considering distance. 
 * @param int unitID
 * @returns bool
 */
bool trImmediateUnitGarrison(int unitID);


/**
 * Returns the shortest distance between the trRT units and the point. 
 * @param float x, float y, float z
 * @returns float
 */
float trUnitDistanceToPoint(float x, float y, float z);


/**
 * Returns the shortest distance between the trRT units and the given unit. 
 * @param int unitID
 * @returns float
 */
float trUnitDistanceToUnitID(int unitID);


/**
 * Removes the current control action so the next thing can take effect immediately.
 * @param 
 * @returns void
 */
void trUnitRemoveControlAction();


/**
 * Sets the cinematic animation version for the selected unit(s). 
 * @param string animName, int versionIndex, bool loop, int eventID, bool destroyOnNextControlAction
 * @returns bool
 */
bool trUnitSetAnimation(string animName, int versionIndex, bool loop, int eventID, bool destroyOnNextControlAction);


/**
 * Sets the cinematic animation version for the selected unit(s). 
 * @param string animName, string animPath, bool loop, int eventID, bool destroyOnNextControlAction
 * @returns bool
 */
bool trUnitSetAnimationPath(string animName, string animPath, bool loop, int eventID, bool destroyOnNextControlAction);


/**
 * Returns true if all selected units are alive.
 * @param 
 * @returns bool
 */
bool trUnitAlive();


/**
 * Returns true if all selected units are dead.
 * @param 
 * @returns bool
 */
bool trUnitDead();


/**
 * Returns true if all selected units are fully built.
 * @param 
 * @returns bool
 */
bool trUnitFullyBuilt();


/**
 * removes or kills the selected unit(s). 
 * @param bool remove
 * @returns bool
 */
bool trUnitDelete(bool remove);


/**
 * destroys the selected unit(s). 
 * @param bool ejectContained
 * @returns bool
 */
bool trUnitDestroy(bool ejectContained);


/**
 * creates a new unit. 
 * @param string protoName, float x, float y, float z, int heading, int playerID, bool skipBirth
 * @returns int
 */
int trUnitCreate(string protoName, float x, float y, float z, int heading, int playerID, bool skipBirth);


/**
 * creates a new unit, ignoring placement rules. 
 * @param string protoName, float x, float y, float z, int heading, int playerID, bool skipBirth
 * @returns int
 */
int trUnitCreateForced(string protoName, float x, float y, float z, int heading, int playerID, bool skipBirth);


/**
 * creates a new relic from defined relic name. 
 * @param float x, float y, float z, int heading, string relicName
 * @returns bool
 */
bool trRelicCreate(float x, float y, float z, int heading, string relicName);


/**
 * changes type of selected relic to the given relic name. 
 * @param int unitID, string relicName
 * @returns bool
 */
bool trRelicForce(int unitID, string relicName);


/**
 * returns the units heading. 
 * @param int unitID
 * @returns int
 */
int trUnitGetHeading(int unitID);


/**
 * sets the units heading. 
 * @param int degrees
 * @returns bool
 */
bool trUnitSetHeading(int degrees);


/**
 * returns the unit's position. 
 * @param int unitID
 * @returns vector
 */
vector trUnitGetPosition(int unitID);


/**
 * returns true if the player can see the selected unit, and it is on screen. Desync sensitive.
 * @param 
 * @returns bool
 */
bool trUnitVisibleToPlayer();


/**
 * returns true if the player can see the selected unit, otherwise returns false. 
 * @param int playerID
 * @returns bool
 */
bool trUnitHasLOS(int playerID);


/**
 * converts the selected units to player. 
 * @param int playerID
 * @returns void
 */
void trUnitConvert(int playerID);


/**
 * returns the percent complete as 0 to 100
 * @param 
 * @returns int
 */
int trUnitPercentComplete();


/**
 * returns the percent damaged as 0 to 100
 * @param 
 * @returns float
 */
float trUnitPercentDamaged();


/**
 * moves units from current position to position specified 
 * @param float x, float y, float z
 * @returns bool
 */
bool trUnitTeleport(float x, float y, float z);


/**
 * changes the proto unit for a given set of units. 
 * @param string protoName, bool skipBirth, bool forceFoundation
 * @returns void
 */
void trUnitChangeProtoUnit(string protoName, bool skipBirth, bool forceFoundation);


/**
 * activates delayed transform (e.g. as used for Roc state change) action within selected units, whenever applicable.
 * @param 
 * @returns void
 */
void trUnitDelayedTransform();


/**
 * performs the transformation defined by the unit's transform command (e.g. heroization, etc.) immediately, whenever applicable.
 * @param 
 * @returns void
 */
void trUnitTransformCommand();


/**
 * Resets Market buy and sell prices to default values.
 * @param 
 * @returns void
 */
void trMarketReset();


/**
 * Sets the gather point of the unit on this position. 
 * @param int playerID, int unitID, float xpos, float ypos, float zpos
 * @returns void
 */
void trUnitSetGatherPointPosForPlayer(int playerID, int unitID, float xpos, float ypos, float zpos);


/**
 * cast timeshift on this unit at this position. 
 * @param int unitID, float posX, float posY, float posZ
 * @returns bool
 */
bool trBuildingTimeShiftAtPos(int unitID, float posX, float posY, float posZ);


/**
 * Sets the gather point of the unit on this unit. 
 * @param int playerID, int sourceID, int targetID
 * @returns void
 */
void trUnitSetGatherPointUnitForPlayer(int playerID, int sourceID, int targetID);


/**
 * ungarrisons all contained units.
 * @param 
 * @returns void
 */
void trUnitUngarrisonContained();


/**
 * Fetches number of selected units.
 * @param 
 * @returns int
 */
int trUnitGetNumberManuallySelected();


/**
 * returns true if any unit is selected.
 * @param 
 * @returns bool
 */
bool trAnythingIsSelected();


/**
 * returns if the specified unit is selected.
 * @param 
 * @returns bool
 */
bool trUnitIsSelected();


/**
 * returns if at least one unit of the specified unit type is selected. 
 * @param string proto, bool checkIdle
 * @returns bool
 */
bool trUnitTypeIsSelected(string proto, bool checkIdle);


/**
 * returns if the cursor is hovering over the given unit type. 
 * @param string proto
 * @returns bool
 */
bool trUnitTypeIsHovered(string proto);


/**
 * determines if the selected units are owned by the player specified. 
 * @param int playerID
 * @returns bool
 */
bool trUnitIsOwnedBy(int playerID);


/**
 * determines if the selected units are not owned by the player specified. 
 * @param int playerID
 * @returns bool
 */
bool trUnitIsNotOwnedBy(int playerID);


/**
 * set the stance for the given set of units. 
 * @param string stance
 * @returns void
 */
void trUnitSetStance(string stance);


/**
 * sets the scale for the given set of units. 
 * @param float scaleX, float scaleY, float scaleZ
 * @returns void
 */
void trUnitSetScale(float scaleX, float scaleY, float scaleZ);


/**
 * does something to highlight the units selected. 
 * @param float duration, bool flash
 * @returns void
 */
void trUnitHighlight(float duration, bool flash);


/**
 * highlights all units belonging to the given protounit for a player. 
 * @param int playerID, string protoName, float duration, bool flash
 * @returns void
 */
void trProtoUnitHighlight(int playerID, string protoName, float duration, bool flash);


/**
 * Returns true if the proto unit specified is on the cursor and is a building. 
 * @param string proto
 * @returns bool
 */
bool trBuildingIsOnCursor(string proto);


/**
 * tributes resources to a player. 
 * @param int playerID, string resource, int amount, int toPlayerID
 * @returns void
 */
void trPlayerTribute(int playerID, string resource, int amount, int toPlayerID);


/**
 * returns true/false if the player has been defeated. 
 * @param int playerID
 * @returns bool
 */
bool trPlayerIsDefeated(int playerID);


/**
 * returns true/false if the player is active. 
 * @param int playerID
 * @returns bool
 */
bool trPlayerIsActive(int playerID);


/**
 * call this when a player is defeated on the local machine (meaning that this func must be called synchronously on all machines, it will not pass around a command.) 
 * @param int i
 * @returns void
 */
void trPlayerSetDefeated(int i);


/**
 * sets the diplomacy status between players. 
 * @param int player1, int player2, string status, bool mutual
 * @returns void
 */
void trPlayerSetDiplomacy(int player1, int player2, string status, bool mutual);


/**
 * gets the diplomacy status between players. 
 * @param int player1, int player2
 * @returns string
 */
string trPlayerGetDiplomacy(int player1, int player2);


/**
 * Adds/removes LOS between players. 
 * @param int destPlayer, bool canSee, int srcPlayer
 * @returns void
 */
void trPlayerModifyLOS(int destPlayer, bool canSee, int srcPlayer);


/**
 * sets the active player. 
 * @param int playerID
 * @returns void
 */
void trPlayerSetActive(int playerID);


/**
 * Completes the specified objective. Forces a reoccurring objective complete if forceComplete is true. 
 * @param int objectiveID, bool forceComplete, bool playSound
 * @returns void
 */
void trObjectiveComplete(int objectiveID, bool forceComplete, bool playSound);


/**
 * Hides the specified objective on the UI. 
 * @param int objectiveID
 * @returns void
 */
void trObjectiveHide(int objectiveID);


/**
 * Shows the specified objective on the UI. 
 * @param int objectiveID, bool playSound
 * @returns void
 */
void trObjectiveShow(int objectiveID, bool playSound);


/**
 * returns true if player is at pop cap. 
 * @param int playerID
 * @returns bool
 */
bool trPlayerAtPopCap(int playerID);


/**
 * sets a handler function for an event id. 
 * @param int eventID, string functionName
 * @returns bool
 */
bool trEventSetHandler(int eventID, string functionName);


/**
 * cause an event to occur. 
 * @param int eventID
 * @returns void
 */
void trEventFire(int eventID);


/**
 * Sets whether or not units can do their idle processing. 
 * @param bool v
 * @returns void
 */
void trSetUnitIdleProcessing(bool v);


/**
 * Sets whether or not units can be drawn obscured or not. 
 * @param bool v
 * @returns void
 */
void trSetObscuredUnits(bool v);


/**
 * Plays the sound associated with the filename. 
 * @param string filename, int eventID, string subtitle, string portrait
 * @returns void
 */
void trSoundPlayFN(string filename, int eventID, string subtitle, string portrait);


/**
 * Plays the sound associated with the filename. 
 * @param string filename, string seconds, int eventID, string subtitle, string portrait
 * @returns void
 */
void trSoundPlayPaused(string filename, string seconds, int eventID, string subtitle, string portrait);


/**
 * trSoundTimer(int32 milliseconds, int32 eventID) creates a high performance sound timer and passes the eventID as data. 
 * @param int ms, int eventID
 * @returns void
 */
void trSoundTimer(int ms, int eventID);


/**
 * returns true if tech is active for player. 
 * @param int playerID, int techID
 * @returns bool
 */
bool trTechStatusActive(int playerID, int techID);


/**
 * returns true if tech is being researched for player. 
 * @param int playerID, int techID
 * @returns bool
 */
bool trTechStatusResearching(int playerID, int techID);


/**
 * returns true if tech's status is techStatus. 
 * @param int playerID, int techID, int status
 * @returns bool
 */
bool trTechStatusCheck(int playerID, int techID, int status);


/**
 * gets the villager priority preset for player. 
 * @param int playerID
 * @returns int
 */
int trPlayerGetVillagerPriority(int playerID);


/**
 * sets the tech status for the player. 
 * @param int playerID, int techID, int status
 * @returns void
 */
void trTechSetStatus(int playerID, int techID, int status);


/**
 * turn fog and black map on/off. (SP modes only) 
 * @param bool fog, bool black
 * @returns void
 */
void trSetFogAndBlackmap(bool fog, bool black);


/**
 * selects the units in the army specified. 
 * @param string parameters
 * @returns void
 */
void trArmySelect(string parameters);


/**
 * selects the units in the army specified. 
 * @param int playerID, int armyID
 * @returns void
 */
void trArmySelectInt(int playerID, int armyID);


/**
 * creates the units in the army specified. 
 * @param string army, string protoname, int count, float x, float y, float z, int heading, bool clearExisting, bool skipBirth
 * @returns bool
 */
bool trArmyDispatch(string army, string protoname, int count, float x, float y, float z, int heading, bool clearExisting, bool skipBirth);


/**
 * scales the formation size of formations in the game. 
 * @param float scale
 * @returns void
 */
void trFormationScale(float scale);


/**
 * modify construction rate. 
 * @param float rate
 * @returns void
 */
void trRateConstruction(float rate);


/**
 * modify training rate. 
 * @param float rate
 * @returns void
 */
void trRateTrain(float rate);


/**
 * modify research rate. 
 * @param float rate
 * @returns void
 */
void trRateResearch(float rate);


/**
 * Resets all the rates to normal (1.0f).
 * @param 
 * @returns void
 */
void trRatesReset();


/**
 * Sends a Minimap flare to a certain player. 
 * @param int playerID, float duration, vector pPosition, bool unused
 * @returns void
 */
void trMinimapFlare(int playerID, float duration, vector pPosition, bool unused);


/**
 * Makes the camera shake. 
 * @param float shakeDuration, float shakeStrength
 * @returns void
 */
void trCameraShake(float shakeDuration, float shakeStrength);


/**
 * Resets the black map for a given HUMAN player. 
 * @param int playerID
 * @returns void
 */
void trPlayerResetBlackMap(int playerID);


/**
 * trPlayerResetBlackMapForAllPlayers(Resets the black map for all HUMAN players.
 * @param 
 * @returns void
 */
void trPlayerResetBlackMapForAllPlayers();


/**
 * Kills all of the buildings of a given player. 
 * @param int playerID
 * @returns void
 */
void trPlayerKillAllBuildings(int playerID);


/**
 * advances the campaign. 
 * @param int playerID, string resource, int amount
 * @returns void
 */
void trPlayerGrantResources(int playerID, string resource, int amount);


/**
 * Sets the selected unit as having the fake player with the specified index (0-7) 
 * @param int fakePlayerIndex
 * @returns void
 */
void trFakifySelection(int fakePlayerIndex);


/**
 * Fakifies the army to the specified fake player index. 
 * @param string armyName, int fakePlayerIndex
 * @returns void
 */
void trFakifyArmy(string armyName, int fakePlayerIndex);


/**
 * Sets the selected unit as not having a fake player.
 * @param 
 * @returns void
 */
void trDefakifySelection();


/**
 * Defakifies the army. 
 * @param string armyName
 * @returns void
 */
void trDefakifyArmy(string armyName);


/**
 * Sets named submodels of the selection to fake player with the specified index (0-7) 
 * @param string submodelOverrideName, int fakePlayerIndex
 * @returns void
 */
void trFakifySelectionSubModelByOverrideName(string submodelOverrideName, int fakePlayerIndex);


/**
 * Resets all submodels back to using the player colour of the parent model.
 * @param 
 * @returns void
 */
void trDefakifySelectionSubModels();


/**
 * Returns how many units you currently have selected.
 * @param 
 * @returns int
 */
int trSelectionGetNumber();


/**
 * Returns the ID of the selected unit. 
 * @param int index
 * @returns int
 */
int trSelectionGetUnitID(int index);


/**
 * TODO. 
 * @param bool val
 * @returns void
 */
void trSetPauseOnAgeUpgrade(bool val);


/**
 * TODO. 
 * @param bool val
 * @returns void
 */
void trSetPauseInObjectiveWindow(bool val);


/**
 * shows whole map, similar to how revealed mode works (SP modes only)
 * @param 
 * @returns void
 */
void trRevealEntireMap();


/**
 * does % percent of a unit's total HP in instant typeless damage. 
 * @param float damagePercent
 * @returns void
 */
void trDamageUnitPercent(float damagePercent);


/**
 * does a specific amount of damage to HP in instant typeless damage. 
 * @param float damageAmt
 * @returns void
 */
void trDamageUnit(float damageAmt);


/**
 * All units within dist of the selected ref object that match type take dmg. 
 * @param int playerID, string unitTypeName, float range, float dmg
 * @returns void
 */
void trDamageUnitsInArea(int playerID, string unitTypeName, float range, float dmg);


/**
 * sets one of the trigger scratch variables 
 * @param string varName, float val
 * @returns void
 */
void trQuestVarSet(string varName, float val);


/**
 * copies value of one of the trigger scratch variables 
 * @param string destName, string fromName
 * @returns void
 */
void trQuestVarCopy(string destName, string fromName);


/**
 * sets one of the trigger scratch variables within a random range 
 * @param string varName, float minVal, float maxVal, bool round
 * @returns void
 */
void trQuestVarSetFromRand(string varName, float minVal, float maxVal, bool round);


/**
 * sets one of the trigger scratch variables within a random range, while avoiding repeating consecutive values 
 * @param string varName, float minVal, float maxVal, bool round
 * @returns void
 */
void trQuestVarSetFromRandUnique(string varName, float minVal, float maxVal, bool round);


/**
 * retrieve value of a trigger scratch variable, returns zero if unset 
 * @param string varName
 * @returns float
 */
float trQuestVarGet(string varName);


/**
 * chats out the value of one of the trigger scratch variables 
 * @param string varName
 * @returns void
 */
void trQuestVarEcho(string varName);


/**
 * Moves the selected unit(s) to face the given unit. 
 * @param int unitID, int eventID
 * @returns bool
 */
bool trUnitFaceUnit(int unitID, int eventID);


/**
 * Turns letter box mode on or off. Letterbox toggles the black border around the screen while in cinematic mode. 
 * @param bool on, bool letterbox
 * @returns void
 */
void trLetterBox(bool on, bool letterbox);


/**
 * Loads a camera track. 
 * @param string szName
 * @returns void
 */
void trCameraTrackLoad(string szName);


/**
 * plays the current camera track, if blend with game camera is true, it will best fit the strategy camera location at the last waypoint and smooth transition to it. 
 * @param float fDuration, int eventID, bool blendWithGameCamera, float blendDurationMS
 * @returns void
 */
void trCameraTrackPlay(float fDuration, int eventID, bool blendWithGameCamera, float blendDurationMS);


/**
 * returns the abort cinematic status.
 * @param 
 * @returns bool
 */
bool trCinematicIsAborted();


/**
 * aborts the cinematic.
 * @param 
 * @returns void
 */
void trCinematicDoAbort();


/**
 * loads and plays a camera track for a given player, if blend with game camera is true, it will best fit the strategy camera location at the last waypoint and smooth transition to it. 
 * @param string camTrackName, int playerID, bool blendWithGameCamera, float blendDurationMS
 * @returns void
 */
void trCameraTrackPlayPlayer(string camTrackName, int playerID, bool blendWithGameCamera, float blendDurationMS);


/**
 * puts the camera in the specified location for the given player. 
 * @param int playerID, vector pos, vector dir, vector up, vector right
 * @returns void
 */
void trCameraCutPlayer(int playerID, vector pos, vector dir, vector up, vector right);


/**
 * puts the camera in the specified location. 
 * @param vector pos, vector dir, vector up, vector right
 * @returns void
 */
void trCameraCut(vector pos, vector dir, vector up, vector right);


/**
 * Orients the camera to the selected unit, and keeps it locked on that unit. 
 * @param bool bEnable, int timer, int eventID
 * @returns void
 */
void trCameraLockOnUnit(bool bEnable, int timer, int eventID);


/**
 * Moves the camera in the same direction that a particular unit moves. 
 * @param bool bEnable, int eventID
 * @returns void
 */
void trCameraPanWithUnit(bool bEnable, int eventID);


/**
 * Toggles camera movement locking over the current position. 
 * @param bool lock
 * @returns void
 */
void trCameraLock(bool lock);


/**
 * fades to the specified lighting set over fadetime. 
 * @param string setName, float fadeTime
 * @returns void
 */
void trSetLighting(string setName, float fadeTime);


/**
 * Disables (sets active = false) the trigger specified by the given eventID. 
 * @param int eventID
 * @returns void
 */
void trDisableTrigger(int eventID);


/**
 * Makes a unit invulnerable to damage. Turn it off to return the unit to normal. 
 * @param bool bEnable
 * @returns void
 */
void trUnitMakeInvulnerable(bool bEnable);


/**
 * No help. 
 * @param int playerID, string planName
 * @returns void
 */
void trKillAIPlan(int playerID, string planName);


/**
 * Sets the attack response distance for the provided playerID's AI if it has one. This distance controls from what within distance the AI will call other units to help if one of its units gets attacked. 
 * @param int playerID, float AttackResponseDistance
 * @returns void
 */
void trAISetAttackResponseDistance(int playerID, float AttackResponseDistance);


/**
 * Adds the units in the specified army to the specified plan. 
 * @param string armyName, string planName
 * @returns void
 */
void trAddArmyToPlan(string armyName, string planName);


/**
 * Enable or disables the shadow far clippping plane. 
 * @param bool enabled, float distance
 * @returns void
 */
void trSetShadowFarClip(bool enabled, float distance);


/**
 * Overrides the culture used for choosing the player's art. 
 * @param int playerID, string culture
 * @returns void
 */
void trPlayerOverrideArtCulture(int playerID, string culture);


/**
 * Removes all of the units of a given player without affecting Player Stats. 
 * @param int playerID
 * @returns void
 */
void trPlayerRemoveAllUnits(int playerID);


/**
 * Marks a specified objective as incomplete. 
 * @param int objectiveID, bool playSound
 * @returns void
 */
void trObjectiveIncomplete(int objectiveID, bool playSound);


/**
 * sets whether or not unit and building deletion should be disabled for this scenario. 
 * @param bool disable
 * @returns void
 */
void trDisableUnitDeletion(bool disable);


/**
 * sets whether or not persistent popcap notifications should be disabled for this scenario. 
 * @param bool disable
 * @returns void
 */
void trDisablePopCapNotifications(bool disable);


/**
 * sets whether or not notification sounds should be disabled for this scenario. 
 * @param bool disable
 * @returns void
 */
void trDisableNotificationSounds(bool disable);


/**
 * sets whether or not power casting notifications should be disabled for this scenario. 
 * @param bool disable
 * @returns void
 */
void trDisablePowerNotifications(bool disable);


/**
 * sets whether or not displaying timers for active powers should be disabled for this scenario. 
 * @param bool disable
 * @returns void
 */
void trDisablePowerTimers(bool disable);


/**
 * sets whether or not AI assist support should be enforced for this scenario. 
 * @param bool enable
 * @returns void
 */
void trEnforceAIAssist(bool enable);


/**
 * temporarily disables or re-enables conquest victory check in a scenario that supports it. 
 * @param bool disable
 * @returns void
 */
void trDisableConquestCheck(bool disable);


/**
 * All units within dist of the selected ref object that match type are converted to the target player. 
 * @param int srcPlayer, int trgPlayer, string unitTypeName, float range
 * @returns void
 */
void trConvertUnitsInArea(int srcPlayer, int trgPlayer, string unitTypeName, float range);


/**
 * All units within dist of the selected ref object that match type are killed. 
 * @param int playerID, string unitTypeName, float range
 * @returns void
 */
void trKillUnitsInArea(int playerID, string unitTypeName, float range);


/**
 * All units within dist of the selected ref object that match type are killed. 
 * @param int playerID, string unitTypeName, float range, bool ejectContained
 * @returns void
 */
void trRemoveUnitsInArea(int playerID, string unitTypeName, float range, bool ejectContained);


/**
 * Overrides the string used for the displayed civilization name. 
 * @param int playerID, string name
 * @returns void
 */
void trPlayerOverrideCivName(int playerID, string name);


/**
 * enables or disables an action for a proto unit. 
 * @param string protoUnitName, int playerID, string actionName, bool enable
 * @returns void
 */
void trProtoUnitActionSetEnabled(string protoUnitName, int playerID, string actionName, bool enable);


/**
 * Modify the name and rollover text of a proto unit. 
 * @param string protoUnitName, int playerID, string nameStr, string rolloverStr, string shortRolloverStr
 * @returns void
 */
void trProtoUnitChangeName(string protoUnitName, int playerID, string nameStr, string rolloverStr, string shortRolloverStr);


/**
 * Modify the icon of a proto unit. 
 * @param string protoUnitName, int playerID, string iconPath, string minimapIconPath
 * @returns void
 */
void trProtoUnitSetIcon(string protoUnitName, int playerID, string iconPath, string minimapIconPath);


/**
 * set an override name for a specific unit in an army 
 * @param string newName, string protoUnitName
 * @returns void
 */
void trArmyUnitChangeName(string newName, string protoUnitName);


/**
 * returns whether the given player is a human or a computer/AI player. 
 * @param int playerID
 * @returns int
 */
int trPlayerGetType(int playerID);


/**
 * Returns true if all selected units have an attack target or are attacking. 
 * @param bool actionOnly
 * @returns bool
 */
bool trUnitHasTarget(bool actionOnly);


/**
 * Returns the attack target for the given unit. 
 * @param int srcUnit, bool actionOnly
 * @returns int
 */
int trUnitGetTargetID(int srcUnit, bool actionOnly);


/**
 * Returns true if all selected units are attacking.
 * @param 
 * @returns bool
 */
bool trUnitIsAttacking();


/**
 * enables or disables Passive Mode for selected Units. 
 * @param bool enable
 * @returns bool
 */
bool trUnitSetPassiveMode(bool enable);


/**
 * Teleport the selected unit(s) to the spot occupied by the given unit. 
 * @param int unitID
 * @returns bool
 */
bool trUnitTeleportToUnit(int unitID);


/**
 * adjust the units' hitpoints by the given value. 
 * @param float healAmt
 * @returns void
 */
void trHealUnit(float healAmt);


/**
 * heals the selected units by a percentage of their total HP. 
 * @param float healPercent
 * @returns void
 */
void trHealUnitPercent(float healPercent);


/**
 * All units within dist of the selected ref object have their HPs adjusted by the given value. 
 * @param int playerID, string unitTypeName, float range, float healAmt
 * @returns void
 */
void trHealUnitsInArea(int playerID, string unitTypeName, float range, float healAmt);


/**
 * modifies proto unit action data for this scenario only. 
 * @param string unitTypeName, string protoUnitActionName, int playerID, int puField, float delta, int puRelativity
 * @returns void
 */
void trModifyProtounitAction(string unitTypeName, string protoUnitActionName, int playerID, int puField, float delta, int puRelativity);


/**
 * modifies proto unit data for this scenario only. 
 * @param string unitTypeName, int playerID, int puField, float delta, int puRelativity
 * @returns void
 */
void trModifyProtounitData(string unitTypeName, int playerID, int puField, float delta, int puRelativity);


/**
 * modifies proto unit data taking a resource parameter for this scenario only. 
 * @param string unitTypeName, string resource, int playerID, int puField, float delta, int puRelativity
 * @returns void
 */
void trModifyProtounitResource(string unitTypeName, string resource, int playerID, int puField, float delta, int puRelativity);


/**
 * modifies proto unit action data taking a unittype parameter for this scenario only. 
 * @param string unitTypeName, string actionName, string unitType, int playerID, int puField, float delta, int puRelativity
 * @returns void
 */
void trModifyProtounitActionUnitType(string unitTypeName, string actionName, string unitType, int playerID, int puField, float delta, int puRelativity);


/**
 * modifies proto unit action data by adding a new or adjusting an existing onHitEffect for this scenario only. 
 * @param string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, int dmgType, float duration, float value
 * @returns void
 */
void trProtounitActionSpecialEffect(string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, int dmgType, float duration, float value);


/**
 * modifies proto unit action data by adding a new or adjusting an existing onHitEffect taking a protoUnit parameter for this scenario only. 
 * @param string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, string protoUnit, float duration, float value
 * @returns void
 */
void trProtounitActionSpecialEffectProtoUnit(string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, string protoUnit, float duration, float value);


/**
 * modifies the duration of an existing onHitEffect within the given protoAction for this scenario only. 
 * @param string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, int dmgType, float delta, int puRelativity
 * @returns void
 */
void trProtounitActionSpecialEffectDuration(string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, int dmgType, float delta, int puRelativity);


/**
 * modifies proto unit action data by adding a new or adjusting an existing onHitEffect and assigning a new stat modifier to it for this scenario only. 
 * @param string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, float value, int modifyType, int dmgType
 * @returns void
 */
void trProtounitActionSpecialEffectModifier(string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, float value, int modifyType, int dmgType);


/**
 * modifies proto unit action data by setting a specified existing onHitEffect as active or inactive. 
 * @param string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, int dmgType, bool active
 * @returns void
 */
void trProtounitActionSpecialEffectActive(string unitTypeName, string protoUnitActionName, int playerID, int effectTypeID, string targetType, int dmgType, bool active);


/**
 * modifies proto unit movement type for this scenario only. 
 * @param string unitTypeName, int playerID, string movementType
 * @returns void
 */
void trProtoUnitMovementType(string unitTypeName, int playerID, string movementType);


/**
 * assigns a train entry towards the given protoUnit for this scenario only. 
 * @param string protoUnitName, int playerID, string trainPUName, int row, int column
 * @returns void
 */
void trProtounitAddTrain(string protoUnitName, int playerID, string trainPUName, int row, int column);


/**
 * assigns a tech entry towards the given protoUnit for this scenario only. 
 * @param string protoUnitName, int playerID, int techID, int row, int column
 * @returns void
 */
void trProtounitAddTech(string protoUnitName, int playerID, int techID, int row, int column);


/**
 * assigns a protoUnitCommand entry towards the given protoUnit for this scenario only. 
 * @param string protoUnitName, int playerID, string puCmdName, int row, int column
 * @returns void
 */
void trProtounitAddCommand(string protoUnitName, int playerID, string puCmdName, int row, int column);


/**
 * removes a train entry from the given protoUnit for this scenario only. 
 * @param string protoUnitName, int playerID, string trainPUName
 * @returns void
 */
void trProtounitRemoveTrain(string protoUnitName, int playerID, string trainPUName);


/**
 * removes a tech entry from the given protoUnit for this scenario only. 
 * @param string protoUnitName, int playerID, int techID
 * @returns void
 */
void trProtounitRemoveTech(string protoUnitName, int playerID, int techID);


/**
 * removes a protoUnitCommand entry from the given protoUnit for this scenario only. 
 * @param string protoUnitName, int playerID, string puCmdName
 * @returns void
 */
void trProtounitRemoveCommand(string protoUnitName, int playerID, string puCmdName);


/**
 * modifies the reseach points of the given technology for this scenario only. 
 * @param int techID, int playerID, float delta, int techRelativity
 * @returns void
 */
void trTechModifyResearchPoints(int techID, int playerID, float delta, int techRelativity);


/**
 * modifies the cost of the given technology for this scenario only. 
 * @param int techID, int playerID, int resourceID, float delta, int techRelativity
 * @returns void
 */
void trTechModifyCost(int techID, int playerID, int resourceID, float delta, int techRelativity);


/**
 * sets a given string field of a technology to the given string ID for this scenario only. 
 * @param int techID, int playerID, string stringID, int techStringFieldIdx
 * @returns void
 */
void trTechSetStringID(int techID, int playerID, string stringID, int techStringFieldIdx);


/**
 * replaces the icon of a technology for this scenario only. 
 * @param int techID, int playerID, int iconTechID
 * @returns void
 */
void trTechReplaceIconByTech(int techID, int playerID, int iconTechID);


/**
 * replaces the icon of a technology for this scenario only. 
 * @param int techID, int playerID, string iconPath
 * @returns void
 */
void trTechSetIconPath(int techID, int playerID, string iconPath);


/**
 * sets whether or not effects should be hidden in the rollover for the given technology for this scenario only. 
 * @param int techID, int playerID, bool hide
 * @returns void
 */
void trTechHideEffects(int techID, int playerID, bool hide);


/**
 * returns true/false if the player has resigned or has been defeated. 
 * @param int playerID
 * @returns bool
 */
bool trPlayerIsDefeatedOrResigned(int playerID);


/**
 * returns true/false if the player civilization matches the given parameter. 
 * @param int playerID, string civilization
 * @returns bool
 */
bool trPlayerGetCivilization(int playerID, string civilization);


/**
 * All units within dist of the selected ref object have their HPs adjusted by the given factor. 
 * @param int playerID, string unitTypeName, float range, float healPercent
 * @returns void
 */
void trHealUnitsPercentInArea(int playerID, string unitTypeName, float range, float healPercent);


/**
 * All units within dist of the selected ref object are damaged by the given factor. 
 * @param int playerID, string unitTypeName, float range, float dmgPercent
 * @returns void
 */
void trDamageUnitsPercentInArea(int playerID, string unitTypeName, float range, float dmgPercent);


/**
 * Returns true if there isn't a fully-built building occupying the specified socket. 
 * @param int unitID
 * @returns bool
 */
bool trSocketIsEmpty(int unitID);


/**
 * creates a new unit. 
 * @param string protoName, int srcUnitID, int trgUnitID, int playerID
 * @returns bool
 */
bool trUnitCreateFromSource(string protoName, int srcUnitID, int trgUnitID, int playerID);


/**
 * sets forbid conversion accordingly for the selected units towards the given player. 
 * @param int playerID, bool forbid
 * @returns void
 */
void trUnitSetConvertible(int playerID, bool forbid);


/**
 * Auto-constructs a building over a given socket unit. 
 * @param int playerID, int socketID, string protoName
 * @returns void
 */
void trSocketBuild(int playerID, int socketID, string protoName);


/**
 * modifies player data for this scenario only. 
 * @param int playerID, int dataField, int attribute, float delta, int puRelativity
 * @returns void
 */
void trPlayerModifyData(int playerID, int dataField, int attribute, float delta, int puRelativity);


/**
 * modifies timeshifting cost ratio for a given protoUnit for this scenario only. 
 * @param int playerID, string protoName, float delta, int relativity
 * @returns void
 */
void trPlayerTimeshiftModifyCost(int playerID, string protoName, float delta, int relativity);


/**
 * adds a timeshifting entry towards the given protoUnit to a player for this scenario only. 
 * @param int playerID, string protoName, float costRatio, float timeRatio
 * @returns void
 */
void trPlayerTimeshiftAddEntry(int playerID, string protoName, float costRatio, float timeRatio);


/**
 * modifies player data for this scenario only. 
 * @param int playerID, int dataField, int resourceID, float delta, int puRelativity
 * @returns void
 */
void trPlayerModifyResourceData(int playerID, int dataField, int resourceID, float delta, int puRelativity);


/**
 * creates multiple units from a source object. 
 * @param string protoName, int srcUnitID, int trgUnitID, int playerID, int count
 * @returns bool
 */
bool trUnitCreateFromSourceMulti(string protoName, int srcUnitID, int trgUnitID, int playerID, int count);


/**
 * Sets the specified objective as failed. 
 * @param int objectiveID, bool playSound
 * @returns void
 */
void trObjectiveFailed(int objectiveID, bool playSound);


/**
 * Instantiates an objective marker and binds it to the given objective. 
 * @param int objectiveID, string name, vector markerPos
 * @returns void
 */
void trObjectiveCreateMarker(int objectiveID, string name, vector markerPos);


/**
 * Removes the specified objective marker from the given objective. 
 * @param int objectiveID, string name
 * @returns void
 */
void trObjectiveRemoveMarker(int objectiveID, string name);


/**
 * Forces the objective panel to always display. 
 * @param bool value
 * @returns void
 */
void trForceShowObjectivePanel(bool value);


/**
 * puts the camera in the location of a saved camera state, for the given player, or for all players, if no player is set. 
 * @param int id, int playerID
 * @returns void
 */
void trCameraStateView(int id, int playerID);


/**
 * Executes a command on the AI player. 
 * @param int playerID, string command
 * @returns bool
 */
bool trExecuteOnAI(int playerID, string command);


/**
 * disables the given tech for the player, and removes it from the UI of the given protoUnit. 
 * @param int playerID, string protoUnitName, int techID
 * @returns void
 */
void trTechRemove(int playerID, string protoUnitName, int techID);


/**
 * grants X uses of the specified God Power to the player. 
 * @param int playerID, string protoPowerName, int numUses, int cooldown, bool useCost, bool repeatAtEnd
 * @returns void
 */
void trGodPowerGrant(int playerID, string protoPowerName, int numUses, int cooldown, bool useCost, bool repeatAtEnd);


/**
 * grants X uses of the specified god power in a specific God Power UI slot. 
 * @param int playerID, string protoPowerName, int numUses, int position, int cooldown, bool useCost, bool repeatAtEnd
 * @returns void
 */
void trGodPowerGrantAtSlot(int playerID, string protoPowerName, int numUses, int position, int cooldown, bool useCost, bool repeatAtEnd);


/**
 * pre-purchases X uses of the specified God Power to the player, if applicable. 
 * @param int playerID, string protoPowerName, int numUses
 * @returns bool
 */
bool trGodPowerPrePurchase(int playerID, string protoPowerName, int numUses);


/**
 * invokes the specified God Power. 
 * @param int playerID, string protoPowerName, vector pos1, vector pos2, bool ignoreCooldown, bool setAsQueued
 * @returns void
 */
void trGodPowerInvoke(int playerID, string protoPowerName, vector pos1, vector pos2, bool ignoreCooldown, bool setAsQueued);


/**
 * Kills all of the current God Powers of a player. 
 * @param int playerID
 * @returns void
 */
void trPlayerKillAllGodPowers(int playerID);


/**
 * Enables/Disables the Tech Tree from granting God Powers to a player. Default=ON. 
 * @param int playerID, bool bEnable
 * @returns void
 */
void trPlayerTechTreeEnabledGodPowers(int playerID, bool bEnable);


/**
 * Sets whether or not God Power blocking is enabled. Default=ON. 
 * @param bool enable
 * @returns void
 */
void trGodPowerEnableBlocking(bool enable);


/**
 * sets the cost of the specified God Power for the given player. 
 * @param int playerID, string protoPowerName, float cost, float repeatCost
 * @returns void
 */
void trGodPowerSetCost(int playerID, string protoPowerName, float cost, float repeatCost);


/**
 * sets the number of charges of the specified God Power for the given player. 
 * @param int playerID, string protoPowerName, int numUses
 * @returns void
 */
void trGodPowerSetUseCount(int playerID, string protoPowerName, int numUses);


/**
 * overrides the number of timesthe specified God Power has been used. 
 * @param int playerID, string protoPowerName, int numUsedTimes
 * @returns void
 */
void trGodPowerSetUsedTimes(int playerID, string protoPowerName, int numUsedTimes);


/**
 * sets the cooldown of the specified God Power for the given player. 
 * @param int playerID, string protoPowerName, int cooldown
 * @returns void
 */
void trGodPowerSetCooldown(int playerID, string protoPowerName, int cooldown);


/**
 * replaces the icon, and display name and rollover strings of a power for the given player. 
 * @param int playerID, string protoPowerName, string iconPath, string displayName, string rollover
 * @returns void
 */
void trGodPowerRedefine(int playerID, string protoPowerName, string iconPath, string displayName, string rollover);


/**
 * Sets all units within dist of the selected ref object as having the fake player with the specified index (0-7). 
 * @param int fakePlayerIndex, int srcPlayerID, string unitTypeName, float range
 * @returns void
 */
void trUnitPlayerFakifyInArea(int fakePlayerIndex, int srcPlayerID, string unitTypeName, float range);


/**
 * Moves all matching units near the selected unit(s) to the given target unit. 
 * @param int unitID, bool bAttackMove, int playerID, string unitType, float radius
 * @returns bool
 */
bool trUnitMoveFromAreaToUnit(int unitID, bool bAttackMove, int playerID, string unitType, float radius);


/**
 * Sets the displayed name for the given player. 
 * @param int playerID, string name
 * @returns void
 */
void trPlayerSetName(int playerID, string name);


/**
 * Sets the player color for the given player. 
 * @param int playerID, int playerColorID, int r, int g, int b
 * @returns void
 */
void trPlayerSetColor(int playerID, int playerColorID, int r, int g, int b);


/**
 * places a foundation for the given building and returns the ID of the foundation. 
 * @param string protoName, float x, float y, float z, int heading, int playerID, float pctComplete
 * @returns int
 */
int trPlaceFoundation(string protoName, float x, float y, float z, int heading, int playerID, float pctComplete);


/**
 * Places a foundation into this socket unit. 
 * @param int playerID, int socketID, string protoName
 * @returns int
 */
int trSocketPlaceFoundation(int playerID, int socketID, string protoName);


/**
 * Moves the selected unit(s) to the given position. 
 * @param float x, float y, float z, bool bUnitRun, float runSpeedMultiplier
 * @returns bool
 */
bool trUnitPatrolToPoint(float x, float y, float z, bool bUnitRun, float runSpeedMultiplier);


/**
 * invokes the specified God Power at the specified army. 
 * @param int powerPlayerID, string army, string protoPowerName, bool ignoreCooldown, bool setAsQueued
 * @returns bool
 */
bool trGodPowerInvokeAtArmy(int powerPlayerID, string army, string protoPowerName, bool ignoreCooldown, bool setAsQueued);


/**
 * cancels all active god powers.
 * @param 
 * @returns void
 */
void trGodPowerCancelAll();


/**
 * set the units' hitpoints to the given value, respecting maximum hitpoints. 
 * @param float value
 * @returns void
 */
void trUnitSetHitpoints(float value);


/**
 * creates the units in the army specified at the location of the target unit. 
 * @param string army, string protoname, int count, int trgUnitID, int heading, bool clearExisting, bool skipBirth
 * @returns bool
 */
bool trArmyDispatchAtUnit(string army, string protoname, int count, int trgUnitID, int heading, bool clearExisting, bool skipBirth);


/**
 * Tasks the selected army to perform work on the first valid unit within the given arny. 
 * @param string srcArmy, string trgArmy, int eventID
 * @returns bool
 */
bool trArmyDoWorkOnArmy(string srcArmy, string trgArmy, int eventID);


/**
 * Sets whether or not starting units will be spawned for the given player. 
 * @param int playerID, bool allowSpawning
 * @returns void
 */
void trPlayerAllowStartingUnitsSpawning(int playerID, bool allowSpawning);


/**
 * Sets whether or not units will be spawned through age-up techs. 
 * @param int playerID, bool allowSpawning
 * @returns void
 */
void trPlayerAllowAgeUpSpawning(int playerID, bool allowSpawning);


/**
 * Sets whether or not the given player will be allowed to spawn shades. 
 * @param int playerID, bool allow
 * @returns void
 */
void trPlayerAllowShades(int playerID, bool allow);


/**
 * Sets whether or not partisan spawning will be enabled for the given player. 
 * @param int playerID, bool allow
 * @returns void
 */
void trPlayerEnablePartisans(int playerID, bool allow);


/**
 * Sets whether or not timeshifting will be enabled for the given player. 
 * @param int playerID, bool allow
 * @returns void
 */
void trPlayerEnableTimeshift(int playerID, bool allow);


/**
 * Sets or unsets the given unit type within the given protounit. 
 * @param int playerID, string srcUnitTypeName, string unitTypeName, bool set
 * @returns void
 */
void trProtoUnitSetUnitType(int playerID, string srcUnitTypeName, string unitTypeName, bool set);


/**
 * Sets or unsets the given flag within the given protounit. 
 * @param int playerID, string unitTypeName, string protoFlagName, bool set
 * @returns void
 */
void trProtoUnitSetFlag(int playerID, string unitTypeName, string protoFlagName, bool set);


/**
 * returns true if town bell has been recently unrung on the given unit. 
 * @param int unitID
 * @returns bool
 */
bool trTownBellUnrung(int unitID);


/**
 * returns true if town bell has been recently rung on the given unit. 
 * @param int unitID
 * @returns bool
 */
bool trTownBellRung(int unitID);


/**
 * Clears the given army, removing all unit IDs from army data. 
 * @param string army
 * @returns void
 */
void trArmyClear(string army);


/**
 * Returns true if all selected units are within terrain lush belonging to the given player. 
 * @param int playerID
 * @returns bool
 */
bool trUnitInLush(int playerID);


/**
 * Generates lush for all selected buildings, if owning player supports lush generation.
 * @param 
 * @returns void
 */
void trGenerateLush();


/**
 * Queues starting units for player if they have a starting TC. 
 * @param int playerID
 * @returns void
 */
void trQueueStartingUnits(int playerID);


/**
 * All units within dist of the selected ref object are changed into the given protoUnit. 
 * @param int playerID, string unitTypeName, float range, string dstProtoName, bool skipBirth
 * @returns void
 */
void trChangeProtoUnitInArea(int playerID, string unitTypeName, float range, string dstProtoName, bool skipBirth);


/**
 * Cancels all queued items for the unit. 
 * @param int unitID
 * @returns void
 */
void trUnitCancelAllQueued(int unitID);


/**
 * Reveals the currently selected units to the given player. 
 * @param int playerID, bool reveal
 * @returns void
 */
void trUnitReveal(int playerID, bool reveal);


/**
 * Sets the veterancy level for the selected units to the given rank, whenever applicable. 
 * @param int rankID
 * @returns void
 */
void trUnitSetVeterancyRank(int rankID);


/**
 * Returns true if all selected units are immobilized by a Freeze Action.
 * @param 
 * @returns bool
 */
bool trUnitImmobilized();


/**
 * Returns the world difficulty.
 * @param 
 * @returns int
 */
int trGetWorldDifficulty();


/**
 * modifies resource inventory for the selected units. 
 * @param int resourceID, float delta, int puRelativity
 * @returns void
 */
void trUnitModifyResourceInventory(int resourceID, float delta, int puRelativity);


/**
 * adds modifier for given modify type and parameter, when applicable, to selected units. 
 * @param int modifyType, int dmgType, float amount, float duration
 * @returns void
 */
void trUnitAddModifier(int modifyType, int dmgType, float amount, float duration);


/**
 * adjust existing modifier for given modify type and parameter, when applicable, to selected units. 
 * @param int modifyType, int dmgType, float delta, int relativityIdx
 * @returns void
 */
void trUnitAdjustModifier(int modifyType, int dmgType, float delta, int relativityIdx);


/**
 * assign the given shading type with the set opacity to the selected units. 
 * @param int shadingType, float opacity
 * @returns void
 */
void trUnitSetShading(int shadingType, float opacity);


/**
 * sets the orientation for the forward vector for the selected units. 
 * @param int degrees, bool disableTie
 * @returns bool
 */
bool trUnitSetOrientationForward(int degrees, bool disableTie);


/**
 * sets the orientation for the up vector for the selected units. 
 * @param int degrees, bool disableTie
 * @returns bool
 */
bool trUnitSetOrientationUp(int degrees, bool disableTie);


/**
 * sets the orientation for the right vector for the selected units. 
 * @param int degrees, bool disableTie
 * @returns bool
 */
bool trUnitSetOrientationRight(int degrees, bool disableTie);


/**
 * sets the position for the selected units to the given absolute coordinates. 
 * @param float x, float y, float z, bool disableTie, bool immediate
 * @returns bool
 */
bool trUnitReposition(float x, float y, float z, bool disableTie, bool immediate);


/**
 * sets the position for the selected units to the coordinates of the given unit. 
 * @param int unitID, bool disableTie, bool immediate
 * @returns bool
 */
bool trUnitRepositionToUnit(int unitID, bool disableTie, bool immediate);


/**
 * sets the variation for the selected units to the given value. 
 * @param int variation
 * @returns bool
 */
bool trUnitSetVariation(int variation);


/**
 * transforms selected units into the given protoUnit through PU mutation, maintaining original BUnit pointer. 
 * @param string protoName, bool fullHitpoints
 * @returns void
 */
void trUnitMutate(string protoName, bool fullHitpoints);


/**
 * performs a given protoAction through the selected units. 
 * @param string actionName, int targetID, vector targetPos, bool bypassCharge
 * @returns void
 */
void trUnitPerformAction(string actionName, int targetID, vector targetPos, bool bypassCharge);


/**
 * applys a given effect towards the selected units. 
 * @param int effectID, float duration
 * @returns void
 */
void trUnitApplyEffect(int effectID, float duration);


/**
 * applys a given effect with a damage value towards the selected units. 
 * @param int effectID, float duration, float damage, int dmgType
 * @returns void
 */
void trUnitApplyEffectDamage(int effectID, float duration, float damage, int dmgType);


/**
 * applys a given effect towards the selected units. 
 * @param int effectID, float duration, int playerID, string protoName
 * @returns void
 */
void trUnitApplyEffectProtoUnit(int effectID, float duration, int playerID, string protoName);


/**
 * Throws the selected units with the provided parameters. 
 * @param int direction, float distance, int numBounces, float maxHeight, float maxVelocity, float spinPeriod
 * @returns void
 */
void trUnitThrow(int direction, float distance, int numBounces, float maxHeight, float maxVelocity, float spinPeriod);


/**
 * transforms all units on the map belonging to the given unit type into the set protoUnit through PU mutation, maintaining original BUnit pointer. 
 * @param string srcUnitType, string trgProtoName, bool fullHitpoints
 * @returns void
 */
void trMapMutateUnits(string srcUnitType, string trgProtoName, bool fullHitpoints);


/**
 * transforms all units for a player belonging to the given unit type into the set protoUnit through PU mutation, maintaining original BUnit pointer. 
 * @param int playerID, string srcUnitType, string trgProtoName, bool fullHitpoints
 * @returns void
 */
void trPlayerMutateUnits(int playerID, string srcUnitType, string trgProtoName, bool fullHitpoints);


/**
 * transforms all units for a player belonging to the given unit type into the set protoUnit. Does not use PU mutation, and does not maintain original BUnit data. 
 * @param int playerID, string srcUnitType, string trgProtoName, bool skipBirth, bool forceFoundation
 * @returns void
 */
void trPlayerChangeProtoUnit(int playerID, string srcUnitType, string trgProtoName, bool skipBirth, bool forceFoundation);


/**
 * paints a rectangular area by the given terrain type and subtype. 
 * @param int terrainType, int terrainSubtype, float minX, float minZ, float maxX, float maxZ, bool updateObstructions
 * @returns void
 */
void trPaintTerrain(int terrainType, int terrainSubtype, float minX, float minZ, float maxX, float maxZ, bool updateObstructions);


/**
 * paints a rectangular area by the terrain identified by the given terrain subtype UI name. 
 * @param string subTypeName, float x0, float z0, float x1, float z1, bool updateObstructions
 * @returns void
 */
void trPaintTerrainBySubtypeName(string subTypeName, float x0, float z0, float x1, float z1, bool updateObstructions);


/**
 * paints a circular area by the given terrain type and subtype. 
 * @param int terrainType, int terrainSubtype, vector center, float radius, bool updateObstructions
 * @returns void
 */
void trPaintTerrainCircular(int terrainType, int terrainSubtype, vector center, float radius, bool updateObstructions);


/**
 * paints a circular area by the terrain identified by the given terrain subtype UI name. 
 * @param string subTypeName, vector center, float radius, bool updateObstructions
 * @returns void
 */
void trPaintTerrainCircularBySubtypeName(string subTypeName, vector center, float radius, bool updateObstructions);


/**
 * paints an area by the water entry identified by the given ID. 
 * @param int waterID, float minX, float minZ, float maxX, float maxZ, bool circular, bool updateObstructions
 * @returns void
 */
void trPaintWater(int waterID, float minX, float minZ, float maxX, float maxZ, bool circular, bool updateObstructions);


/**
 * paints a rectangular area by the water entry identified by the given name. 
 * @param string waterName, float x0, float z0, float x1, float z1, bool updateObstructions
 * @returns void
 */
void trPaintWaterRectangular(string waterName, float x0, float z0, float x1, float z1, bool updateObstructions);


/**
 * paints a circular area by the water entry identified by the given name. 
 * @param string waterName, vector center, float radius, bool updateObstructions
 * @returns void
 */
void trPaintWaterCircular(string waterName, vector center, float radius, bool updateObstructions);


/**
 * sets the terrain elevation for the provided rectangular region. 
 * @param float x0, float z0, float x1, float z1, float height, bool removeWater
 * @returns void
 */
void trChangeTerrainHeight(float x0, float z0, float x1, float z1, float height, bool removeWater);


/**
 * sets the terrain elevation for the provided circular region. 
 * @param vector center, float radius, float height, bool removeWater
 * @returns void
 */
void trChangeTerrainHeightCircular(vector center, float radius, float height, bool removeWater);


/**
 * fetches the terrain type ID for the given map position. 
 * @param vector center
 * @returns int
 */
int trGetTerrainType(vector center);


/**
 * fetches the terrain subtype ID for the given map position. 
 * @param vector center
 * @returns int
 */
int trGetTerrainSubtype(vector center);


/**
 * checks if the terrain at the given map position matches the expected terrain subtype. 
 * @param string subTypeName, vector center
 * @returns bool
 */
bool trTerrainAtPosition(string subTypeName, vector center);


/**
 * fetches the water type ID for the given map position. 
 * @param vector center
 * @returns int
 */
int trGetWaterType(vector center);


/**
 * checks if the water at the given map position matches the expected water type. 
 * @param string waterName, vector center
 * @returns bool
 */
bool trWaterAtPosition(string waterName, vector center);


/**
 * returns the terrain height at the given map position. 
 * @param vector center
 * @returns float
 */
float trGetTerrainHeight(vector center);


/**
 * replaces the civilization for the given player. 
 * @param int playerID, string civName
 * @returns void
 */
void trPlayerSetCiv(int playerID, string civName);


/**
 * returns the ID for the next unit to be allocated.
 * @param 
 * @returns int
 */
int trGetNextUnitID();


/**
 * returns an array containing recently created units. If auto-resetting is set, returns units created on the last frame.
 * @param 
 * @returns int[]
 */
int[] trGetRecentUnits();


/**
 * resets list of recently-created units.
 * @param 
 * @returns void
 */
void trResetRecentUnits();


/**
 * sets whether or not the list of recently-created units should be reset at each frame. Set to true by default. 
 * @param bool enable
 * @returns void
 */
void trSetAutoResetRecentUnits(bool enable);


/**
 * overrides the score for a player by the given value. 
 * @param int playerID, int score
 * @returns void
 */
void trPlayerSetScore(int playerID, int score);


/**
 * adjust the overridden score value for a player by the given delta. 
 * @param int playerID, int delta
 * @returns void
 */
void trPlayerAdjustScore(int playerID, int delta);


/**
 * tells the challenge system this rule was activated. 
 * @param string ruleName
 * @returns void
 */
void trDisableRule(string ruleName);


/**
 * returns the variation ID for the given skybox. 
 * @param string skyboxName
 * @returns int
 */
int trGetSkyboxVariationID(string skyboxName);


/**
 * returns the unit ID for the current skybox, if applicable.
 * @param 
 * @returns int
 */
int trGetCurrentSkyboxUnitID();


/**
 * Turn sky rendering on/off and set which sky to use. 
 * @param bool val, string skyName, int orientation, float height, bool terrainHeight
 * @returns void
 */
void trRenderSky(bool val, string skyName, int orientation, float height, bool terrainHeight);


/**
 * Trigger echo. 
 * @param string text
 * @returns void
 */
void trEcho(string text);


/**
 * returns the current player.
 * @param 
 * @returns int
 */
int trCurrentPlayer();


/**
 * sets the current player as active or inactive. 
 * @param bool active
 * @returns void
 */
void trSetCurrentPlayerStatus(bool active);


/**
 * sets the player controls on or off. 
 * @param bool active
 * @returns void
 */
void trSetUserControls(bool active);


/**
 * forces the cursor (mouse pointer) to be shown/hidden. 
 * @param bool show
 * @returns void
 */
void trSetShowCursor(bool show);


/**
 * Fades out current music over a given duration. 
 * @param float duration
 * @returns void
 */
void trFadeOutMusic(float duration);


/**
 * Plays the next song in the music play list.
 * @param 
 * @returns void
 */
void trPlayNextMusicTrack();


/**
 * Fades out all sounds over a given duration. 
 * @param float duration
 * @returns void
 */
void trFadeOutAllSounds(float duration);


/**
 * Blocks all sounds from playing from this point forward. 
 * @param bool dialog
 * @returns void
 */
void trBlockAllSounds(bool dialog);


/**
 * Unblocks all sounds that were previously blocked from playing.
 * @param 
 * @returns void
 */
void trUnblockAllSounds();


/**
 * blocks all ambient sounds from this point forward
 * @param 
 * @returns void
 */
void trBlockAllAmbientSounds();


/**
 * Unblocks all ambient sounds that were previously blocked from playing.
 * @param 
 * @returns void
 */
void trUnBlockAllAmbientSounds();


/**
 * Plays the music file. 
 * @param string filename, float duration
 * @returns void
 */
void trMusicPlay(string filename, float duration);


/**
 * Plays the current music.
 * @param 
 * @returns void
 */
void trMusicPlayCurrent();


/**
 * Stops the current music.
 * @param 
 * @returns void
 */
void trMusicStop();


/**
 * sets the current music set. 
 * @param int setID
 * @returns void
 */
void trMusicSetCurrentMusicSet(int setID);


/**
 * Changes the music to mood associated with mood id. 
 * @param int moodID
 * @returns void
 */
void trMusicSetMood(int moodID);


/**
 * displays the message text. 
 * @param string text, int timeout
 * @returns void
 */
void trMessageSetText(string text, int timeout);


/**
 * displays the objectives tracker text. 
 * @param string title, string text, string soundfile, int timeout
 * @returns void
 */
void trObjectivesTracker(string title, string text, string soundfile, int timeout);


/**
 * Changes the chat status. 
 * @param bool status
 * @returns void
 */
void trChatSetStatus(bool status);


/**
 * Sets whether the last messages should always remain visible. 
 * @param bool status
 * @returns void
 */
void trChatKeepLastMessagesOnScreen(bool status);


/**
 * Clears the messages visible on screen.
 * @param 
 * @returns void
 */
void trChatClearHudMessages();


/**
 * Changes the chat status. 
 * @param int playerID, string message
 * @returns void
 */
void trChatSend(int playerID, string message);


/**
 * Changes the chat status for one specific player. 
 * @param int playerID, int toPlayer, string message
 * @returns void
 */
void trChatSendToPlayer(int playerID, int toPlayer, string message);


/**
 * Changes the chat status, but does not append player. 
 * @param int playerID, string message
 * @returns void
 */
void trChatSendSpoofed(int playerID, string message);


/**
 * Changes the chat status, but does not append player. Goes to specific player. 
 * @param int playerID, int toPlayer, string message
 * @returns void
 */
void trChatSendSpoofedToPlayer(int playerID, int toPlayer, string message);


/**
 * Checks whether or not any of the last sent chat messages by a player contain the given text. 
 * @param string text, int player
 * @returns bool
 */
bool trChatHistoryContains(string text, int player);


/**
 * start a game using scenario. 
 * @param string scenario
 * @returns void
 */
void trGameLoadScenario(string scenario);


/**
 * pop up a dialog allowing choice to load a scenario. 
 * @param string message, bool displayPrompt
 * @returns void
 */
void trCampaignBranchChoice(string message, bool displayPrompt);


/**
 * player completed the challenge. If 'achieved victory' is true, player completed all objectives before the timer elapsed. 
 * @param bool bAchievedVictory
 * @returns void
 */
void trEndChallenge(bool bAchievedVictory);


/**
 * Sets player as defeated within a campaign mission and displays defeat dialog.
 * @param 
 * @returns void
 */
void trCampaignLoseMission();


/**
 * Completes current scenario within campaign, and advances to next scenario or cinematic.
 * @param 
 * @returns void
 */
void trCampaignProgress();


/**
 * Completes current scenario within campaign, and displays prompt to progress to next scenario or return to campaign menu.
 * @param 
 * @returns void
 */
void trCampaignProgressChoice();


/**
 * Completes tutorial, and displays prompt to progress to next campaign or return to main menu.
 * @param 
 * @returns void
 */
void trTutorialEndChoice();


/**
 * message and sound. 
 * @param string text, string soundfile, bool ignoreUserControlsState
 * @returns void
 */
void trShowWinPopup(string text, string soundfile, bool ignoreUserControlsState);


/**
 * message and sound. 
 * @param string text, string soundfile, bool ignoreUserControlsState
 * @returns void
 */
void trShowWinLose(string text, string soundfile, bool ignoreUserControlsState);


/**
 * message and sound. 
 * @param string text, string soundfile, bool ignoreUserControlsState
 * @returns void
 */
void trShowLosePopup(string text, string soundfile, bool ignoreUserControlsState);


/**
 * show a world space prompt over a selected army. 
 * @param string id, string armyName, bool showColor, string text, vector offset
 * @returns void
 */
void trWorldSpacePromptArmy(string id, string armyName, bool showColor, string text, vector offset);


/**
 * show a world space prompt in selected location. 
 * @param string id, vector location, string text, vector offset
 * @returns void
 */
void trWorldSpacePromptArea(string id, vector location, string text, vector offset);


/**
 * show a world space prompt over a selected unit. 
 * @param string id, int unitID, bool showColor, string text, vector offset, string attachPoint
 * @returns void
 */
void trWorldSpacePrompt(string id, int unitID, bool showColor, string text, vector offset, string attachPoint);


/**
 * hide a world space prompt. 
 * @param string id
 * @returns void
 */
void trWorldSpacePromptHide(string id);


/**
 * controls snow rendering. 
 * @param float percent
 * @returns void
 */
void trRenderSnow(float percent);


/**
 * controls rain rendering. 
 * @param float percent
 * @returns void
 */
void trRenderRain(float percent);


/**
 * flashes the button of a given technology in command panel UI. 
 * @param int techID, bool flash
 * @returns void
 */
void trUIFlashTech(int techID, bool flash);


/**
 * flashes the button of a given protoUnit in command panel UI. 
 * @param string protoName, bool flash
 * @returns void
 */
void trUIFlashTrain(string protoName, bool flash);


/**
 * flashes the button of a given protoUnitCommand in command panel UI. 
 * @param string puCmdName, bool flash
 * @returns void
 */
void trUIFlashCommand(string puCmdName, bool flash);


/**
 * flashes the god power at a given gp slot. 
 * @param int slotIdx, bool flash
 * @returns void
 */
void trUIFlashGodPowerAtSlot(int slotIdx, bool flash);


/**
 * toggles flashing state on Minimap gadget. 
 * @param bool flash
 * @returns void
 */
void trUIMinimapFlash(bool flash);


/**
 * toggles flashing state on Minimap gadget. 
 * @param int bannerIndex, bool flash
 * @returns void
 */
void trUIIdleBannerFlash(int bannerIndex, bool flash);


/**
 * toggles flashing state on a given Villager Priority Dialog button. 
 * @param int buttonIndex, bool flash
 * @returns void
 */
void trUIVillagerPriorityButtonFlash(int buttonIndex, bool flash);


/**
 * toggles flashing state on HUD Villager Priority Dialog button. 
 * @param bool flash
 * @returns void
 */
void trUIVillagerPriorityButtonHUDFlash(bool flash);


/**
 * toggles visibility for a given HUD panel. 
 * @param int panelIndex, bool display
 * @returns void
 */
void trUIPanelVisibility(int panelIndex, bool display);


/**
 * toggles visibility for a given gamepad prompt. 
 * @param int promptIndex, bool display
 * @returns void
 */
void trUIGamepadPromptVisibility(int promptIndex, bool display);


/**
 * blocks a given radial menu. 
 * @param int promptIndex, bool display
 * @returns void
 */
void trUIBlockRadialMenu(int promptIndex, bool display);


/**
 * toggles flashing state for a given HUD panel. 
 * @param int panelIndex, bool flash
 * @returns void
 */
void trUIPanelFlash(int panelIndex, bool flash);


/**
 * toggles flashing state for a given gamepad prompt. 
 * @param int promptIndex, bool flash
 * @returns void
 */
void trUIGamepadPromptFlash(int promptIndex, bool flash);


/**
 * toggles flashing state for a given resource entry in the HUD resoruces panel. 
 * @param int buttonIndex, bool flash
 * @returns void
 */
void trUIResourceEntryFlash(int buttonIndex, bool flash);


/**
 * fade in/out using color specified. 
 * @param int r, int g, int b, int duration, int delay, bool inout, int eventID
 * @returns void
 */
void trUIFadeToColor(int r, int g, int b, int duration, int delay, bool inout, int eventID);


/**
 * Leaves the current game. Most often that means going to the main menu but while in editor playtest it means you go back to the editor.
 * @param 
 * @returns void
 */
void trLeaveGame();


/**
 * shows dialog for advancing to the given campaign 
 * @param string message, string campaignPath
 * @returns void
 */
void trCampaignStartNew(string message, string campaignPath);


/**
 * removes protounit from the forbidden list 
 * @param int player, string protoname
 * @returns bool
 */
bool trUnforbidProtounit(int player, string protoname);


/**
 * adds protounit to the forbidden list 
 * @param int player, string protoname
 * @returns bool
 */
bool trForbidProtounit(int player, string protoname);


/**
 * returns false if dialogue is currently playing
 * @param 
 * @returns bool
 */
bool trIsDialogueNotPlaying();


/**
 * set an override name for a specific unit 
 * @param string newName
 * @returns void
 */
void trUnitChangeName(string newName);


/**
 * forces the chat history to reset
 * @param 
 * @returns void
 */
void trChatHistoryClear();


/**
 * fetch a stat value from the KB and echo to chat 
 * @param int playerID, int statTypeID
 * @returns void
 */
void trEchoStatValue(int playerID, int statTypeID);


/**
 * displays dialog with 2 choices, and activates a trigger in response 
 * @param string maintext, string text1, int event1, string text2, int event2
 * @returns void
 */
void trShowChoiceDialog(string maintext, string text1, int event1, string text2, int event2);


/**
 * displays dialog with 2 choices for a given player, and activates a trigger in response 
 * @param int playerID, string maintext, string text1, int event1, string text2, int event2
 * @returns void
 */
void trShowChoiceDialogForPlayer(int playerID, string maintext, string text1, int event1, string text2, int event2);


/**
 * displays a custom image in a dialog, with a subtitle 
 * @param string imagePath, string message
 * @returns void
 */
void trShowImageDialog(string imagePath, string message);


/**
 * puts up a big movie-credits style text overlay 
 * @param string rawText, float time, float textSize, int r, int g, int b
 * @returns void
 */
void trOverlayText(string rawText, float time, float textSize, int r, int g, int b);


/**
 * Displays a text box with the specified title and text. 
 * @param string noteTitle, string noteText
 * @returns void
 */
void trShowTextMessage(string noteTitle, string noteText);


/**
 * *** NOTE: This function is DEPRECATED *** Sets the current scenario user data. 
 * @param int index, int value
 * @returns void
 */
void trSetCurrentScenarioUserData(int index, int value);


/**
 * *** NOTE: This function is DEPRECATED *** Gets the scenario user data and returns the default value when it is not present yet. Defaults to the current scenario 
 * @param int index, int fallback, string scenarioName
 * @returns int
 */
int trGetScenarioUserData(int index, int fallback, string scenarioName);


/**
 * force the selected unit(s) to generate a random name
 * @param 
 * @returns void
 */
void trUnitForceRandomName();


/**
 * selects the given units for the current player 
 * @param bool clear
 * @returns void
 */
void trUnitGameSelect(bool clear);


/**
 * turn fog and black map on/off, affecting all players. (no SP check) 
 * @param bool fog, bool black
 * @returns void
 */
void trSetFogAndBlackmapMultiplayer(bool fog, bool black);


/**
 * sets the given player as victorious for the current game. 
 * @param int playerID
 * @returns void
 */
void trPlayerSetVictorious(int playerID);


/**
 * call this when a player has won on the local machine (meaning that this func must be called synchronously on all machines, it will not pass around a command.) 
 * @param int i, bool endGame
 * @returns void
 */
void trPlayerSetWon(int i, bool endGame);


/**
 * Plays the sound associated with the dialogue. 
 * @param int playerID, string msgStrID, string speakerStrID, string portraitStrID, string sound, int eventID, bool ignoreOnAbort, int timeoutMs, bool overrideSoundLength
 * @returns void
 */
void trSoundPlayDialogue(int playerID, string msgStrID, string speakerStrID, string portraitStrID, string sound, int eventID, bool ignoreOnAbort, int timeoutMs, bool overrideSoundLength);


/**
 * Plays the sound associated with the dialogue, using the talking heads version of the UI. 
 * @param int playerID, string msgStrID, string speakerStrID, string portraitLeftSideStrID, string portraitRightSideStrID, bool speakerIsLeftSide, string sound, int eventID, bool ignoreEventOnAbort, int eventDelaySeconds
 * @returns void
 */
void trSoundPlayDialogueTalkingHeads(int playerID, string msgStrID, string speakerStrID, string portraitLeftSideStrID, string portraitRightSideStrID, bool speakerIsLeftSide, string sound, int eventID, bool ignoreEventOnAbort, int eventDelaySeconds);


/**
 * Plays the sound associated with the given soundset. 
 * @param string soundsetName
 * @returns void
 */
void trSoundsetPlay(string soundsetName);


/**
 * Plays the sound associated with the given soundset for the given player. 
 * @param int playerID, string soundsetName
 * @returns void
 */
void trSoundsetPlayPlayer(int playerID, string soundsetName);


/**
 * Executes a cheat for the provided player. 
 * @param int playerID, string command
 * @returns bool
 */
bool trActivateCheat(int playerID, string command);


/**
 * Signal that the game has ended.
 * @param 
 * @returns void
 */
void trEndGame();


/**
 * restarts the scenario
 * @param 
 * @returns void
 */
void trRestartScenario();


/**
 * hides the user's Scoreboard.
 * @param 
 * @returns void
 */
void trHideScoreboard();


/**
 * returns true if the given WPF dialog is currently open. 
 * @param int wpfDialogID
 * @returns bool
 */
bool trWPFDialogOpen(int wpfDialogID);


/**
 * returns true if we're currently in gamepad mode.
 * @param 
 * @returns bool
 */
bool trInGamepadMode();


/**
 * toggles a popup. 
 * @param int type, bool display
 * @returns void
 */
void trShowHidePopup(int type, bool display);


/**
 * Disables the given rule. 
 * @param string ruleName
 * @returns void
 */
void xsDisableRule(string ruleName);


/**
 * Disables the current rule.
 * @param 
 * @returns void
 */
void xsDisableSelf();


/**
 * Enables the given rule. 
 * @param string ruleName
 * @returns void
 */
void xsEnableRule(string ruleName);


/**
 * Returns true if the rule is enabled. 
 * @param string ruleName
 * @returns bool
 */
bool xsIsRuleEnabled(string ruleName);


/**
 * Sets the priority of the given rule. 
 * @param string ruleName, int priority
 * @returns void
 */
void xsSetRulePriority(string ruleName, int priority);


/**
 * Sets the priority of the current rule. 
 * @param int priority
 * @returns void
 */
void xsSetRulePrioritySelf(int priority);


/**
 * Sets the min interval of the given rule. 
 * @param string ruleName, int minInterval
 * @returns void
 */
void xsSetRuleMinInterval(string ruleName, int minInterval);


/**
 * Sets the min interval of the current rule. 
 * @param int minInterval
 * @returns void
 */
void xsSetRuleMinIntervalSelf(int minInterval);


/**
 * Sets the max interval of the given rule. 
 * @param string ruleName, int maxInterval
 * @returns void
 */
void xsSetRuleMaxInterval(string ruleName, int maxInterval);


/**
 * Sets the max interval of the current rule. 
 * @param int maxInterval
 * @returns void
 */
void xsSetRuleMaxIntervalSelf(int maxInterval);


/**
 * Ignores the next interval and updates as soon as possible. 
 * @param string ruleName
 * @returns void
 */
void xsRuleIgnoreIntervalOnce(string ruleName);


/**
 * Enables all rule in the given rule group. 
 * @param string ruleGroupName
 * @returns void
 */
void xsEnableRuleGroup(string ruleGroupName);


/**
 * Disables all rules in the given rule group. 
 * @param string ruleGroupName
 * @returns void
 */
void xsDisableRuleGroup(string ruleGroupName);


/**
 * Returns true if any rule in the group is enabled. 
 * @param string ruleGroupName
 * @returns bool
 */
bool xsIsRuleGroupEnabled(string ruleGroupName);


/**
 * Ignores the next interval and updates as soon as possible. 
 * @param string ruleGroupName
 * @returns void
 */
void xsRuleGroupIgnoreIntervalOnce(string ruleGroupName);


/**
 * Set the 3 components into a vector, returns the new vector. 
 * @param float x, float y, float z
 * @returns vector
 */
vector xsVectorCreate(float x, float y, float z);


/**
 * Returns the length of the given vector. 
 * @param vector v
 * @returns float
 */
float xsVectorLength(vector v);


/**
 * Returns a normalized copy of the given vector. 
 * @param vector v
 * @returns vector
 */
vector xsVectorNormalize(vector v);


/**
 * Returns the dot product of two vectors. 
 * @param vector v, vector other
 * @returns float
 */
float xsVectorDot(vector v, vector other);


/**
 * Returns the cross product of two vectors. 
 * @param vector v, vector other
 * @returns vector
 */
vector xsVectorCross(vector v, vector other);


/**
 * Returns the distance between two vectors. 
 * @param vector v, vector other
 * @returns float
 */
float xsVectorDistance(vector v, vector other);


/**
 * Returns the squared distance between two vectors. 
 * @param vector v, vector other
 * @returns float
 */
float xsVectorDistanceSqr(vector v, vector other);


/**
 * Returns the distance between two vectors without considering the Y dimension. 
 * @param vector v, vector other
 * @returns float
 */
float xsVectorDistanceXZ(vector v, vector other);


/**
 * Returns the squared distance between two vectors without considering the Y dimension. 
 * @param vector v, vector other
 * @returns float
 */
float xsVectorDistanceXZSqr(vector v, vector other);


/**
 * Returns the distance between a point and a line defined by a point on the line and a direction. 
 * @param vector v, vector p, vector dir
 * @returns float
 */
float xsVectorDistanceToLine(vector v, vector p, vector dir);


/**
 * Returns the distance between a point and a line defined by two points. 
 * @param vector v, vector p1, vector p2
 * @returns float
 */
float xsVectorDistanceToLineSegment(vector v, vector p1, vector p2);


/**
 * Returns the (smaller) angle between two vectors in radians. 
 * @param vector v, vector other
 * @returns float
 */
float xsVectorAngleBetweenVector(vector v, vector other);


/**
 * Returns the angle of a vector around the Y axis in radians. If provided, the offset is used as the center (instead of 0.0/0.0). 
 * @param vector v, vector offset
 * @returns float
 */
float xsVectorAngleAroundY(vector v, vector offset);


/**
 * Returns a rotated copy of the vector on the XZ plane by a given angle. If provided, the offset is used as the center (instead of 0.0/0.0). 
 * @param vector v, float theta, vector offset
 * @returns vector
 */
vector xsVectorRotateXZ(vector v, float theta, vector offset);


/**
 * Returns a translated copy of the vector on the XZ plane by the given radius and angle. 
 * @param vector v, float radius, float theta
 * @returns vector
 */
vector xsVectorTranslateXZ(vector v, float radius, float theta);


/**
 * Returns the current context player ID.
 * @param 
 * @returns int
 */
int xsGetContextPlayer();


/**
 * Sets the current context player ID (DO NOT DO THIS IF YOU DO NOT KNOW WHAT YOU ARE DOING). 
 * @param int playerID
 * @returns void
 */
void xsSetContextPlayer(int playerID);


/**
 * Returns the current gametime (in seconds).
 * @param 
 * @returns int
 */
int xsGetTime();


/**
 * Returns the current gametime (in milliseconds).
 * @param 
 * @returns int
 */
int xsGetTimeMS();


/**
 * Starts the timer.
 * @param 
 * @returns void
 */
void xsStartTimer();


/**
 * Prints the time in milliseconds that elapsed since the timer was last started.
 * @param 
 * @returns void
 */
void xsEchoTimerMS();


/**
 * Returns the absolute value of x as a float. 
 * @param float _X
 * @returns float
 */
float abs(float _X);


/**
 * Rounds x to the nearest integer and returns it as a float. 
 * @param float _X
 * @returns float
 */
float round(float _X);


/**
 * Returns the smaller of the two values as a float. 
 * @param float _X, float _Y
 * @returns float
 */
float min(float _X, float _Y);


/**
 * Returns the larger of the two values as a float. 
 * @param float _X, float _Y
 * @returns float
 */
float max(float _X, float _Y);


/**
 * Rounds x down to the next lower integer and returns it as a float. 
 * @param float _X
 * @returns float
 */
float floor(float _X);


/**
 * Rounds x up to the next higher integer and returns it as a float. 
 * @param float _X
 * @returns float
 */
float ceil(float _X);


/**
 * Returns the square root of x. 
 * @param float _X
 * @returns float
 */
float sqrt(float _X);


/**
 * Returns the y-th power of x (x^y). 
 * @param float _X, float _Y
 * @returns float
 */
float pow(float _X, float _Y);


/**
 * Returns the natural logarithm of x. 
 * @param float _X
 * @returns float
 */
float log(float _X);


/**
 * Returns the binary logarithm of x. 
 * @param float _X
 * @returns float
 */
float log2(float _X);


/**
 * Returns the common logarithm of x. 
 * @param float _X
 * @returns float
 */
float log10(float _X);


/**
 * Returns the sine of x. 
 * @param float _X
 * @returns float
 */
float sin(float _X);


/**
 * Returns the cosine of . 
 * @param float _X
 * @returns float
 */
float cos(float _X);


/**
 * Returns the tangent of x. 
 * @param float _X
 * @returns float
 */
float tan(float _X);


/**
 * Returns the arcsine of x. 
 * @param float _X
 * @returns float
 */
float asin(float _X);


/**
 * Returns the arccosine of x. 
 * @param float _X
 * @returns float
 */
float acos(float _X);


/**
 * Returns the arctangent of x. 
 * @param float _X
 * @returns float
 */
float atan(float _X);


/**
 * Returns the 2-argument arctangent. 
 * @param float _Y, float _X
 * @returns float
 */
float atan2(float _Y, float _X);


/**
 * Returns the hypothenuse between x and y (i.e., sqrt(x^2 + y^2)). 
 * @param float _X, float _Y
 * @returns float
 */
float hypot(float _X, float _Y);


/**
 * Returns the signum of x as an integer (1 if x > 0, -1 if x < 0, or 0 if x == 0). 
 * @param float x
 * @returns int
 */
int sgn(float x);


/**
 * Converts an angle from degrees to radians. 
 * @param float degrees
 * @returns float
 */
float degToRad(float degrees);


/**
 * Converts an angle from radians to degrees. 
 * @param float radians
 * @returns float
 */
float radToDeg(float radians);


/**
 * Sets the seed of the random number generator. 
 * @param int seed
 * @returns void
 */
void xsRandSetSeed(int seed);


/**
 * Gets the current seed of the random number generator.
 * @param 
 * @returns int
 */
int xsRandGetSeed();


/**
 * Returns a random integer number in the range (inclusive). 
 * @param int min, int max
 * @returns int
 */
int xsRandInt(int min, int max);


/**
 * Returns a random floating point number in the range (inclusive). 
 * @param float min, float max
 * @returns float
 */
float xsRandFloat(float min, float max);


/**
 * Returns true with a probability of trueChance in [0.0, 1.0], and false otherwise. 
 * @param float chanceTrue
 * @returns bool
 */
bool xsRandBool(float chanceTrue);


/**
 * Casts an int to a float. 
 * @param int i
 * @returns float
 */
float xsIntToFloat(int i);


/**
 * Casts an int to a bool (false if == 0, true otherwise). 
 * @param int i
 * @returns bool
 */
bool xsIntToBool(int i);


/**
 * Casts an int to a string. 
 * @param int i
 * @returns string
 */
string xsIntToString(int i);


/**
 * Casts a float to an int, truncating the fractional part. 
 * @param float f
 * @returns int
 */
int xsFloatToInt(float f);


/**
 * Casts a float to a bool (false if == 0.0, true otherwise). 
 * @param float f
 * @returns bool
 */
bool xsFloatToBool(float f);


/**
 * Casts a float to a string. 
 * @param float f
 * @returns string
 */
string xsFloatToString(float f);


/**
 * Casts a bool to an int (1 if true, 0 if false). 
 * @param bool b
 * @returns int
 */
int xsBoolToInt(bool b);


/**
 * Casts a bool to a float (1.0 if true, 0.0 if false). 
 * @param bool b
 * @returns float
 */
float xsBoolToFloat(bool b);


/**
 * Casts a bool to a string. 
 * @param bool b
 * @returns string
 */
string xsBoolToString(bool b);


/**
 * Parses an integer from a string(returning 0 on invalid input). 
 * @param string s
 * @returns int
 */
int xsStringToInt(string s);


/**
 * Parses a float from a string(returning 0.0 on invalid input). 
 * @param string s
 * @returns float
 */
float xsStringToFloat(string s);


/**
 * Parses a bool from a string(returning false on invalid input). 
 * @param string s
 * @returns bool
 */
bool xsStringToBool(string s);


/**
 * Returns the length of a string. 
 * @param string s
 * @returns int
 */
int xsStringLength(string s);


/**
 * Returns the character at the given index of a string as a string(or an empty string on invalid index). 
 * @param string s, int idx
 * @returns string
 */
string xsStringCharAt(string s, int idx);


/**
 * Returns the index of the first occurrence of a string in another string, searching from the given index. Returns -1 if the substring is not found. 
 * @param string first, string second, int startIdx, bool caseSensitive
 * @returns int
 */
int xsStringFindFirst(string first, string second, int startIdx, bool caseSensitive);


/**
 * Returns the index of the last occurrence of a string in another string, searching backwards from the given index. Returns -1 if the substring is not found. 
 * @param string first, string second, int startIdx, bool caseSensitive
 * @returns int
 */
int xsStringFindLast(string first, string second, int startIdx, bool caseSensitive);


/**
 * Returns true if the given substring is present in the string, and false otherwise. 
 * @param string first, string second, bool caseSensitive
 * @returns bool
 */
bool xsStringContains(string first, string second, bool caseSensitive);


/**
 * Returns true if the string starts with the given substring, and false otherwise. 
 * @param string first, string second, bool caseSensitive
 * @returns bool
 */
bool xsStringStartsWith(string first, string second, bool caseSensitive);


/**
 * Returns true if the string ends with the given substring, and false otherwise. 
 * @param string first, string second, bool caseSensitive
 * @returns bool
 */
bool xsStringEndsWith(string first, string second, bool caseSensitive);


/**
 * Returns a substring in the range of the given indices (inclusive) for a string. 
 * @param string s, int startIdx, int endIdx
 * @returns string
 */
string xsStringSubstring(string s, int startIdx, int endIdx);


/**
 * Returns a string in lower case. 
 * @param string s
 * @returns string
 */
string xsStringToLower(string s);


/**
 * Returns a string in upper case. 
 * @param string s
 * @returns string
 */
string xsStringToUpper(string s);

