// add at bottom
(_hud displayCtrl 5109) ctrlSetText "";
if(dg_moneyMultiplier > 1) then {
    (_hud displayCtrl 5109) ctrlSetText format["+%1 Geldboost", format["%1", ((dg_moneyMultiplier * 100) - 100)] + "%"];
};

(_hud displayCtrl 5110) ctrlSetText "";
if(dg_processMultiplier > 1) then {
    (_hud displayCtrl 5110) ctrlSetText format["+%1 Verarbeitungsboost", format["%1", ((dg_processMultiplier * 100) - 100)] + "%"];
};

(_hud displayCtrl 5111) ctrlSetText "";
if(dg_amountMultiplier > 1) then {
    (_hud displayCtrl 5111) ctrlSetText format["+%1 Sammelboost", format["%1", ((dg_amountMultiplier * 100) - 100)] + "%"];
};

(_hud displayCtrl 5112) ctrlSetText "";
if(dg_xpMultiplier > 1) then {
    (_hud displayCtrl 5112) ctrlSetText format["+%1 XP-Boost", format["%1", ((dg_xpMultiplier * 100) - 100)] + "%"];
};