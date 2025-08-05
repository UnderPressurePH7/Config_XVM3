/**
 * Battle interface text fields.
 * Текстовые поля боевого интерфейса.
 */
{
  // Definitions.
  // Шаблоны.
  "def": {
    "totalEfficiency": {
      "enabled": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=0?{{battletype-key=epic_battle?240|5}}|{{py:sum({{pp.widthLeft}},50)}}}}",
      "y": "{{pp.mode=0?{{battletype-key=epic_battle?55|65}}|35}}",
      "width": "{{py:xvm.isStuns?350|260}}",
      "height": 22,
      "textFormat": { "size": 16 },
      "format": "<textformat tabstops='[65,130,196,261]' leading='-2' ><img src='xvm://res/icons/Efficiency/damage.png' vspace='-2'> <font color='{{py:xvm.totalDamage>0?{{py:xvm.totalDamageColor}}}}'>{{py:xvm.totalDamage}}</font><tab><img src='xvm://res/icons/Efficiency/assist.png' vspace='-2'> {{py:xvm.totalAssist}}<tab><img src='xvm://res/icons/Efficiency/reflect.png' vspace='-2'> {{py:xvm.totalBlocked}}<tab><img src='xvm://res/icons/Efficiency/discover.png' vspace='-2'> {{py:xvm.detection}}<tab><img src='xvm://res/icons/Efficiency/stun.png' vspace='-2'> {{py:xvm.totalStun}}</textformat>"
    },
    // Total hp indicator.
    // Индикатор общего HP команд.
    "totalHP": {
      "enabled": false,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 0,
      "y": 30,
      "screenHAlign": "center",
      "align": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "font": "mono", "size": 18, "align": "center" },
      "format": "{{battletype-key!=epic_battle?{{py:xvm.total_hp.text}}}}"
    },
    // Avg damage on current vehicle.
    // Средний урон на текущей технике.
    "avgDamage": {
      "enabled": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
      "x": -170,
      "y": 30,
      "screenHAlign": "center",
      "align": "right",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "size": 15, "align": "center" },
      "format": "{{py:xvm.total_hp.avgDamage('{{l10n:avgDamage}}: ',{{py:xvm.totalDamage}})}}"
    },
    // Threshold necessary for achievements "High caliber".
    // Порог необходимый для получения достижения "Основной калибр".
    "mainGun": {
      "enabled": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
      "x": 170,
      "y": 30,
      "screenHAlign": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
      "textFormat": { "size": 15, "align": "center" },
      "format": "{{py:xvm.total_hp.mainGun('{{l10n:mainGun}}: ',{{py:xvm.totalDamage}})}}"
    },
    // Log of the received damage (see damageLog.xc).
    // Лог полученного урона (см. damageLog.xc).
    "damageLog": {
      "enabled": false,
      "updateEvent": "PY(ON_HIT)",
      "x": "{{py:xvm.damageLog.log.x}}",
      "y": "{{py:xvm.damageLog.log.y}}",
      "width": 300,
      "height": 210,
      "layer": "bottom",
      "screenVAlign": "bottom",
      "shadow": {
        "distance": "{{py:xvm.damageLog.log.shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.log.shadow('angle')}}",
        "color": "{{py:xvm.damageLog.log.shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.log.shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.log.shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.log.shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.log.shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.log.shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.log.shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.log.shadow('quality')}}"
      },
      "textFormat": { "color": "0xF4EFE8", "size": 16 },
      "format": "{{py:xvm.damageLog.log}}",
      "mouseEvents": {
        "mouseDown": "damageLog_mouseDown",
        "mouseUp": "damageLog_mouseUp",
        "mouseMove": "damageLog_mouseMove",
        "mouseWheel": "damageLog_mouseWheel"
      }
    },
    // Background of the log of the received damage (see damageLog.xc).
    // Подложка лога полученного урона (см. damageLog.xc).
    "damageLogBackground": {
      "enabled": false,
      "$ref": { "path":"def.damageLog" },
      "format": "{{py:xvm.damageLog.log.bg}}"
    },
    // Display the last damage (hit) (see damageLog.xc).
    // Отображение последнего урона (попадания) (см. damageLog.xc).
    "lastHit": {
      "enabled": false,
      "updateEvent": "PY(ON_LAST_HIT)",
      "tweens": [
        // "damageLog"/"timeDisplayLastHit"
        [ "fromTo", 0.75, { "scaleX": 0, "scaleY": 0 }, { "scaleX": 1, "scaleY": 1 } ],
        [ "delay", 3.75 ],
        [ "fromTo", 0.5, { "scaleX": 1, "scaleY": 1 }, { "scaleX": 0, "scaleY": 0 } ]
      ],
      "x": "{{py:xvm.damageLog.lastHit.x}}",
      "y": "{{py:xvm.damageLog.lastHit.y}}",
      "width": 200,
      "height": 100,
      "layer": "bottom",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": {
        "distance": "{{py:xvm.damageLog.lastHit.shadow('distance')}}",
        "angle": "{{py:xvm.damageLog.lastHit.shadow('angle')}}",
        "color": "{{py:xvm.damageLog.lastHit.shadow('color')}}",
        "alpha": "{{py:xvm.damageLog.lastHit.shadow('alpha')}}",
        "blur": "{{py:xvm.damageLog.lastHit.shadow('blur')}}",
        "strength": "{{py:xvm.damageLog.lastHit.shadow('strength')}}",
        "hideObject": "{{py:xvm.damageLog.lastHit.shadow('hideObject')}}",
        "inner": "{{py:xvm.damageLog.lastHit.shadow('inner')}}",
        "knockout": "{{py:xvm.damageLog.lastHit.shadow('knockout')}}",
        "quality": "{{py:xvm.damageLog.lastHit.shadow('quality')}}"
      },
      "textFormat": { "align": "center", "color": "0xF4EFE8", "size": 16 },
      "format": "{{py:xvm.damageLog.lastHit}}",
      "mouseEvents": {
        "mouseDown": "lastHit_mouseDown",
        "mouseUp": "lastHit_mouseUp",
        "mouseMove": "lastHit_mouseMove"
      }
    },
    // Background of the last damage (hit) (see damageLog.xc).
    // Подложка последнего урона (попадания) (см. damageLog.xc).
    "lastHitBackground": {
      "enabled": false,
      "$ref": { "path":"def.lastHit" },
      "format": "{{py:xvm.damageLog.lastHit.bg}}"
    },
//------------------------------------------------------------------
	// Индикатор показывающий в течении 12 сек направление откуда по Вам стреляли.
	"damageIndicator": {
    "enabled": ${ "@settings.xc": "settings.damageIndicator" },
    "updateEvent": "PY(ON_DAMAGE_INDICATOR)",
    "x": "172",
    "y": "78",
    "screenHAlign": "center",
    "screenVAlign": "center",
    "width": 50,
    "height": 50,
    "alpha": "{{py:xvm.damageIndicator}}",
    "shadow": { "distance": 0, "angle": 0, "color": "0xff4405", "alpha": 90, "blur": 8, "strength": 2.5 },
    "format": "{{py:xvm.damageIndicator_aim?<font size='30' color='#feffbc' align='center' valign='center' face='xvm'>&#x103;</font>|<font size='30' color='#feffbc' align='center' valign='center' face='xvm'> </font>}}" // &#x10A;
  },
//------------------------------------------------------------------ 
	// дейлики
	"dailyQuests": {
      "enabled": ${ "@settings.xc": "settings.dailyQuests" },
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
	  "hotKeyCode": ${ "hotkeys.xc": "hotkeys.dailyQuests" },
	  "onHold": false, "visibleOnHotKey": false,
      "textFormat": {"color": "0xE3E3E3", "size": 15 },
      "shadow": {"distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 3},
      "width": 450,
      "height": 150,
      "x": 5,
      "y": 450,
	  "format": "{{py:dq.bonusDescr?{{py:dq.bonusDescr}}{{py:dq.bonusValue? {{py:dq.bonusProgress?(|}}<font color='{{py:dq.bonusProgress<{{py:dq.bonusValue}}?#FF4405|#03E303}}'>{{py:dq.bonusProgress?{{py:dq.bonusProgress<{{py:dq.bonusValue}}?{{py:dq.bonusProgress}}|{{py:dq.bonusValue}}}}/{{py:dq.bonusValue}}|}}</font>{{py:dq.bonusProgress?)|}}}}\n}}{{py:dq.easyDescr?{{py:dq.easyDescr}}{{py:dq.easyValue? {{py:dq.easyProgress?(|}}<font color='{{py:dq.easyProgress<{{py:dq.easyValue}}?#FF4405|#03E303}}'>{{py:dq.easyProgress?{{py:dq.easyProgress<{{py:dq.easyValue}}?{{py:dq.easyProgress}}|{{py:dq.easyValue}}}}/{{py:dq.easyValue}}|}}</font>{{py:dq.easyProgress?)|}}}}\n}}{{py:dq.mediumDescr?{{py:dq.mediumDescr}}{{py:dq.mediumValue? {{py:dq.mediumProgress?(|}}<font color='{{py:dq.mediumProgress<{{py:dq.mediumValue}}?#FF4405|#03E303}}'>{{py:dq.mediumProgress?{{py:dq.mediumProgress<{{py:dq.mediumValue}}?{{py:dq.mediumProgress}}|{{py:dq.mediumValue}}}}/{{py:dq.mediumValue}}|}}</font>{{py:dq.mediumProgress?)|}}}}\n}}{{py:dq.hardDescr?{{py:dq.hardDescr}}{{py:dq.hardValue? {{py:dq.hardProgress?(|}}<font color='{{py:dq.hardProgress<{{py:dq.hardValue}}?#FF4405|#03E303}}'>{{py:dq.hardProgress?{{py:dq.hardProgress<{{py:dq.hardValue}}?{{py:dq.hardProgress}}|{{py:dq.hardValue}}}}/{{py:dq.hardValue}}|}}</font>{{py:dq.hardProgress?)|}}}}}}"
  },
    "dailyQuestsBackground": {
      "enabled": ${ "@settings.xc": "settings.dailyQuests" },
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY)",
	  "hotKeyCode": ${ "hotkeys.xc": "hotkeys.dailyQuests" },
	  "onHold": false, "visibleOnHotKey": false,
      "x": 1,
      "y": 451,
      "format": "{{py:dq.bonusDescr?<img height='19' width='320' src='xvm://res/icons/damageLog/no_dmg.png'>\n}}{{py:dq.easyDescr?<img height='19' width='320' src='xvm://res/icons/damageLog/no_dmg.png'>\n}}{{py:dq.mediumDescr?<img height='19' width='320' src='xvm://res/icons/damageLog/no_dmg.png'>\n}}{{py:dq.hardDescr?<img height='19' width='320' src='xvm://res/icons/damageLog/no_dmg.png'>}}"
  },
//------------------------------------------------------------------ 
    // Message in case of fire in vehicle.
    // Сообщение при возникновении пожара в технике.
    "fire": {
      "enabled": false,
      "updateEvent": "PY(ON_FIRE)",
      "x": 120,
      "y": 200,
      "width": 200,
      "height": 100,
      "alpha": "{{py:xvm.damageLog.fire}}",
      "layer": "bottom",
      "screenHAlign": "center",
      "screenVAlign": "center",
      "shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 3 },
      "textFormat": { "align": "center", "color": "0xF4EFE8", "size": 16 },
      "format": "{{l10n:fireMsg}}"
    }
  }
}
