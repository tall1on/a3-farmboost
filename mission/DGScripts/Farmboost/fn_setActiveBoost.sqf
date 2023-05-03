/*
    DemonsGaming (c)2020
    Author: Tallion
    License: Arma Public License No Derivatives (APL-ND) <https://www.bohemia.net/community/licenses/arma-public-license-nd>
*/
_boost = _this select 0;

if(!isNil "_boost") then {
    _type  = ((_boost select 1) splitString """" select 0);
    _level = _boost select 2;

    if(_level > 10) then {
        _level = 10;
    };

    _moneyMultiplier   = 1.25 + (0.25 * _level);
    _processMultiplier = 2 + (1 * _level);
    _amountMultiplier  = 2 + (1 * _level);
    _xpMultiplier      = 1.25 + (0.25 * _level);

    dg_farmboost_active  = 0;
    dg_moneyMultiplier   = 1;
    dg_processMultiplier = 1;
    dg_amountMultiplier  = 1;
    dg_xpMultiplier      = 1;
    switch (_type) do {
        case 'money': {
            dg_farmboost_active  = 1;
            dg_moneyMultiplier   = _moneyMultiplier;
            ['Hinweis: Farmboost wurde aktiviert','warning',30] call CLIENT_fnc_hint;
        };
        case 'process': {
            dg_farmboost_active  = 1;
            dg_processMultiplier = _processMultiplier;
            ['Hinweis: Farmboost wurde aktiviert','warning',30] call CLIENT_fnc_hint;
        };
        case 'amount': {
            dg_farmboost_active  = 1;
            dg_amountMultiplier  = _amountMultiplier;
            ['Hinweis: Farmboost wurde aktiviert','warning',30] call CLIENT_fnc_hint;
        };
        case 'xp': {
            dg_farmboost_active  = 1;
            dg_xpMultiplier      = _xpMultiplier;
            ['Hinweis: Farmboost wurde aktiviert','warning',30] call CLIENT_fnc_hint;
        };
        case 'full': {
            dg_farmboost_active  = 1;
            dg_moneyMultiplier   = _moneyMultiplier;
            dg_processMultiplier = _processMultiplier;
            dg_amountMultiplier  = _amountMultiplier;
            dg_xpMultiplier      = _xpMultiplier;
            ['Hinweis: Farmboost wurde aktiviert','warning',30] call CLIENT_fnc_hint;
        };
    };
};

