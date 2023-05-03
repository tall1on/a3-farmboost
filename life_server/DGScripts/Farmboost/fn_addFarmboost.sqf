/*
    DemonsGaming (c)2020
    Author: Tallion
    License: Arma Public License No Derivatives (APL-ND) <https://www.bohemia.net/community/licenses/arma-public-license-nd>
*/
_type  = _this select 0;
_level = _this select 1;
_owner = _this select 2;
_gangId = _this select 3;

_query = format["INSERT INTO farmboost (`type`, `level`, `key`, `owner`, `gang_id`, `active`, `archived`) VALUES(
    '""%1""',
    %2,
    CONCAT(
        lpad(conv(floor(rand()*pow(36,6)), 10, 36), 4, 0),
        '-',
        lpad(conv(floor(rand()*pow(36,6)), 10, 36), 4, 0),
        '-',
        lpad(conv(floor(rand()*pow(36,6)), 10, 36), 4, 0),
        '-',
        lpad(conv(floor(rand()*pow(36,6)), 10, 36), 4, 0)
    ),
    '%3',
    %4,
    0,
    0
)",_type,_level, _owner, _gangId];
[_query,1] call DB_fnc_asyncCall;
