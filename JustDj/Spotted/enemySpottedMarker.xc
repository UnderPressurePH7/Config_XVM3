{
  // Enemy spotted status marker format for substitutions in extra fields.
  // Подстановка для дополнительного поля с маркером статуса засвета
  "enemySpottedMarker": {
    // Opacity percentage of spotted markers in the panels. 0 - transparent (disabled) ... 100 - opaque.
    // Прозрачность в процентах маркеров засвета в ушах. 0 - полностью прозрачные (отключены), 100 - не прозрачные.
    "alpha": "{{a:spotted}}",
    // x position.
    // положение по горизонтали.
    "x": 85,
    // y position.
    // положение по вертикали.
    "y": 1,
    // Horizontal alignment
    // Выравнивание по горизонтали
    "align": "center",
    // true - x position is binded to vehicle icon, false - binded to edge of the screen.
    // true - положение по горизонтали отсчитывается от иконки танка, false - от края экрана.
    "bindToIcon": true,
    // enemy spotted status marker format.
    // формат маркера статуса засвета.
/*SpotLamps
    "format": "<font color='{{c:spotted}}'>{{spotted}}</font>",
SpotLamps*/
/*SpotStars
    "format": "<font color='{{c:spotted}}'>{{spotted}}</font>",
SpotStars*/
/*SpotPoint
    "format": "{{spotted}}",
SpotPoint*/
    // shadow (see below).
    // настройки тени (см. ниже).
    "shadow": {}
  },
	// Text for {{spotted}} macro.
  // Текст для макроса {{spotted}}
    "spotted": {
/*SpotLamps
      "neverSeen": "",
      "lost": "<font face='xvm' size='23'>&#x70;</font>",
      "spotted": "<font face='xvm' size='23'>&#x70;</font>",
      "dead": "",
      "neverSeen_arty": "",
      "lost_arty": "<font face='xvm' size='23'>&#x70;</font>",
      "spotted_arty": "<font face='xvm' size='23'>&#x70;</font>",
      "dead_arty": ""
SpotLamps*/
/*SpotStars
      "neverSeen": "<font face='$FieldFont' size='24' color='#DEDEDE'>*</font>",
      "lost": "<font face='$FieldFont' size='24' color='#FF3C3C'>*</font>",
      "spotted": "<font face='$FieldFont' size='24' color='#65FF3C'>*</font>",
      "dead": "",
      "neverSeen_arty": "<font face='$FieldFont' size='24' color='#DEDEDE'>*</font>",
      "lost_arty": "<font face='$FieldFont' size='24' color='#FF3C3C'>*</font>",
      "spotted_arty": "<font face='$FieldFont' size='24' color='#65FF3C'>*</font>",
      "dead_arty": ""
SpotStars*/
/*SpotPoint
      "neverSeen": "<img src='xvm://res/icons/2.png' width='10' height='10'>",
      "lost": "<img src='xvm://res/icons/1.png' width='10' height='10'>",
      "spotted": "<img src='xvm://res/icons/3.png' width='10' height='10'>",
      "dead": "",
      "neverSeen_arty": "<img src='xvm://res/icons/2.png' width='10' height='10'>",
      "lost_arty": "<img src='xvm://res/icons/1.png' width='10' height='10'>",
      "spotted_arty": "<img src='xvm://res/icons/3.png' width='10' height='10'>",
      "dead_arty": ""
SpotPoint*/
    }
}