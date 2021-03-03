{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 525.0, 149.0, 650.0, 601.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 336.0, 445.0, 196.0, 34.0 ],
					"presentation_rect" : [ 0.0, 0.0, 336.0, 53.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.000015, 195.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 178.000015, 219.0, 82.0, 22.0 ],
					"style" : "",
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 327.0, 83.0, 21.071442, 21.071442 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 305.0, 57.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "change 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 327.0, 108.928558, 21.071442, 21.071442 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-87",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 297.571442, 156.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 313.571411, 274.5, 26.0, 22.0 ],
					"style" : "",
					"text" : "s s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 132.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 305.0, 31.928558, 153.0, 22.0 ],
					"style" : "",
					"text" : "if $f1 == 34. then 1. else 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 392.0, 26.0, 22.0 ],
					"style" : "",
					"text" : "r N"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.000015, 171.0, 28.0, 22.0 ],
					"style" : "",
					"text" : "s N"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 421.0, 539.440002, 80.287888, 211.960022 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "nslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 336.0, 539.440002, 80.287888, 211.960022 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 543.0, 420.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "ftom"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-64",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 117.0, 816.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 117.0, 790.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "/ 10."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 84.000015, 790.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 84.000015, 757.400024, 29.5, 22.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-59",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 329.071442, 231.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 297.571442, 231.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 84.000015, 729.400024, 24.0, 22.0 ],
					"style" : "",
					"text" : "r s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 297.571442, 207.0, 45.0, 22.0 ],
					"style" : "",
					"text" : "cycle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 297.571442, 183.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-32",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 297.571442, 7.928558, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 228.500015, 123.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"items" : [ "stop", ",", "record", ",", "play", ",", "mute", ",", "unmute", ",", "delay", 0, ",", "first", 0, ",", "read", ",", "write", ",", "clear" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 445.0, 325.0, 61.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-33",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 481.0, 298.5, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-3",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 409.0, 380.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 409.0, 351.0, 38.0, 22.0 ],
					"style" : "",
					"text" : "mtr 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 164.000015, 919.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "clip~ -1. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 353.0, 932.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "clip~ -1. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 68.333359, 451.0, 66.0, 22.0 ],
					"style" : "",
					"text" : "clip~ -1. 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 275.571442, 351.0, 36.0, 22.0 ],
					"style" : "",
					"text" : "s del"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 299.0, 943.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "t f f"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-70",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 247.0, 991.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 299.0, 973.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "/ 8.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 299.0, 919.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "r del"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 145.0, 1098.0, 22.0, 22.0 ],
					"style" : "",
					"text" : "r r"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 135.333359, 868.0, 24.0, 22.0 ],
					"style" : "",
					"text" : "s r"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 322.333374, 1017.0, 154.0, 22.0 ],
					"style" : "",
					"text" : "delay~ 44100 @delay 500."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 164.0, 1017.0, 154.0, 22.0 ],
					"style" : "",
					"text" : "delay~ 44100 @delay 150."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 215.000015, 892.0, 76.0, 22.0 ],
					"style" : "",
					"text" : "cross~ 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 164.000015, 868.0, 70.0, 22.0 ],
					"style" : "",
					"text" : "cross~ 800"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 164.000015, 841.0, 102.0, 23.0 ],
					"style" : "",
					"text" : "-~"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 247.0, 816.0, 101.0, 23.0 ],
					"style" : "",
					"text" : "onepole~ 1000."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 163.000015, 790.0, 93.0, 23.0 ],
					"style" : "",
					"text" : "onepole~ 800."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.999969, 1098.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 216.999969, 1074.0, 74.0, 22.0 ],
					"style" : "",
					"text" : "startwindow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 1127.0, 50.5, 22.0 ],
					"style" : "",
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 163.000015, 274.5, 34.0, 22.0 ],
					"style" : "",
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 112.000015, 327.0, 29.5, 22.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 112.000015, 246.0, 46.0, 22.0 ],
					"style" : "",
					"text" : "noise~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 178.000015, 147.0, 63.0, 22.0 ],
					"style" : "",
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.250015, 209.0, 39.0, 22.0 ],
					"style" : "",
					"text" : "next"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 107.250015, 180.0, 39.0, 22.0 ],
					"style" : "",
					"text" : "delay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 107.250015, 153.0, 39.0, 22.0 ],
					"style" : "",
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 194.250031, 90.0, 33.0, 22.0 ],
					"style" : "",
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 158.250031, 90.0, 34.0, 22.0 ],
					"style" : "",
					"text" : "start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 107.250015, 90.0, 44.0, 22.0 ],
					"style" : "",
					"text" : "import"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "int", "int", "int", "int", "int", "int", "int", "int" ],
					"patching_rect" : [ 107.250015, 123.0, 120.000015, 22.0 ],
					"save" : [ "#N", "detonate", "u316001548", ";", "#X", "setparam", 0, "Time", 0, 0, 999999, 0, 1000, 200, 0, ";", "#X", "setparam", 1, "Pitch", 0, 0, 127, 60, 12, 4, 0, ";", "#X", "setparam", 2, "Vel", 0, 0, 127, 64, 12, 4, 0, ";", "#X", "setparam", 3, "Dur", 0, 1, 99999, 200, 800, 200, 0, ";", "#X", "setparam", 4, "Chan", 0, 1, 16, 1, 8, 1, 0, ";", "#X", "setparam", 5, "Track", 0, 1, 32, 1, 8, 1, 0, ";", "#X", "setparam", 6, "X1", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "setparam", 7, "X2", 0, 0, 999, 0, 80, 20, 0, ";", "#X", "restore", ";", "#X", 0, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 1000, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 0, 60, 100, 150, 1, 1, 0, 0, ";", "#X", 59, 33, 37, 88, 1, 2, 0, 0, ";", "#X", 706, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 706, 33, 39, 89, 1, 2, 0, 0, ";", "#X", 706, 33, 38, 89, 1, 2, 0, 0, ";", "#X", 354, 33, 37, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 39, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 31, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 38, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 35, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 37, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 40, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 45, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 36, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 43, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 36, 89, 1, 2, 0, 0, ";", "#X", 354, 33, 36, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 48, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 37, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 42, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 37, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 37, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 45, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 34, 88, 1, 2, 0, 0, ";", "#X", 353, 33, 34, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 42, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 34, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 43, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 31, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 44, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 38, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 45, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 44, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 37, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 41, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 38, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 46, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 34, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 42, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 35, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 47, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 35, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 42, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 47, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 34, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 50, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 36, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 45, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 29, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 39, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 36, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 42, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 34, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 40, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 32, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 44, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 31, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 45, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 29, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 47, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 39, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 47, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 42, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 34, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 40, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 34, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 39, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 34, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 44, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 31, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 45, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 36, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 42, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 38, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 46, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 34, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 47, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 45, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 44, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 36, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 45, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 36, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 44, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 34, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 44, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 35, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 50, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 37, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 48, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 34, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 46, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 33, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 48, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 38, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 41, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 39, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 44, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 34, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 42, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 35, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 45, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 34, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 42, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 36, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 41, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 69, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 92, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 72, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 91, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 74, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 94, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 75, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 92, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 77, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 90, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 76, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 98, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 75, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 98, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 74, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 96, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 77, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 94, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 79, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 90, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 75, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 94, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 74, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 95, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 80, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 91, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 73, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 92, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 75, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 93, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 73, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 95, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 73, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 88, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 77, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 97, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 74, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 96, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 77, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 97, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 70, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 92, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 76, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 93, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 70, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 90, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 73, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 93, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 78, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 92, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 72, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 96, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 75, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 92, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 73, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 90, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 72, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 93, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 75, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 91, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 77, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 96, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 76, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 97, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 72, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 95, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 74, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 93, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 74, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 91, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 72, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 93, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 73, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 93, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 75, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 95, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 80, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 97, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 77, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 95, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 74, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 94, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 77, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 95, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 75, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 95, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 68, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 92, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 73, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 99, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 73, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 94, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 77, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 98, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 73, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 94, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 70, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 94, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 75, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 93, 88, 1, 2, 0, 0, ";", "#X", 177, 33, 76, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 88, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 68, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 91, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 73, 88, 1, 2, 0, 0, ";", "#X", 176, 45, 93, 89, 1, 2, 0, 0, ";", "#X", 177, 33, 76, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 95, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 78, 88, 1, 2, 0, 0, ";", "#X", 177, 45, 93, 88, 1, 2, 0, 0, ";", "#X", 176, 33, 80, 89, 1, 2, 0, 0, ";", "#X", 177, 45, 92, 88, 1, 2, 0, 0, ";", "#X", "stop", ";" ],
					"style" : "",
					"text" : "detonate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 163.000015, 245.0, 23.0, 23.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 7,
							"minor" : 3,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"rect" : [ -31958.0, -31915.0, 938.0, 355.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-53",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 198.555542, 15.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 358.722229, 66.0, 153.0, 22.0 ],
									"style" : "",
									"text" : "if $f1 == 45. then 1. else 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 198.555542, 66.0, 153.0, 22.0 ],
									"style" : "",
									"text" : "if $f1 == 34. then 1. else 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 788.0, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 741.0, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 693.166687, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 642.166687, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 596.0, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 548.666687, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 499.666687, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 451.666687, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 402.666687, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 353.666687, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 304.666687, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 256.055542, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 217.055542, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 168.055542, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-19",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 119.055542, 230.0, 50.0, 22.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.055542, 175.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 153.055542, 257.0, 29.5, 22.0 ],
									"style" : "",
									"text" : "/ 4."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-37",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 119.055542, 318.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 120.055542, 15.0, 30.0, 30.0 ],
									"style" : ""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 789.0, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "3520."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 742.0, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "3300."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 694.166687, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "2637."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 643.166687, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "2860."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 597.0, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "2420."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 549.666687, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "2200."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 500.666687, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "1980."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 452.666687, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "1760."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 403.666687, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "1540."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 354.666687, 136.0, 41.0, 22.0 ],
									"style" : "",
									"text" : "1320."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 305.666687, 136.0, 40.0, 22.0 ],
									"style" : "",
									"text" : "1100."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 789.0, 107.0, 43.0, 22.0 ],
									"style" : "",
									"text" : "sel 15"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 742.0, 107.0, 43.0, 22.0 ],
									"style" : "",
									"text" : "sel 14"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 694.166687, 107.0, 43.0, 22.0 ],
									"style" : "",
									"text" : "sel 13"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 643.166687, 107.0, 43.0, 22.0 ],
									"style" : "",
									"text" : "sel 12"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 597.0, 107.0, 42.0, 22.0 ],
									"style" : "",
									"text" : "sel 11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 549.666687, 107.0, 43.0, 22.0 ],
									"style" : "",
									"text" : "sel 10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 500.666687, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 452.666687, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 403.666687, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 354.666687, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 305.666687, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 120.055542, 66.0, 68.0, 22.0 ],
									"style" : "",
									"text" : "random 15"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 257.055542, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 218.055542, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 169.055542, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 120.055542, 107.0, 36.0, 22.0 ],
									"style" : "",
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 257.055542, 136.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "880."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.055542, 136.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "660."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 169.055542, 136.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "440."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 120.055542, 136.0, 34.0, 22.0 ],
									"style" : "",
									"text" : "220."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 1,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 177.555542, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 265.555542, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 226.555542, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 461.166687, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 412.166687, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 363.166687, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 314.166687, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 797.5, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 750.5, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 702.666687, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 651.666687, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 605.5, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 558.166687, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 509.166687, 206.0, 128.555542, 206.0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 1,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 0,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 11,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 12,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 7,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 8,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 9,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 10,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 0,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 1,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 2,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 3,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 4,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 5,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 6,
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 1,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 208.055542, 61.5, 368.222229, 61.5 ],
									"order" : 0,
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 462.166687, 97.0 ],
									"order" : 7,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 606.5, 97.0 ],
									"order" : 4,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 559.166687, 97.0 ],
									"order" : 5,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 510.166687, 97.0 ],
									"order" : 6,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 413.166687, 97.0 ],
									"order" : 8,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 364.166687, 97.0 ],
									"order" : 9,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 315.166687, 97.0 ],
									"order" : 10,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"order" : 14,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 178.555542, 97.0 ],
									"order" : 13,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 798.5, 97.0 ],
									"order" : 0,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 227.555542, 97.0 ],
									"order" : 12,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 266.555542, 97.0 ],
									"order" : 11,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 751.5, 97.0 ],
									"order" : 1,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 703.666687, 97.0 ],
									"order" : 2,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"midpoints" : [ 129.555542, 97.0, 652.666687, 97.0 ],
									"order" : 3,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 163.000015, 298.5, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"style" : "",
						"tags" : ""
					}
,
					"style" : "",
					"text" : "p random Q"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 207.571442, 699.0, 124.0, 22.0 ],
					"style" : "",
					"text" : "0, 1 800 0.4 600 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 321.0, 411.0, 125.0, 22.0 ],
					"style" : "",
					"text" : "scale 0 999 800 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 321.0, 383.399994, 81.0, 22.0 ],
					"style" : "",
					"text" : "random 1000"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-8",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 384.0, 223.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-31",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 260.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 401.0, 298.5, 76.0, 22.0 ],
					"style" : "",
					"text" : "unpack 0. 0."
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"format" : 6,
					"id" : "obj-29",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 281.571442, 675.0, 50.0, 22.0 ],
					"style" : "",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "bang" ],
					"patching_rect" : [ 196.000015, 729.400024, 36.0, 22.0 ],
					"style" : "",
					"text" : "line~"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-10",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 196.000015, 761.400024, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.000015, 761.400024, 29.5, 22.0 ],
					"style" : "",
					"text" : "*~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 33.0, 380.0, 80.0, 13.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "meter~",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 174.000015, 679.5, 80.0, 13.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 112.000015, 356.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "*~ 0.02"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-18",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 261.571442, 274.5, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 261.571442, 298.5, 113.0, 22.0 ],
					"style" : "",
					"text" : "scale -150. 0. -1. 1."
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-28",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 313.571411, 325.0, 49.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"format" : 6,
					"id" : "obj-26",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 384.0, 325.0, 58.0, 22.0 ],
					"style" : "",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"format" : 6,
					"id" : "obj-24",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 257.571442, 325.0, 50.0, 22.0 ],
					"style" : "",
					"tricolor" : [ 0.784314, 0.145098, 0.023529, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "edit_mode",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-20",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"orientation" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 163.000015, 327.0, 83.0, 46.0 ],
					"style" : "",
					"text_width" : 83.0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-9",
					"maxclass" : "filtergraph~",
					"nfilters" : 1,
					"numinlets" : 8,
					"numoutlets" : 7,
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 159.000015, 387.0, 157.0, 262.559998 ],
					"range" : [ 0.0, 2.0 ],
					"setfilter" : [ 0, 3, 1, 0, 0, 275.0, 2.0, 30.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 159.000015, 654.0, 71.5, 22.0 ],
					"style" : "",
					"text" : "biquad~"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 205.500015, 786.200012, 126.5, 786.200012 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 271.071442, 322.25, 323.071411, 322.25 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 224.500015, 915.5, 362.5, 915.5 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 226.499969, 1095.5, 173.5, 1095.5 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 226.499969, 1124.0, 173.5, 1124.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 330.5, 676.950012, 291.071442, 676.950012 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 552.5, 535.5, 345.5, 535.5 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 160.035736, 147.5, 231.500015, 147.5 ],
					"source" : [ "obj-21", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 145.607162, 147.5, 209.500015, 147.5 ],
					"source" : [ "obj-21", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 131.178589, 147.5, 187.500015, 147.5 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 205.500015, 752.400024, 159.750015, 752.400024, 159.750015, 326.0, 132.000015, 326.0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 205.500015, 754.700012, 104.000015, 754.700012 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.235294, 0.0, 1.0, 1.0 ],
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 288.0, 145.0, 288.0, 256.0, 484.0, 256.0, 490.5, 256.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 267.071442, 349.0, 418.5, 349.0 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 267.071442, 349.0, 552.5, 349.0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 2,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 3,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 393.5, 376.200012, 306.500015, 376.200012 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 323.071411, 376.200012, 286.785729, 376.200012 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 291.071442, 699.950012, 217.071442, 699.950012 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 467.5, 322.5, 253.285721, 322.5, 253.285721, 271.5, 271.071442, 271.5 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 410.5, 320.0, 267.071442, 320.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 2,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 490.5, 321.25, 454.5, 321.25 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 239.0, 114.0 ],
					"order" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 454.5, 348.5, 418.5, 348.5 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 203.750031, 117.0, 116.750015, 117.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 173.500015, 865.5, 144.833359, 865.5 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 116.750015, 240.0, 95.250015, 240.0, 95.250015, 119.0, 116.750015, 119.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.145098, 0.07451, 0.376471, 1.0 ],
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 187.500015, 170.0, 295.0, 170.0, 295.0, 6.928558 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 2,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 121.500015, 379.25, 42.5, 379.25 ],
					"order" : 1,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 121.500015, 452.0, 77.833359, 452.0 ],
					"order" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 537.5, 535.5, 430.5, 535.5 ],
					"order" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 537.5, 439.0, 345.5, 439.0 ],
					"order" : 1,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 262.0, 297.0, 262.0, 376.0, 330.5, 376.0 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 93.500015, 1066.5, 205.0, 1066.5 ],
					"order" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 93.500015, 1066.5, 173.5, 1066.5 ],
					"order" : 1,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-68", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 308.5, 992.5, 256.5, 992.5 ],
					"order" : 1,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 154.5, 1120.5, 205.0, 1120.5 ],
					"order" : 0,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 154.5, 1124.5, 173.5, 1124.5 ],
					"order" : 1,
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 331.833374, 1041.0, 205.0, 1041.0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"order" : 1,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 172.500015, 814.0, 256.5, 814.0 ],
					"order" : 0,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 393.5, 280.5, 393.5, 280.5 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 77.833359, 654.200012, 168.500015, 654.200012 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-89", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 172.500015, 322.5, 267.071442, 322.5 ],
					"source" : [ "obj-95", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
