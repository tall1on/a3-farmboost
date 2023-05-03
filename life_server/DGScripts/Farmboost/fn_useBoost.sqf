/*
    DemonsGaming (c)2020
    Author: Tallion
    License: Arma Public License No Derivatives (APL-ND) <https://www.bohemia.net/community/licenses/arma-public-license-nd>
*/
_key  = _this select 0;
_unit = _this select 1;

_query = format["SELECT `id`, `type`, `level`, `gang_id` FROM `farmboost` WHERE `key`='%1' AND `gang_id` IS NULL AND `active`=0 AND `archived`=0",[_key] call DB_fnc_mresString];
diag_log _query;
_result = [_query,2,true] call DB_fnc_asyncCall;
diag_log _result;

if(!isNil "_result" && !([] isEqualTo _result)) then {
    _boost = _result select 0;
    _query = format["UPDATE `farmboost` SET `active`=1 WHERE `id`='%1' AND `archived`=0", (_boost select 0)];
    [_query,1] call DB_fnc_asyncCall;
    [_boost] spawn SERVER_fnc_activateBoost;
}else{
    ['Der eingegebene Code ist nicht gültig!','error',30] remoteExec ["CLIENT_fnc_hint", _unit];
};

