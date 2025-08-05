/**
 * Настройка числа выстрелов в маркерах для противников.
 */
{
	//MHv1"format": "{{hp}} | <font color='#00ff00'>{{py:math.sum({{py:math.div({{hp>0?{{hp}}|0}},{{py:shell_damage.shell_damage}})}},0.5)%d}}</font> | {{hp-max}}"
	//MHv2"format": "{{hp}} | <font color='#00ff00'>{{py:math.sum({{py:math.div({{hp>0?{{hp}}|0}},{{py:shell_damage.shell_damage}})}},0.5)%d}}</font>"
	"format": "{{hp}}/{{hp-max}}"
}
