class dg_farmboost {
    idd = 95348234;
    name= "dg_farmboost";
    movingEnable = 0;
    enableSimulation = 1;

    class controlsBackground {
        class Text: dg_RscText
        {
            idc = -1;
            text = "Farmboosts";
            colorBackground[] = {0.89,0.098,0.122,1};
            x = 0.402031 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.180469 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };

    class controls {
        class ActivateBtn: dg_RscButtonMenu
        {
            idc = 5404;
            text = "Code einlösen";
            onButtonClick = "[format['%1', (ctrlText 5408)]] spawn CLIENT_fnc_useBoost;";
            colorBackground[] = {0.89,0.098,0.122,1};
            x = 0.402031 * safezoneW + safezoneX;
            y = 0.4296 * safezoneH + safezoneY;
            w = 0.180469 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class CodeField: dg_RscEdit
        {
            idc = 5408;
            text = "";
            colorBackground[] = {0,0,0,1};
            x = 0.402031 * safezoneW + safezoneX;
            y = 0.39 * safezoneH + safezoneY;
            w = 0.180469 * safezoneW;
            h = 0.033 * safezoneH;
        };
    };
};