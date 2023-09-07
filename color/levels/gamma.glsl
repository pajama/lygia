
/*
original_author: Johan Ismael
description: |
    Color gamma correction similar to Levels adjusment in Photoshop
    Adapted from Romain Dura (http://mouaif.wordpress.com/?p=94)
use: levelsGamma(<vec3|vec4> color, <float|vec3> gamma)
*/

#ifndef FNC_GAMMA
#define FNC_GAMMA
vec3 levelsGamma(in vec3 v, in vec3 g) { return pow(v, 1.0 / g); }
vec3 levelsGamma(in vec3 v, in float g) { return levelsGamma(v, vec3(g)); }
vec4 levelsGamma(in vec4 v, in vec3 g) { return vec4(levelsGamma(v.rgb, g), v.a); }
vec4 levelsGamma(in vec4 v, in float g) { return vec4(levelsGamma(v.rgb, g), v.a); }
#endif