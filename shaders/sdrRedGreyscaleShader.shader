//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Shader that draws an image in white and black tones.
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    const vec3 weight = vec3( 0.2125, 0.7154, 0.0721 );
    vec4 color = texture2D( gm_BaseTexture, v_vTexcoord );
    float luminance = 1.5 * dot( color.rgb, weight );
    gl_FragColor = vec4( luminance, luminance, luminance, color.a );
}

