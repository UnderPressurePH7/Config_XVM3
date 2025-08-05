{
  "deviceRepairCtrlItem": {
    "width": 48,
    "height": 48,
    "screenHAlign": "center",
    "screenVAlign": "center",
	"layer": "top",
    "hotKeyCode": 29,
    "visibleOnHotKey": true,
    "onHold": true,
    "shadow": { "distance": 1, "angle": 90, "alpha": 95, "blur": 5, "strength": 4 }
  },
  "crewHealCtrlItem": {
    "width": 36,
    "height": 36,
    "screenHAlign": "center",
    "screenVAlign": "center",
	"layer": "top",
    "hotKeyCode": 29,
    "visibleOnHotKey": true,
    "onHold": true,
    "shadow": { "distance": 1, "angle": 90, "alpha": 95, "blur": 5, "strength": 4 }
  },

  "repairCtrlEngine": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.RepairPanel" },
    "mouseEvents": {
      "click": "engine",
      "mouseOver": "engineOver",
	  "mouseOut": "engineOut"
    },
    "updateEvent": "PY(ON_ENGINE_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": -61,
    "y": "{{py:repairControl.getYWOffset(-165, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.engineState=normal?30|{{py:repairControl.engineState=critical?70|{{py:repairControl.engineState=destroyed?70|90}}}}}}|0}}",
    "format": "<img src='xvm://res/icons/devices/engine-{{py:repairControl.engineState}}.png'>"
  },
  "repairCtrlAmmoBay": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.RepairPanel" },
    "mouseEvents": {
      "click": "ammoBay",
      "mouseOver": "ammoBayOver",
	  "mouseOut": "ammoBayOut"
    },
    "updateEvent": "PY(ON_AMMOBAY_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x":-98,
    "y": "{{py:repairControl.getYWOffset(-112, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.ammoBayState=normal?30|{{py:repairControl.ammoBayState=critical?70|90}}}}|0}}",
    "format": "<img src='xvm://res/icons/devices/ammoBay-{{py:repairControl.ammoBayState}}.png'>"
  },
  "repairCtrlGun": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.RepairPanel" },
    "mouseEvents": {
      "click": "gun",
      "mouseOver": "gunOver",
	  "mouseOut": "gunOut"
    },
    "updateEvent": "PY(ON_GUN_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": -98,
    "y": "{{py:repairControl.getYWOffset(-52, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.gunState=normal?30|{{py:repairControl.gunState=critical?70|{{py:repairControl.gunState=destroyed?70|90}}}}}}|0}}",
    "format": "<img src='xvm://res/icons/devices/gun-{{py:repairControl.gunState}}.png'>"
   },
  "repairCtrlTurret": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.RepairPanel" },
    "mouseEvents": {
      "click": "turretRotator",
      "mouseOver": "turretRotatorOver",
	  "mouseOut": "turretRotatorOut"
    },
    "updateEvent": "PY(ON_TURRETROTATOR_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": -61,
    "y": "{{py:repairControl.getYWOffset(0, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.turretState=normal?30|{{py:repairControl.turretState=critical?70|{{py:repairControl.turretState=destroyed?70|90}}}}}}|0}}",
    "format": "<img src='xvm://res/icons/devices/turret-{{py:repairControl.turretState}}.png'>"
  },
  "repairCtrlComplex": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.RepairPanel" },
    "mouseEvents": {
      "click": "complex",
      "mouseOver": "complexOver",
	  "mouseOut": "complexOut"
    },
    "updateEvent": "PY(ON_COMPLEX_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": 61,
    "y": "{{py:repairControl.getYWOffset(-165, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.complexState=normal?30|{{py:repairControl.complexState=critical?70|{{py:repairControl.complexState=destroyed?70|90}}}}}}|0}}",
    "format": "<img src='xvm://res/icons/devices/{{py:repairControl.complexType}}-{{py:repairControl.complexState}}.png'>"
  },
  "repairCtrlSurveying": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.RepairPanel" },
    "mouseEvents": {
      "click": "surveyingDevice",
      "mouseOver": "surveyingDeviceOver",
	  "mouseOut": "surveyingDeviceOut"
    },
    "updateEvent": "PY(ON_SURVEYINGDEVICE_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": 98,
    "y": "{{py:repairControl.getYWOffset(-112, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.surveyingState=normal?30|{{py:repairControl.surveyingState=critical?70|{{py:repairControl.surveyingState=destroyed?70|90}}}}}}|0}}",
    "format": "<img src='xvm://res/icons/devices/surveying-{{py:repairControl.surveyingState}}.png'>"
  },
  "repairCtrlRadio": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.RepairPanel" },
    "mouseEvents": {
      "click": "radio",
      "mouseOver": "radioOver",
	  "mouseOut": "radioOut"
    },
    "updateEvent": "PY(ON_RADIO_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": 98,
    "y": "{{py:repairControl.getYWOffset(-52, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.radioState=normal?30|{{py:repairControl.radioState=critical?70|{{py:repairControl.radioState=destroyed?70|90}}}}}}|0}}",
    "format": "<img src='xvm://res/icons/devices/radio-{{py:repairControl.radioState}}.png'>"
  },
  "repairCtrlFuelTank": {
    "$ref": { "path": "deviceRepairCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.RepairPanel" },
    "mouseEvents": {
      "click": "fuelTank",
      "mouseOver": "fuelTankOver",
	  "mouseOut": "fuelTankOut"
    },
    "updateEvent": "PY(ON_FUELTANK_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": 61,
    "y": "{{py:repairControl.getYWOffset(0, -45)}}",
    "alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.fuelTankState=normal?30|{{py:repairControl.fuelTankState=critical?70|{{py:repairControl.fuelTankState=destroyed?70|90}}}}}}|0}}",
    "format": "<img src='xvm://res/icons/devices/fuelTank-{{py:repairControl.fuelTankState}}.png'>"
  },

  "healCtrlCommander": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.HealPanel" },
    "mouseEvents": {
      "click": "commander",
      "mouseOver": "commanderOver",
	  "mouseOut": "commanderOut"
    },
    "updateEvent": "PY(ON_COMMANDER_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": -80,
    "y": "{{py:repairControl.getYWOffset(55, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.commanderState=normal?30|{{py:repairControl.commanderState=destroyed?70|90}}}}|0}}",
    "format": "<img src='xvm://res/icons/crew/commander-{{py:repairControl.commanderState}}.png'>"
  },
  "healCtrlRadioman": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.HealPanel" },
    "mouseEvents": {
      "click": "radioman",
      "mouseOver": "radiomanOver",
	  "mouseOut": "radiomanOut"
    },
    "updateEvent": "PY(ON_RADIOMAN_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": -40,
    "y": "{{py:repairControl.getYWOffset(55, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.radiomanState=normal?30|{{py:repairControl.radiomanState=destroyed?70|90}}}}|0}}",
    "format": "<img src='xvm://res/icons/crew/radioman-{{py:repairControl.radiomanState}}.png'>"
  },
  "healCtrlDriver": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.HealPanel" },
    "mouseEvents": {
      "click": "driver",
      "mouseOver": "driverOver",
	  "mouseOut": "driverOut"
    },
    "updateEvent": "PY(ON_DRIVER_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": 0,
    "y": "{{py:repairControl.getYWOffset(55, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.driverState=normal?30|{{py:repairControl.driverState=destroyed?70|90}}}}|0}}",
    "format": "<img src='xvm://res/icons/crew/driver-{{py:repairControl.driverState}}.png'>"
  },
  "healCtrlGunner": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.HealPanel" },
    "mouseEvents": {
      "click": "gunner",
      "mouseOver": "gunnerOver",
	  "mouseOut": "gunnerOut"
    },
    "updateEvent": "PY(ON_GUNNER_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": 40,
    "y": "{{py:repairControl.getYWOffset(55, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.gunnerState=normal?30|{{py:repairControl.gunnerState=destroyed?70|90}}}}|0}}",
    "format": "<img src='xvm://res/icons/crew/gunner-{{py:repairControl.gunnerState}}.png'>"
  },
  "healCtrlLoader": {
    "$ref": { "path": "crewHealCtrlItem" },
    "enabled": ${ "@settings.xc": "settings.repairControl.HealPanel" },
    "mouseEvents": {
      "click": "loader",
      "mouseOver": "loaderOver",
	  "mouseOut": "loaderOut"
    },
    "updateEvent": "PY(ON_LOADER_STATE), PY(ON_VIEW_CHANGED), PY(ON_ALIVE_STATE_CHANGED)",
    "x": 80,
    "y": "{{py:repairControl.getYWOffset(55, -45)}}",
	"alpha": "{{py:repairControl.isAlive=alive?{{py:repairControl.loaderState=normal?30|{{py:repairControl.loaderState=destroyed?70|90}}}}|0}}",
    "format": "<img src='xvm://res/icons/crew/loader-{{py:repairControl.loaderState}}.png'>"
  }
}