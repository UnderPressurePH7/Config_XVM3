/**
 * Parameters of the Battle Statistics form.
 * Параметры окна статистики по клавише Tab.
 */
{
  "templates": {
    // Clan icon definition.
    // Шаблон иконки клана.
    "clanIcon": {
      "enabled": true,
      "x": 65, "y": 6, "width": 16, "height": 16, "align": "center", "alpha": 90, "bindToIcon": true,
      "src": "{{clanicon}}"
    },
    // Rank badge definition.
    // Шаблон иконки бэйджа.
    "rankBadgeIcon": {
      "enabled": true,
      "x": -28, "y": 0, "width": 24, "height": 24, "alpha": "{{alive?100|50}}",
      "src": "img://gui/maps/icons/library/badges/24x24/badge_{{rankBadgeId}}.png"
    },
    "bpStage": {
      "enabled": true,
      "x": -28, "y": 0, "width": 24, "height": 24, "alpha": "{{alive?100|50}}",
      "textFormat": { "color": "0xD4CD79", "size": 11, "align": "center" },
      "format": "{{rankBadgeId=90?{{bp-stage}}}}"
    }
  },
  "statisticForm": {
    // true - disable platoon/rank icons.
    // true - убрать отображение иконки взвода/ранга.
    "removeSquadIcon": false,
    // true - disable badge icons.
    // true - убрать отображение иконки нашивки.
    "removeRankBadgeIcon": true,
    // true - disable alpha/beta testers icons.
    // true - убрать отображение иконки альфа/бета тестеров.
    "removeTesterIcon": false,
    // true - hide elite levels.
    // true - убрать отображение уровней элитности.
    "removePrestigeLevel": true,
    // Opacity percentage of vehicle icon. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконки танка. 0 - прозрачные, 100 - не прозрачные.
    "vehicleIconAlpha": 100,
    // true - disable vehicle level indicator.
    // true - убрать отображение уровня танка.
    "removeVehicleLevel": false,
    // true - disable vehicle type icon. This space will be used for formatted vehicle field.
    // true - убрать отображение типа танка. Пустое место будет использовано под форматируемое поле.
    "removeVehicleTypeIcon": false,
    // true - disable player status icon.
    // true - убрать отображение иконки статуса игрока.
    "removePlayerStatusIcon": false,
    // Show border for name field (useful for config tuning).
    // Показывать рамку для поля имени игрока (полезно для настройки конфига).
    "nameFieldShowBorder": false,
    // Show border for vehicle field (useful for config tuning).
    // Показывать рамку для поля имени танка (полезно для настройки конфига).
    "vehicleFieldShowBorder": false,
    // Show border for frags field (useful for config tuning).
    // Показывать рамку для поля фрагов (полезно для настройки конфига).
    "fragsFieldShowBorder": false,
    // X offset for allies squad icons.
    // Смещение по оси X значка взвода союзников.
    "squadIconOffsetXLeft": 0,
    // X offset for enemies squad icons.
    // Смещение по оси X значка взвода противников.
    "squadIconOffsetXRight": 0,
    // X offset for allies player names field.
    // Смещение по оси X поля ника союзников.
    "nameFieldOffsetXLeft": 0,
    // X offset for enemies player names field.
    // Смещение по оси X поля ника противников.
    "nameFieldOffsetXRight": -12,
    // Width of allies player names field.
    // Ширина поля ника союзников.
    "nameFieldWidthLeft": 200,
    // Width of enemies names field.
    // Ширина поля ника противников.
    "nameFieldWidthRight": 200,
    // X offset for "formatLeftVehicle" field.
    // Смещение по оси X поля названия танка союзников.
    "vehicleFieldOffsetXLeft": 75,
    // X offset for "formatRightVehicle" field.
    // Смещение по оси X поля названия танка противников.
    "vehicleFieldOffsetXRight": 70,
    // Width of "formatLeftVehicle" field.
    // Ширина поля названия танка союзников.
    "vehicleFieldWidthLeft": 150,
    // Width of "formatRightVehicle" field.
    // Ширина поля названия танка противников.
    "vehicleFieldWidthRight": 150,
    // X offset for allies vehicle icons.
    // Смещение по оси X иконки танка союзников.
    "vehicleIconOffsetXLeft": 45,
    // X offset for enemies vehicle icons.
    // Смещение по оси X иконки танка противников.
    "vehicleIconOffsetXRight": 55,
    // X offset for allies elite levels icons.
    // Смещение по оси X иконки уровня элитности союзников.
    "prestigeOffsetXLeft": 26,
    // X offset for enemies elite levels icons.
    // Смещение по оси X иконки уровня элитности противников.
    "prestigeOffsetXRight": 26,
    // X offset for allies frags.
    // Смещение по оси X фрагов союзников.
    "fragsFieldOffsetXLeft": 26,
    // X offset for enemies frags.
    // Смещение по оси X фрагов противников.
    "fragsFieldOffsetXRight": 20,
    // Width of frags field for allies.
    // Ширина поля фрагов союзников.
    "fragsFieldWidthLeft": 20,
    // Width of frags field for enemies.
    // Ширина поля фрагов противников.
    "fragsFieldWidthRight": 20,
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftNick": "{{.battleLoading.XvmUser}}{{.battleLoading.UsersCountry}}{{name%.20s~..}} <font alpha='#A0'>{{clan}}</font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightNick": "<font alpha='#A0'>{{clan}}</font> {{name%.20s~..}}{{.battleLoading.UsersCountry}}{{.battleLoading.XvmUser}}",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros.txt).
    "formatLeftVehicle": "<font face='mono' size='{{xvm-stat?13|0}}'><font color='{{c:kb}}'>{{kb%2d~k|--k}}</font> <font color='{{c:xr}}'>{{r%4d|----}}</font> <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font> | <font color='{{c:t-battles}}'>{{t-battles%4d|----}}</font> <font color='{{c:t-winrate}}'>{{t-winrate%2d~%|--%}}</font></font>",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros.txt).
    "formatRightVehicle": "<font face='mono' size='{{xvm-stat?13|0}}'><font color='{{c:t-winrate}}'>{{t-winrate%2d~%|--%}}</font> <font color='{{c:t-battles}}'>{{t-battles%4d|----}}</font> | <font color='{{c:winrate}}'>{{winrate%2d~%|--%}}</font> <font color='{{c:xr}}'>{{r%4d|--}}</font> <font color='{{c:kb}}'>{{kb%2d~k|--k}}</font></font>",
    // Display format for the left panel (macros allowed, see macros.txt).
    // Формат отображения для левой панели (допускаются макроподстановки, см. macros_ru.txt).
    "formatLeftFrags": "{{frags}}",
    // Display format for the right panel (macros allowed, see macros.txt).
    // Формат отображения для правой панели (допускаются макроподстановки, см. macros_ru.txt).
    "formatRightFrags": "{{frags}}",
    // Extra fields. Fields are placed one above the other.
    // Дополнительные поля. Поля располагаются друг над другом.
    // Set of formats for left panel (extended format supported, see extra-field.txt).
    // Набор форматов для левой панели (поддерживается расширенный формат, см. extra-field_ru.txt).
    "extraFieldsLeft": [
      ${"templates.clanIcon"},
      ${"templates.rankBadgeIcon"},
      ${"templates.bpStage"}
    ],
    // Set of formats for right panel (extended format supported, see extra-field.txt).
    // Набор форматов для правой панели (поддерживается расширенный формат, см. extra-field_ru.txt).
    "extraFieldsRight": [
      ${"templates.clanIcon"},
      ${"templates.rankBadgeIcon"},
      ${"templates.bpStage"}
    ]
  }
}
