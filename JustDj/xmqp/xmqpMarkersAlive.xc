{
    // Text field with the XMQP event marker.
    // Текстовое поле с маркером события XMQP.
    "xmqpEvent": {
      "name": "xmqp event",           //  название текстового поля, ни на что не влияет
      "enabled": false,                //  false - не отображать
      "x": 0,                         //  положение по оси X
      "y": "{{battletype?-73|{{squad?-73|-58}}}}",  //  положение по оси Y
      "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
      "align": "center",              //  выравнивание текста (left, center, right)
      // Font options.
      // Параметры шрифта.
      "textFormat": {
        "font": "xvm",                //  название
        "size": 20,                   //  размер
        "color": "0xFFBB00",          //  цвет (допускается использование динамического цвета, см. macros.txt)
        "bold": false,                //  обычный (false) или жирный (true)
        "italic": false               //  обычный (false) или курсив (true)
      },
      // Shadow options.
      // Параметры тени.
      "shadow": {
        // false - no shadow
        // false - без тени
        "enabled": false,
        "distance": 0,                //  дистанция смещения
        "angle": 45,                  //  угол смещения
        "color": "0x000000",          //  цвет
        "alpha": 100,                 //  прозрачность
        "blur": 4,                    //  размытие
        "strength": 1                 //  интенсивность
      },
      "format": "<font color='{{x-spotted?#FFBB00|#FFFFFF}}' alpha='{{x-spotted?#FF|#80}}'>{{x-enabled?&#x70;}}</font> {{x-overturned?&#x112;}}"
    }
}