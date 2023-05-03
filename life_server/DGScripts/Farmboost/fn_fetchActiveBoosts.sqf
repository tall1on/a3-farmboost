/*
    DemonsGaming (c)2020
    Author: Tallion
    License: Arma Public License No Derivatives (APL-ND) <https://www.bohemia.net/community/licenses/arma-public-license-nd>
*/
_gangId = _this select 0;
_unit = _this select 1;

_query = format["SELECT `id`, `type`, `level`, `gang_id` FROM `farmboost` WHERE (`gang_id`=%1 OR `gang_id` IS NULL) AND `active`=1 AND `archived`=0",_gangId];
_result = [_query,2,true] call DB_fnc_asyncCall;

if(isNil "_result") then {
    _result = [];
};

[(_result select 0)] remoteExec ["CLIENT_fnc_setActiveBoost",_unit];