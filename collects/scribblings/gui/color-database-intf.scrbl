#reader(lib "defreader.ss" "scribble")
@require["common.ss"]

@define-interface-doc[color-database<%> ()]{

The global @indexed-scheme[the-color-database] object is an instance of
 @scheme[color-database<%>]. It maintains a database of standard RGB
 colors for a predefined set of named colors (such as ``black'' and
 ``light grey'').

The following colors are in the database:

@schemeblock[
#, @colorName[#"Orange Red" #"OrangeRed" 255 69 0]
#, @colorName[#"OrangeRed" #"OrangeRed" 255 69 0]
#, @colorName[#"Tomato" #"Tomato" 255 99 71]
#, @colorName[#"DarkRed" #"DarkRed" 139 0 0]
#, @colorName[#"Red" #"Red" 255 0 0]
#, @colorName[#"Firebrick" #"Firebrick" 178 34 34]
#, @colorName[#"Crimson" #"Crimson" 220 20 60]
#, @colorName[#"DeepPink" #"DeepPink" 255 20 147]
#, @colorName[#"Maroon" #"Maroon" 176 48 96]
#, @colorName[#"Indian Red" #"IndianRed" 205 92 92]
#, @colorName[#"IndianRed" #"IndianRed" 205 92 92]
#, @colorName[#"Medium Violet Red" #"MediumVioletRed" 199 21 133]
#, @colorName[#"MediumVioletRed" #"MediumVioletRed" 199 21 133]
#, @colorName[#"Violet Red" #"VioletRed" 208 32 144]
#, @colorName[#"VioletRed" #"VioletRed" 208 32 144]
#, @colorName[#"LightCoral" #"LightCoral" 240 128 128]
#, @colorName[#"HotPink" #"HotPink" 255 105 180]
#, @colorName[#"PaleVioletRed" #"PaleVioletRed" 219 112 147]
#, @colorName[#"LightPink" #"LightPink" 255 182 193]
#, @colorName[#"RosyBrown" #"RosyBrown" 188 143 143]
#, @colorName[#"Pink" #"Pink" 255 192 203]
#, @colorName[#"Orchid" #"Orchid" 218 112 214]
#, @colorName[#"LavenderBlush" #"LavenderBlush" 255 240 245]
#, @colorName[#"Snow" #"Snow" 255 250 250]
#, @colorName[#"Chocolate" #"Chocolate" 210 105 30]
#, @colorName[#"SaddleBrown" #"SaddleBrown" 139 69 19]
#, @colorName[#"Brown" #"Brown" 132 60 36]
#, @colorName[#"DarkOrange" #"DarkOrange" 255 140 0]
#, @colorName[#"Coral" #"Coral" 255 127 80]
#, @colorName[#"Sienna" #"Sienna" 160 82 45]
#, @colorName[#"Orange" #"Orange" 255 165 0]
#, @colorName[#"Salmon" #"Salmon" 250 128 114]
#, @colorName[#"Peru" #"Peru" 205 133 63]
#, @colorName[#"DarkGoldenrod" #"DarkGoldenrod" 184 134 11]
#, @colorName[#"Goldenrod" #"Goldenrod" 218 165 32]
#, @colorName[#"SandyBrown" #"SandyBrown" 244 164 96]
#, @colorName[#"LightSalmon" #"LightSalmon" 255 160 122]
#, @colorName[#"DarkSalmon" #"DarkSalmon" 233 150 122]
#, @colorName[#"Gold" #"Gold" 255 215 0]
#, @colorName[#"Yellow" #"Yellow" 255 255 0]
#, @colorName[#"Olive" #"Olive" 128 128 0]
#, @colorName[#"Burlywood" #"Burlywood" 222 184 135]
#, @colorName[#"Tan" #"Tan" 210 180 140]
#, @colorName[#"NavajoWhite" #"NavajoWhite" 255 222 173]
#, @colorName[#"PeachPuff" #"PeachPuff" 255 218 185]
#, @colorName[#"Khaki" #"Khaki" 240 230 140]
#, @colorName[#"DarkKhaki" #"DarkKhaki" 189 183 107]
#, @colorName[#"Moccasin" #"Moccasin" 255 228 181]
#, @colorName[#"Wheat" #"Wheat" 245 222 179]
#, @colorName[#"Bisque" #"Bisque" 255 228 196]
#, @colorName[#"PaleGoldenrod" #"PaleGoldenrod" 238 232 170]
#, @colorName[#"BlanchedAlmond" #"BlanchedAlmond" 255 235 205]
#, @colorName[#"Medium Goldenrod" #"MediumGoldenrod" 234 234 173]
#, @colorName[#"MediumGoldenrod" #"MediumGoldenrod" 234 234 173]
#, @colorName[#"PapayaWhip" #"PapayaWhip" 255 239 213]
#, @colorName[#"MistyRose" #"MistyRose" 255 228 225]
#, @colorName[#"LemonChiffon" #"LemonChiffon" 255 250 205]
#, @colorName[#"AntiqueWhite" #"AntiqueWhite" 250 235 215]
#, @colorName[#"Cornsilk" #"Cornsilk" 255 248 220]
#, @colorName[#"LightGoldenrodYellow" #"LightGoldenrodYellow" 250 250 210]
#, @colorName[#"OldLace" #"OldLace" 253 245 230]
#, @colorName[#"Linen" #"Linen" 250 240 230]
#, @colorName[#"LightYellow" #"LightYellow" 255 255 224]
#, @colorName[#"SeaShell" #"SeaShell" 255 245 238]
#, @colorName[#"Beige" #"Beige" 245 245 220]
#, @colorName[#"FloralWhite" #"FloralWhite" 255 250 240]
#, @colorName[#"Ivory" #"Ivory" 255 255 240]
#, @colorName[#"Green" #"Green" 0 255 0]
#, @colorName[#"LawnGreen" #"LawnGreen" 124 252 0]
#, @colorName[#"Chartreuse" #"Chartreuse" 127 255 0]
#, @colorName[#"Green Yellow" #"GreenYellow" 173 255 47]
#, @colorName[#"GreenYellow" #"GreenYellow" 173 255 47]
#, @colorName[#"Yellow Green" #"YellowGreen" 154 205 50]
#, @colorName[#"YellowGreen" #"YellowGreen" 154 205 50]
#, @colorName[#"Medium Forest Green" #"MediumForestGreen" 107 142 35]
#, @colorName[#"OliveDrab" #"OliveDrab" 107 142 35]
#, @colorName[#"MediumForestGreen" #"MediumForestGreen" 107 142 35]
#, @colorName[#"Dark Olive Green" #"DarkOliveGreen" 85 107 47]
#, @colorName[#"DarkOliveGreen" #"DarkOliveGreen" 85 107 47]
#, @colorName[#"DarkSeaGreen" #"DarkSeaGreen" 143 188 139]
#, @colorName[#"Lime" #"Lime" 0 255 0]
#, @colorName[#"Dark Green" #"DarkGreen" 0 100 0]
#, @colorName[#"DarkGreen" #"DarkGreen" 0 100 0]
#, @colorName[#"Lime Green" #"LimeGreen" 50 205 50]
#, @colorName[#"LimeGreen" #"LimeGreen" 50 205 50]
#, @colorName[#"Forest Green" #"ForestGreen" 34 139 34]
#, @colorName[#"ForestGreen" #"ForestGreen" 34 139 34]
#, @colorName[#"Spring Green" #"SpringGreen" 0 255 127]
#, @colorName[#"SpringGreen" #"SpringGreen" 0 255 127]
#, @colorName[#"Medium Spring Green" #"MediumSpringGreen" 0 250 154]
#, @colorName[#"MediumSpringGreen" #"MediumSpringGreen" 0 250 154]
#, @colorName[#"Sea Green" #"SeaGreen" 46 139 87]
#, @colorName[#"SeaGreen" #"SeaGreen" 46 139 87]
#, @colorName[#"Medium Sea Green" #"MediumSeaGreen" 60 179 113]
#, @colorName[#"MediumSeaGreen" #"MediumSeaGreen" 60 179 113]
#, @colorName[#"Aquamarine" #"Aquamarine" 112 216 144]
#, @colorName[#"LightGreen" #"LightGreen" 144 238 144]
#, @colorName[#"Pale Green" #"PaleGreen" 152 251 152]
#, @colorName[#"PaleGreen" #"PaleGreen" 152 251 152]
#, @colorName[#"Medium Aquamarine" #"MediumAquamarine" 102 205 170]
#, @colorName[#"MediumAquamarine" #"MediumAquamarine" 102 205 170]
#, @colorName[#"Turquoise" #"Turquoise" 64 224 208]
#, @colorName[#"LightSeaGreen" #"LightSeaGreen" 32 178 170]
#, @colorName[#"Medium Turquoise" #"MediumTurquoise" 72 209 204]
#, @colorName[#"MediumTurquoise" #"MediumTurquoise" 72 209 204]
#, @colorName[#"Honeydew" #"Honeydew" 240 255 240]
#, @colorName[#"MintCream" #"MintCream" 245 255 250]
#, @colorName[#"RoyalBlue" #"RoyalBlue" 65 105 225]
#, @colorName[#"DodgerBlue" #"DodgerBlue" 30 144 255]
#, @colorName[#"DeepSkyBlue" #"DeepSkyBlue" 0 191 255]
#, @colorName[#"CornflowerBlue" #"CornflowerBlue" 100 149 237]
#, @colorName[#"Steel Blue" #"SteelBlue" 70 130 180]
#, @colorName[#"SteelBlue" #"SteelBlue" 70 130 180]
#, @colorName[#"LightSkyBlue" #"LightSkyBlue" 135 206 250]
#, @colorName[#"Dark Turquoise" #"DarkTurquoise" 0 206 209]
#, @colorName[#"DarkTurquoise" #"DarkTurquoise" 0 206 209]
#, @colorName[#"Cyan" #"Cyan" 0 255 255]
#, @colorName[#"Aqua" #"Aqua" 0 255 255]
#, @colorName[#"DarkCyan" #"DarkCyan" 0 139 139]
#, @colorName[#"Teal" #"Teal" 0 128 128]
#, @colorName[#"Sky Blue" #"SkyBlue" 135 206 235]
#, @colorName[#"SkyBlue" #"SkyBlue" 135 206 235]
#, @colorName[#"Cadet Blue" #"CadetBlue" 96 160 160]
#, @colorName[#"CadetBlue" #"CadetBlue" 95 158 160]
#, @colorName[#"Dark Slate Gray" #"DarkSlateGray" 47 79 79]
#, @colorName[#"DarkSlateGray" #"DarkSlateGray" 47 79 79]
#, @colorName[#"LightSlateGray" #"LightSlateGray" 119 136 153]
#, @colorName[#"SlateGray" #"SlateGray" 112 128 144]
#, @colorName[#"Light Steel Blue" #"LightSteelBlue" 176 196 222]
#, @colorName[#"LightSteelBlue" #"LightSteelBlue" 176 196 222]
#, @colorName[#"Light Blue" #"LightBlue" 173 216 230]
#, @colorName[#"LightBlue" #"LightBlue" 173 216 230]
#, @colorName[#"PowderBlue" #"PowderBlue" 176 224 230]
#, @colorName[#"PaleTurquoise" #"PaleTurquoise" 175 238 238]
#, @colorName[#"LightCyan" #"LightCyan" 224 255 255]
#, @colorName[#"AliceBlue" #"AliceBlue" 240 248 255]
#, @colorName[#"Azure" #"Azure" 240 255 255]
#, @colorName[#"Medium Blue" #"MediumBlue" 0 0 205]
#, @colorName[#"MediumBlue" #"MediumBlue" 0 0 205]
#, @colorName[#"DarkBlue" #"DarkBlue" 0 0 139]
#, @colorName[#"Midnight Blue" #"MidnightBlue" 25 25 112]
#, @colorName[#"MidnightBlue" #"MidnightBlue" 25 25 112]
#, @colorName[#"Navy" #"Navy" 36 36 140]
#, @colorName[#"Blue" #"Blue" 0 0 255]
#, @colorName[#"Indigo" #"Indigo" 75 0 130]
#, @colorName[#"Blue Violet" #"BlueViolet" 138 43 226]
#, @colorName[#"BlueViolet" #"BlueViolet" 138 43 226]
#, @colorName[#"Medium Slate Blue" #"MediumSlateBlue" 123 104 238]
#, @colorName[#"MediumSlateBlue" #"MediumSlateBlue" 123 104 238]
#, @colorName[#"Slate Blue" #"SlateBlue" 106 90 205]
#, @colorName[#"SlateBlue" #"SlateBlue" 106 90 205]
#, @colorName[#"Purple" #"Purple" 160 32 240]
#, @colorName[#"Dark Slate Blue" #"DarkSlateBlue" 72 61 139]
#, @colorName[#"DarkSlateBlue" #"DarkSlateBlue" 72 61 139]
#, @colorName[#"DarkViolet" #"DarkViolet" 148 0 211]
#, @colorName[#"Dark Orchid" #"DarkOrchid" 153 50 204]
#, @colorName[#"DarkOrchid" #"DarkOrchid" 153 50 204]
#, @colorName[#"MediumPurple" #"MediumPurple" 147 112 219]
#, @colorName[#"Cornflower Blue" #"CornflowerBlue" 68 64 108]
#, @colorName[#"Medium Orchid" #"MediumOrchid" 186 85 211]
#, @colorName[#"MediumOrchid" #"MediumOrchid" 186 85 211]
#, @colorName[#"Magenta" #"Magenta" 255 0 255]
#, @colorName[#"Fuchsia" #"Fuchsia" 255 0 255]
#, @colorName[#"DarkMagenta" #"DarkMagenta" 139 0 139]
#, @colorName[#"Violet" #"Violet" 238 130 238]
#, @colorName[#"Plum" #"Plum" 221 160 221]
#, @colorName[#"Lavender" #"Lavender" 230 230 250]
#, @colorName[#"Thistle" #"Thistle" 216 191 216]
#, @colorName[#"GhostWhite" #"GhostWhite" 248 248 255]
#, @colorName[#"White" #"White" 255 255 255]
#, @colorName[#"WhiteSmoke" #"WhiteSmoke" 245 245 245]
#, @colorName[#"Gainsboro" #"Gainsboro" 220 220 220]
#, @colorName[#"Light Gray" #"LightGray" 211 211 211]
#, @colorName[#"LightGray" #"LightGray" 211 211 211]
#, @colorName[#"Silver" #"Silver" 192 192 192]
#, @colorName[#"Gray" #"Gray" 190 190 190]
#, @colorName[#"Dark Gray" #"DarkGray" 169 169 169]
#, @colorName[#"DarkGray" #"DarkGray" 169 169 169]
#, @colorName[#"Dim Gray" #"DimGray" 105 105 105]
#, @colorName[#"DimGray" #"DimGray" 105 105 105]
#, @colorName[#"Black" #"Black" 0 0 0]
]

The names are not case-sensitive.

See also @scheme[color%].




@defmethod[(find-color [color-name string?])
           (or/c (is-a?/c color%) false/c)]{

Finds a color by name (character case is ignored). If no color is
 found for the name, @scheme[#f] is returned.

}}
