{
  "custom_texts": {
	"markers": {
		//Killer
		"Killer": {
			"name": "Killer",
			"enabled": ${ "@settings.xc": "settings.Killer" },
			"x": 0,
			"y": -48,
			"align": "center",
			"textFormat": {"size": 13, "color": null},
			"format": "Уничтожен {{py:killerName('{{name}}')}} {{py:killerVehicle('{{name}}')}} "
		},
		"Reloading": {
			"name": "Reloading",
			"enabled": ${ "@settings.xc": "settings.Reloading" },
			"x": -24,
			"y": -3,
			"alpha": 100,
			"align": "center",
			"textFormat": {
			  "font": "$FieldFont",
			  "size": 12,
			  "color": "0xD7D7D7",
			  "align": "center",
			  "bold": true,
			  "italic": false
			},
			"shadow": {
				"enabled": ${ "@settings.xc": "XVM.MarkerShadow" },
				"distance": 0,
				"angle": 45,
				"color": "0x000000",
				"alpha": 100,
				"blur": 6,
				"strength": 2
			},
			"format": "{{py:mul({{py:reloadVehicle('{{name}}')}}, 0.924)%.01f~c}}"
		}
	},

    "battleLabels": {
		// Anonym Icon.
		"IsAnonym": {
			"enabled": ${ "@settings.xc": "settings.IsAnonym" },
			"x": -10, 
			"y": 8, 
			"width": 16, 
			"height": 13, 
			"align": "center", 
			"alpha": "{{py:IsAnonym('{{name}}')}}", 
			"bindToIcon": true,
			"src": "img://gui/maps/icons/library/icon_eye.png"
		},
		//Углы
		"angleAimingBottom": {
			"enabled": ${ "@settings.xc": "settings.AngleAiming" },
			"updateEvent": "PY(ON_ANGLES_AIMING)",
			"x": 0,
			"y": "{{py:anglesAiming.bottom(12)}}",
			"width": 194,
			"height": 29,
			"alpha" : "{{py:anglesAiming.bottom(12)<350?{{py:math.sub(350, {{py:anglesAiming.bottom(12)}})}}|0}}",
			"screenHAlign": "center",
			"screenVAlign": "center",
			"format": "<img src='xvm://res/Angles/Bottom.png'>"
		},
		"angleAimingTop": {
			"enabled": ${ "@settings.xc": "settings.AngleAiming" },
			"updateEvent": "PY(ON_ANGLES_AIMING)",
			"x": 0,
			"y": "{{py:anglesAiming.top(-12)}}",
			"width": 194,
			"height": 29,
			"alpha" : "{{py:anglesAiming.top(-12)>-350?{{py:math.sum({{py:anglesAiming.top(-12)}}, 350)}}|0}}",
			"screenHAlign": "center",
			"screenVAlign": "center",
			"format": "<img src='xvm://res/Angles/Top.png'>"
		},
		//Таймер лампы
		"sixthSenseTimer": {
			"enabled": ${ "@settings.xc": "settings.sixthSenseTimer" },
			"updateEvent": "PY(ON_SIXTH_SENSE_SHOW)",
			"x": 0,
			"y": 260,
			"width": 60,
			"height": 50,
			"screenHAlign": "center",
			"shadow": { "distance": 1, "angle": 90, "alpha": 80, "blur": 5, "strength": 1.5 },
			"textFormat": {"align": "center", "size": 40 },
			"format": "{{py:xvm.sixthSenseTimer(10)}}"
		}
	}
  }
}