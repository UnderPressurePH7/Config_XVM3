/**
 * Widgets templates.
 * Шаблоны виджетов.
 */
{
  // Clock widget in hangar.
  // Виджет часов в ангаре.
  "clock": {
    // true - show widget.
    // true - показывать виджет.
    "enabled": false,
    // layer - "bottom", "normal" (default), "top".
    // слой - "bottom", "normal" (по-умолчанию), "top".
    "layer": "normal",
    "type": "extrafield",
    "formats": [
      {
        "updateEvent": "ON_EVERY_SECOND",
        // Horizontal position.
        // Положение по горизонтали.
        "x": -400,
        // Vertical position.
        // Положение по вертикали.
        "y": 86,
        // Width.
        // Ширина.
        "width": 300,
        // Height.
        // Высота.
        "height": 60,
        // Horizontal alignment of field at screen ("left", "center", "right").
        // Горизонтальное выравнивание поля на экране ("left", "center", "right").
        "screenHAlign": "center",
        "shadow": {
          // false - no shadow.
          // false - без тени.
          "enabled": true,
          "distance": 0,       // (in pixels)    / offset distance / дистанция смещения
          "angle": 0,          // (0.0 .. 360.0) / offset angle    / угол смещения
          "color": "0x000000", // "0xXXXXXX"     / color           / цвет
          "alpha": 70,         // (0 .. 100)     / opacity         / прозрачность
          "blur": 4,           // (0.0 .. 255.0) / blur            / размытие
          "strength": 2        // (0.0 .. 255.0) / intensity       / интенсивность
        },
        "textFormat": { "align": "right", "valign": "center", "color": "0x959688" },
        "format": "<font face='$FieldFont'><textformat leading='-38'><font size='36'>{{py:xvm.formatDate('%H:%M')}}</font><br></textformat><textformat rightMargin='85' leading='-2'>{{py:xvm.formatDate('%A')}}<br><font size='15'>{{py:xvm.formatDate('%d %b %Y')}}</font></textformat></font>"
      }
    ]
  }
}
