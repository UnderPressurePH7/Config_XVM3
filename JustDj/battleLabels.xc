/**
 * List of battle interface labels.
 * Список текстовых полей боевого интерфейса.
 */
{
  "labels": {
    // Referenced labels:
    // * every custom field can be separate enabled or disabled by "enabled" switch in their settings.
    // * extended format supported, see extra-field.txt
    // Подключенные текстовые поля:
    // * кастомные поля можно отдельно отключать и включать с помощью "enabled" в их настройках.
    // * поддерживается расширенный формат, см. extra-field_ru.txt
    "formats": [
      ${"hitLogTemplates.xc":"def.hitLogBody"},
      ${"hitLogTemplates.xc":"def.hitLogHeader"},
      ${"hitLogTemplates.xc":"def.hitLogBackground"},
      //${ "battleLabelsTemplates.xc":"def.avgDamage" },
      //${ "battleLabelsTemplates.xc":"def.mainGun" },
      ${ "battleLabelsTemplates.xc":"def.damageLogBackground"},
      ${ "battleLabelsTemplates.xc":"def.damageLog" },
      //${ "battleLabelsTemplates.xc":"def.timerReload" },
      //${ "battleLabelsTemplates.xc":"def.lastHit" },
      //${ "battleLabelsTemplates.xc":"def.fire" },
	  // Дейлики
	  ${ "battleLabelsTemplates.xc":"def.dailyQuestsBackground"},
	  ${ "battleLabelsTemplates.xc":"def.dailyQuests"},
  // Ремонт
      ${ "battleLabelsRepairControl.xc":"repairCtrlEngine" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlAmmoBay" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlGun" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlTurret" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlComplex" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlSurveying" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlRadio" },
      ${ "battleLabelsRepairControl.xc":"repairCtrlFuelTank" },
  // Лечение
      ${ "battleLabelsRepairControl.xc":"healCtrlCommander" },
      ${ "battleLabelsRepairControl.xc":"healCtrlRadioman" },
      ${ "battleLabelsRepairControl.xc":"healCtrlDriver" },
      ${ "battleLabelsRepairControl.xc":"healCtrlGunner" },
      ${ "battleLabelsRepairControl.xc":"healCtrlLoader" },
  // УГН
      ${ "@custom_texts.xc":"custom_texts.battleLabels.angleAimingTop" },
      ${ "@custom_texts.xc":"custom_texts.battleLabels.angleAimingBottom" },
  // Таймер 6-го чувства
	  ${ "@custom_texts.xc":"custom_texts.battleLabels.sixthSenseTimer" },
  // DamageIndicator
      ${ "battleLabelsTemplates.xc":"def.damageIndicator" },
      ${ "battleLabelsTemplates.xc":"def.totalHP" }
    ]
  }
}
