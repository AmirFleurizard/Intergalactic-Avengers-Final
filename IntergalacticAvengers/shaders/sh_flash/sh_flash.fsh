//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float utimer;

void main()
{
	
	vec4 finalColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	finalColor.r *= 2.0 + sin(utimer * 0.5);
    gl_FragColor = finalColor;
}
