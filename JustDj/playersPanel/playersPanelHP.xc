{
	
    "hpAlt": {
    // HP bar background.
    // Подложка индикатора HP.
    "hpBarBg": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": 96, "y": 6, "width": 72, "bindToIcon": true, "height": 14, "bgColor": "0x000000", "alpha": "{{alive?35|0}}" },
    // HP bar.
    // Индикатор HP.
    "hpBar": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": 97, "y": 7, "bindToIcon": true, "width": "{{hp-ratio:70}}", "height": 12, "bgColor": "{{player?#FFDD33|{{c:system}}}}", "alpha": "{{alive?50|0}}" },
    // Remaining HP.
    // Оставшиеся HP.
    "hp": {
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "bindToIcon": true, "alpha": "{{alive?100|0}}",
      "x": 96, "width": 72, "y": 4,
      "textFormat": { "font": "$FieldFont", "size": 11, "color": "0xD9D9D9", "bold": "true", "align": "center" },
      "format": "<font alpha='{{alive?{{ready?#FF|#80}}|#80}}'>{{alive?{{hp|{{l10n:No data}}}}|{{l10n:Destroyed}}}}</font>",
      "shadow": { "enabled": false, "color": "0x000000", "alpha": 100, "blur": 4, "strength": 1, "distance": 0, "angle": 0 }
    }
  },

    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
      // false - disable.
      // false - отключить.
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over.
      // Ширина области переключения в режим "large" при наведении мыши.
      "expandAreaWidth": 230,
      // true - disable platoon/rank icons.
      // true - убрать отображение иконки взвода/ранга.
      "removeSquadIcon": false,
      // Transparency of the squad icon.
      // Прозрачность иконки взвода.
      "squadIconAlpha": 100,
      // true - disable enemy spotted status icons.
      // true - убрать отображение иконки статуса засвета противника.
      "removeSpottedIndicator": false,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconOffsetXLeft": 0,
      "vehicleIconOffsetXRight": 0,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelOffsetXLeft": 0,
      "vehicleLevelOffsetXRight": 0,
      // Transparency of vehicle level.
      // Прозрачность уровня танка.
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsOffsetXLeft": 0,
      "fragsOffsetXRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": 15,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for badge column.
      // Смещение координаты X для поля нашивки.
      "rankBadgeOffsetXLeft": 0,
      "rankBadgeOffsetXRight": 0,
      // Width of the badge column. Default is 24.
      // Ширина поля нашивки. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the badge icons.
      // Прозрачность иконки нашивки.
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickOffsetXLeft": 0,
      "nickOffsetXRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 0,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 0,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleOffsetXLeft": 0,
      "vehicleOffsetXRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "{{vehicle}}",
      "vehicleFormatRight": "{{vehicle}}",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - don't change players positions on dead (default false).
      // true - не изменять позиции игроков при уничтожении (по умолчанию false).
      "fixedPosition": false,
      // Extra fields. Each field have default size 350x25.
      // Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер по умолчанию 350x25.
      // Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above).
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше).
      "extraFieldsLeft": [
		${"../@custom_texts.xc":"custom_texts.battleLabels.IsAnonym"},
        //PolosaSnar${"hpAlt.hpBarBg"},
        //PolosaSnar${"hpAlt.hpBar"},
        //PolosaSnar${"hpAlt.hp"},
        ${"PlayerHP.xc":"HpShortLeft1"},
        ${"PlayerHP.xc":"HpShortLeft2"},
        ${"../playersPanel.xc":"def.clanIcon"},
	${"../xmqp/xmqpServiceMarker.xc":"xmqpServiceMarker"},
        ${"../playersPanel.xc":"def.xvmUserMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above).
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше).
      "extraFieldsRight": [
	    ${"../@custom_texts.xc":"custom_texts.battleLabels.IsAnonym"},
        //PolosaSnar${"hpAlt.hpBarBg"},
        //PolosaSnar${"hpAlt.hpBar"},
        //PolosaSnar${"hpAlt.hp"},
        ${"PlayerHP.xc":"HpShortRight1"},
        ${"PlayerHP.xc":"HpShortRight2"},
        ${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        ${"../Spotted/enemySpottedMarker.xc":"enemySpottedMarker"}
      ]
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
      // false - disable.
      // false - отключить.
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags", "badge", "nick" ],
      // Width of area for switching to "large" mode on mouse over.
      // Ширина области переключения в режим "large" при наведении мыши.
      "expandAreaWidth": 230,
      // true - disable platoon/rank icons.
      // true - убрать отображение иконки взвода/ранга.
      "removeSquadIcon": false,
      // Transparency of the squad icon.
      // Прозрачность иконки взвода.
      "squadIconAlpha": 100,
      // true - disable enemy spotted status icons.
      // true - убрать отображение иконки статуса засвета противника.
      "removeSpottedIndicator": false,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconOffsetXLeft": 0,
      "vehicleIconOffsetXRight": 0,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelOffsetXLeft": 0,
      "vehicleLevelOffsetXRight": 0,
      // Transparency of vehicle level.
      // Прозрачность уровня танка.
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsOffsetXLeft": 0,
      "fragsOffsetXRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": 15,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for badge column.
      // Смещение координаты X для поля нашивки.
      "rankBadgeOffsetXLeft": 0,
      "rankBadgeOffsetXRight": 0,
      // Width of the badge column. Default is 24.
      // Ширина поля нашивки. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the badge icons.
      // Прозрачность иконки нашивки.
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickOffsetXLeft": 0,
      "nickOffsetXRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 200,
      // Display format for player nickname (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}<font alpha='#A0'>{{clan}}</font>",
      "nickFormatRight": "<font alpha='#A0'>{{clan}}</font> <font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{name%.12s~..}}</font>",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleOffsetXLeft": 0,
      "vehicleOffsetXRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      "vehicleFormatRight": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - don't change players positions on dead (default false).
      // true - не изменять позиции игроков при уничтожении (по умолчанию false).
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above).
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше).
      "extraFieldsLeft": [
		${"../@custom_texts.xc":"custom_texts.battleLabels.IsAnonym"},
        //PolosaSnar${"hpAlt.hpBarBg"},
        //PolosaSnar${"hpAlt.hpBar"},
        //PolosaSnar${"hpAlt.hp"},
        ${"PlayerHP.xc":"HpMediumLeft1"},
        ${"PlayerHP.xc":"HpMediumLeft2"},
	${"../playersPanel.xc":"def.clanIcon"},
	${"../xmqp/xmqpServiceMarker.xc":"xmqpServiceMarker"},
        ${"../playersPanel.xc":"def.xvmUserMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above).
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше).
      "extraFieldsRight": [
		${"../@custom_texts.xc":"custom_texts.battleLabels.IsAnonym"},
        //PolosaSnar${"hpAlt.hpBarBg"},
        //PolosaSnar${"hpAlt.hpBar"},
        //PolosaSnar${"hpAlt.hp"},
        ${"PlayerHP.xc":"HpMediumRight1"},
        ${"PlayerHP.xc":"HpMediumRight2"},
		${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        ${"../Spotted/enemySpottedMarker.xc":"enemySpottedMarker"}
      ]
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
      // false - disable.
      // false - отключить.
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags", "vehicle" ],
      // Width of area for switching to "large" mode on mouse over.
      // Ширина области переключения в режим "large" при наведении мыши.
      "expandAreaWidth": 230,
      // true - disable platoon/rank icons.
      // true - убрать отображение иконки взвода/ранга.
      "removeSquadIcon": false,
      // Transparency of the squad icon.
      // Прозрачность иконки взвода.
      "squadIconAlpha": 100,
      // true - disable enemy spotted status icons.
      // true - убрать отображение иконки статуса засвета противника.
      "removeSpottedIndicator": false,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconOffsetXLeft": 0,
      "vehicleIconOffsetXRight": 0,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelOffsetXLeft": 0,
      "vehicleLevelOffsetXRight": 0,
      // Transparency of vehicle level.
      // Прозрачность уровня танка.
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsOffsetXLeft": 0,
      "fragsOffsetXRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": 15,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for badge column.
      // Смещение координаты X для поля нашивки.
      "rankBadgeOffsetXLeft": 0,
      "rankBadgeOffsetXRight": 0,
      // Width of the badge column. Default is 24.
      // Ширина поля нашивки. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the badge icons.
      // Прозрачность иконки нашивки.
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickOffsetXLeft": 0,
      "nickOffsetXRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 200,
      // Display format for player nickname (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      "nickFormatRight": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleOffsetXLeft": 0,
      "vehicleOffsetXRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      "vehicleFormatRight": "<font color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{vehicle}}</font>",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - don't change players positions on dead (default false).
      // true - не изменять позиции игроков при уничтожении (по умолчанию false).
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above).
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше).
      "extraFieldsLeft": [
		${"../@custom_texts.xc":"custom_texts.battleLabels.IsAnonym"},
        //PolosaSnar${"hpAlt.hpBarBg"},
        //PolosaSnar${"hpAlt.hpBar"},
        //PolosaSnar${"hpAlt.hp"},
        ${"PlayerHP.xc":"HpMedium2Left1"},
        ${"PlayerHP.xc":"HpMedium2Left2"},
	${"../playersPanel.xc":"def.clanIcon"},
	${"../xmqp/xmqpServiceMarker.xc":"xmqpServiceMarker"},
        ${"../playersPanel.xc":"def.xvmUserMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above).
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше).
      "extraFieldsRight": [
		${"../@custom_texts.xc":"custom_texts.battleLabels.IsAnonym"},
        //PolosaSnar${"hpAlt.hpBarBg"},
        //PolosaSnar${"hpAlt.hpBar"},
        //PolosaSnar${"hpAlt.hp"},
        ${"PlayerHP.xc":"HpMedium2Right1"},
        ${"PlayerHP.xc":"HpMedium2Right2"},
		${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        ${"../Spotted/enemySpottedMarker.xc":"enemySpottedMarker"}
      ]
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
      // false - disable.
      // false - отключить.
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags", "badge", "nick", "vehicle" ],
      // true - disable platoon/rank icons.
      // true - убрать отображение иконки взвода/ранга.
      "removeSquadIcon": false,
      // Transparency of the squad icon.
      // Прозрачность иконки взвода.
      "squadIconAlpha": 100,
      // true - disable enemy spotted status icons.
      // true - убрать отображение иконки статуса засвета противника.
      "removeSpottedIndicator": false,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconOffsetXLeft": 0,
      "vehicleIconOffsetXRight": 0,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelOffsetXLeft": 0,
      "vehicleLevelOffsetXRight": 0,
      // Transparency of vehicle level.
      // Прозрачность уровня танка.
      "vehicleLevelAlpha": 100,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsOffsetXLeft": 0,
      "fragsOffsetXRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": 15,
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "{{frags}}",
      "fragsFormatRight": "{{frags}}",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": null,
      "fragsShadowRight": null,
      // Offset of X value for badge column.
      // Смещение координаты X для поля нашивки.
      "rankBadgeOffsetXLeft": 0,
      "rankBadgeOffsetXRight": 0,
      // Width of the badge column. Default is 24.
      // Ширина поля нашивки. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the badge icons.
      // Прозрачность иконки нашивки.
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickOffsetXLeft": 0,
      "nickOffsetXRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column, Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 200,
      // Display format for player nickname (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "<font face='mono' size='{{xvm-stat?13|0}}' color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{r|{{r_size>2?----|--}}}}</font> {{name%.{{xvm-stat?{{r_size>2?10|13}}|15}}s~..}}<font alpha='#A0'>{{clan}}</font>",
      "nickFormatRight": "<font alpha='#A0'>{{clan}}</font>{{name%.{{xvm-stat?{{r_size>2?10|13}}|15}}s~..}} <font face='mono' size='{{xvm-stat?13|0}}' color='{{c:xr}}' alpha='{{alive?#FF|#80}}'>{{r|{{r_size>2?----|--}}}}</font>",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": null,
      "nickShadowRight": null,
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleOffsetXLeft": 0,
      "vehicleOffsetXRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "{{vehicle}}",
      "vehicleFormatRight": "{{vehicle}}",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": null,
      "vehicleShadowRight": null,
      // true - don't change players positions on dead (default false).
      // true - не изменять позиции игроков при уничтожении (по умолчанию false).
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see above).
      // Набор форматов для левой панели (поддерживается расширенный формат, см. выше).
      "extraFieldsLeft": [
		${"../@custom_texts.xc":"custom_texts.battleLabels.IsAnonym"},
        //PolosaSnar${"hpAlt.hpBarBg"},
        //PolosaSnar${"hpAlt.hpBar"},
        //PolosaSnar${"hpAlt.hp"},
        ${"PlayerHP.xc":"HpLargeLeft1"},
        ${"PlayerHP.xc":"HpLargeLeft2"},
	${"../playersPanel.xc":"def.clanIcon"},
	${"../xmqp/xmqpServiceMarker.xc":"xmqpServiceMarker"},
        ${"../playersPanel.xc":"def.xvmUserMarker"}
      ],
      // Set of formats for right panel (extended format supported, see above)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. выше)
      "extraFieldsRight": [
		${"../@custom_texts.xc":"custom_texts.battleLabels.IsAnonym"},
        //PolosaSnar${"hpAlt.hpBarBg"},
        //PolosaSnar${"hpAlt.hpBar"},
        //PolosaSnar${"hpAlt.hp"},
        ${"PlayerHP.xc":"HpLargeRight1"},
        ${"PlayerHP.xc":"HpLargeRight2"},
		${"../playersPanel.xc":"def.clanIcon"},
        ${"../playersPanel.xc":"def.xvmUserMarker"},
        ${"../Spotted/enemySpottedMarker.xc":"enemySpottedMarker"}
      ]
    }
}