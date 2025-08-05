/**
 * Log of applied damage.
 * Лог нанесенного урона.
 */
{
  // Definitions.
  // Шаблоны.
  "def": {
    // Header of the log of applied damage.
    // Заголовок лога нанесенного урона.
    "hitLogHeader": {
      "enabled": ${ "@settings.xc": "settingsHitlog.hitLogHeader" },
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=0?{{battletype-key=epic_battle?240|5}}|{{py:sum({{pp.widthLeft}},70)}}}}",
      "y": "{{pp.mode=0?{{battletype-key=epic_battle?55|65}}|{{py:xvm.screenWidth<1441?65|35}}}}",
      "width": 300,
      "height": 22,
      "textFormat": { "color": "0xF4EFE8", "size": 15 },
      "format": "{{py:xvm.totalDamage=0?{{l10n:Hits}}: <font size='13'>#0</font>|{{l10n:Hits}}: <font size='13'>#{{py:xvm.numberHitsDealt}}</font> {{l10n:Total}}: <font size='14' color='{{py:xvm.totalDamageColor}}'><b>{{py:xvm.totalDamage}}</b></font> {{l10n:Last}}: <font color='{{py:xvm.dmgKindColor}}'><b>{{py:xvm.dmg}}</b></font>}}"
    },
    // Log of applied damage (see hitLog.xc).
    // Лог нанесенного урона (см. hitLog.xc).
    "hitLogBody": {
      "enabled": ${ "@settings.xc": "settingsHitlog.hitlogBody" },
      "updateEvent": "PY(ON_HIT_LOG), ON_PANEL_MODE_CHANGED",
      "x": "{{pp.mode=0?{{battletype-key=epic_battle?240|5}}|{{py:sum({{pp.widthLeft}},{{py:xvm.hitLog.log.x}})}}}}",
      "y": "{{pp.mode=0?{{battletype-key=epic_battle?80|90}}|{{py:xvm.screenWidth<1441?90|{{py:xvm.hitLog.log.y}}}}}}",
      "width": 500,
      "height": 500,
      "layer": "bottom",
      "textFormat": { "color": "0xF4EFE8", "size": 15 },
      "format": "{{py:xvm.hitLog.log}}",
      "mouseEvents": {
        "mouseDown": "hitLog_mouseDown",
        "mouseUp": "hitLog_mouseUp",
        "mouseMove": "hitLog_mouseMove",
		"mouseWheel": "hitLog_mouseWheel"
      }
    },
    // Background of the log of applied damage.
    // Подложка лога нанесенного урона.
    "hitLogBackground": {
      "enabled": false,
      "$ref": { "path":"def.hitLogBody" },
      "format": "{{py:xvm.hitLog.log.bg}}"
    }
  }
}