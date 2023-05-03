/*
    DemonsGaming (c)2020
    Author: Tallion
    License: Arma Public License No Derivatives (APL-ND) <https://www.bohemia.net/community/licenses/arma-public-license-nd>
*/
_key = _this select 0;

closeDialog 0;

if ((time - dg_action_delay) < 10) exitWith {[localize "STR_NOTF_ActionDelay", "error",5] call CLIENT_fnc_hint;};
dg_action_delay = time;

if(dg_farmboost_active isEqualTo 1) exitWith {['Es läuft bereits ein Farmboost!', "error",30] call CLIENT_fnc_hint;};

[_key, player] remoteExecCall ["SERVER_fnc_useBoost", 2];