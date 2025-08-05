{
  "postprogress": {
    "enabled": ${ "@settings.xc": "widgets.postprogress" },
    "layer": "normal",
    "type": "extrafield",
    "formats": [
      {
        "screenHAlign": "right",
        "x": -37,
        "y": 97,
        "format": "{{v.levelPostProgress?{{v.level=6?{{v.levelPostProgress=5?<img src='xvm://res/postprogress/Full.png'>|}}|{{py:sub({{v.level|0}},{{v.levelPostProgress|0}})<3?<img src='xvm://res/postprogress/Full.png'>|}}}}|}}"
      },
      {
        "screenHAlign": "right",
        "x": -38,
        "y": 97,
        "format": "{{v.levelPostProgress?{{v.level=6?{{v.levelPostProgress=5?|<img src='xvm://res/postprogress/_{{v.levelPostProgress}}.png'>}}|{{py:sub({{v.level|0}},{{v.levelPostProgress|0}})<3?|<img src='xvm://res/postprogress/_{{v.levelPostProgress}}.png'>}}}}|}}"
      }
    ]
  }
}
