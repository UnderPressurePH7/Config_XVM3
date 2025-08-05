/**
 * Small carousel cells settings.
 * Настройки ячеек карусели малелького размера.
 */
{
  // Definitions.
  // Шаблоны.
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
  },
  "small": {
    // Cell width.
    // Ширина ячейки.
    "width": 160,
    // Cell height.
    // Высота ячейки.
    "height": 35,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "gap": 1,
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "enabled"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Nation flag.
      // Флаг нации.
      "flag": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle icon.
      // Иконка танка.
      "tankIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "enabled": true, "dx": -4, "dy": -4, "alpha": 100, "scale": 1 },
      // Vehicle level.
      // Уровень техники.
      "level":    { "enabled": true, "dx": -5, "dy": -3, "alpha": 100, "scale": 1 },
      // Double XP icon.
      // Иконка не сбитого опыта за первую победу в день.
      "xp":       { "enabled": true, "dx": -10, "dy": 0, "alpha": 100, "scale": 0.7 },
      // Vehicle name.
      // Название танка.
      "tankName": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Info text (Crew incomplete, Repairs required).
      // Инфо текст (Неполный экипаж, Требуется ремонт).
      "info":     { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Info image.
      // Инфо иконка.
      "infoImg":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Info text for "Buy vehicle" and "Buy slot" slots.
      // Инфо текст для слотов "Купить машину" и "Купить слот".
      "infoBuy":  { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Clan lock timer.
      // Таймер блокировки танка.
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Price.
      // Цена.
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Action price.
      // Акционная цена.
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Favorite vehicle mark.
      // Маркер основной техники.
      "favorite": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle mark with the ability to earn bonds.
      // Маркер техники с возможностью заработка бон.
      "crystalsBorder": { "enabled": false, "alpha": 100 },
      // Image in in the stats field "stats" for vehicle with the ability to earn bonds.
      // Иконка в поле статистики "stats" для техники с возможностью заработка бон.
      "crystalsIcon": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100 },
      // Core Vehicles mark for the Battle Pass.
      // Маркер ключевой техники боевого пропуска.
      "coreBorder": { "enabled": true, "alpha": 100 },
      // Stats field that appears on the mouse hover.
      // Поле статистики, отображаемое при наведении мыши.
      "stats": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Battle Pass progression points.
      // Очки прогрессии боевого пропуска.
      "progressionPoints": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 }
    },
    // Extra cell fields (extended format supported, see extra-field.txt).
    // Дополнительные поля ячеек (поддерживается расширенный формат, см. extra-field_ru.txt).
    "extraFields": [
      // Slot background.
      // Подложка слота.
      { "x": 1, "y": 1, "layer": "substrate", "width": 160, "height": 35, "bgColor": "0x0A0A0A" },
      // Средний урон
      // Average damage
      {
        "enabled": false,
        "x": 132, "y": 19, "width": 16, "height": 16, "alpha": "{{v.tdb?|0}}", "align": "right",
        "src": "xvm://res/icons/carousel/damage.png"
      },
      {
        "enabled": false,
        "x": 160, "y": 17, "align": "right",
        "format": "<font face='$FieldFont' size='12' color='{{v.c_xtdb|#CFCFCF}}'>{{v.tdb%d}}</font>",
        "shadow": ${ "def.textFieldShadow" }
      },
      // Sign of mastery
      // Знак мастерства
      {
        "enabled": ${ "@settings.xc": "settingsCarousel.Master" },
        //"hotKeyCode": 19,
        //"onHold": false,
        //"visibleOnHotKey": false,
        "x": 100, "y": -2, "width": 20, "height": 20,
        "src": "img://gui/maps/icons/library/proficiency/class_icons_{{v.mastery}}.png"
      },
////////
	  // Уровень боёв
      {
        "enabled": false,
        "x": 0, "y": 0, "align": "left", "width": 13, "height": 13,
        "src": ""
      },
      {
        "enabled": ${ "@settings.xc": "settingsCarousel.LVL" },
        //"hotKeyCode": 20,
        //"onHold": false,
        //"visibleOnHotKey": false,
        "x": 38, "y": -1, "align": "left",
        "format": "<font face='$FieldFont' size='10' color='{{v.premium?#FFA759|#FFFFFF}}'>{{v.battletiermin}}-{{v.battletiermax}}</font>",
        "shadow": ${ "def.textFieldShadow" }
      },
////////
	  // Опыт
      {
        "enabled": ${ "@settings.xc": "settingsCarousel.exp" },
        //"hotKeyCode": 21,
        //"onHold": false,
        //"visibleOnHotKey": false,
        "x": 65, "y": 0, "align": "left", "width": 15, "height": 15, "alpha": "{{v.battles?|0}}",
        "src": "img://gui/maps/icons/library/FreeXpIcon-2.png"
      },
      {
        "enabled": ${ "@settings.xc": "settingsCarousel.exp" },
        //"hotKeyCode": 21,
        //"onHold": false,
        //"visibleOnHotKey": false,
        "x": 75, "y": -2, "align": "left",
        "format": "<font face='$FieldFont' size='11' color='{{v.c_wn8effd}}'>{{v.xp%d}}</font>",
        "shadow": ${ "def.textFieldShadow" }
      },
////////
	  // Метка
      {
        "enabled": false,
        "x": 3, "y": 37, "align": "left", "width": 12, "height": 12,
        "src": "img://gui/maps/icons/marksOnGun/95x85/france_2_marks.png"
      },
      {
        "enabled": false,
        "x": 17, "y": 34, "align": "left",
        "format": "<font face='$FieldFont' size='12' color='{{v.c_damageRating}}'>{{v.damageRating%2.2f~%| }}</font>",
        "shadow": ${ "def.textFieldShadow" }
      },
////////
	  // xte
      {
        "enabled": false,
        "x": 128, "y": 66, "align": "left", "width": 11, "height": 11,
        "src": "xvm://res/icons/xvm/xvm-user-off.png"
      },
      {
        "enabled": ${ "@settings.xc": "settingsCarousel.xte" },
        //"hotKeyCode": 23,
        //"onHold": false,
        //"visibleOnHotKey": false,
        "x": 161, "y": -3, "align": "right",
        "format": "<font face='$FieldFont' size='11' color='{{v.c_xte}}'>{{v.xte}}</font>",
        "shadow": ${ "def.textFieldShadow" }
      },
////////
      // Количество боёв
      // Battles count
      {
        "enabled": false,
        "x": 3, "y": 65, "align": "left", "width": 13, "height": 13, "alpha": "{{v.battles?|0}}",
        "src": "xvm://res/icons/carousel/battles.png"
      },
      {
        "enabled": ${ "@settings.xc": "settingsCarousel.Battles" },
        "x": 1, "y": 10, "align": "left",
        "format": "<font face='$FieldFont' size='11' color='{{v.c_battles}}'>{{v.battles}}</font>",
        "shadow": ${ "def.textFieldShadow" }
      },
////////
      // Процент побед
      // Winrate
      {
        "enabled": false,
        "x": 158, "y": 32, "align": "left", "width": 13, "height": 13, "alpha": "{{v.winrate?|0}}",
        "src": "xvm://res/icons/carousel/wins.png"
      },
      {
        "enabled": ${ "@settings.xc": "settingsCarousel.Winrate" },
        //"hotKeyCode": 25,
        //"onHold": false,
        //"visibleOnHotKey": false,
        "x": 1, "y": 22, "align": "left",
        "format": "<font face='$FieldFont' size='11' color='{{v.c_winrate|#CFCFCF}}'>{{v.winrate%2d~%}}</font>",
        "shadow": ${ "def.textFieldShadow" }
      }
    ]
  }
}
