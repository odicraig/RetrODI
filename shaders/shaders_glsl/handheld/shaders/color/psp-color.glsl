// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
input_dummy _IN1;
vec4 _r0025;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTex;
    vec2 _shift;
    vec2 _overscan_coord;
    _r0025 = VertexCoord.x*MVPMatrix[0];
    _r0025 = _r0025 + VertexCoord.y*MVPMatrix[1];
    _r0025 = _r0025 + VertexCoord.z*MVPMatrix[2];
    _r0025 = _r0025 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0025;
    _shift = (5.00000000E-01*InputSize)/TextureSize;
    _overscan_coord = (TexCoord.xy - _shift) + _shift;
    _oTex = _overscan_coord;
    gl_Position = _r0025;
    TEX0.xy = _overscan_coord;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
float _TMP5;
float _TMP4;
float _TMP3;
float _TMP2;
vec4 _TMP6;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec4 _TMP47;
vec4 _r0054;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _TMP0 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP2 = pow(_TMP0.x, 2.21000004E+00);
    _TMP3 = pow(_TMP0.y, 2.21000004E+00);
    _TMP4 = pow(_TMP0.z, 2.21000004E+00);
    _TMP5 = pow(_TMP0.w, 2.21000004E+00);
    _TMP1 = vec4(_TMP2, _TMP3, _TMP4, _TMP5);
    _TMP6 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP1.xyzw);
    _TMP47 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP6);
    _r0054.x = dot(vec4( 9.70000029E-01, 4.99999989E-03, 0.00000000E+00, 0.00000000E+00), _TMP47);
    _r0054.y = dot(vec4( 9.99999978E-03, 7.50000000E-01, 2.39999995E-01, 0.00000000E+00), _TMP47);
    _r0054.z = dot(vec4( 2.49999994E-03, 2.49999994E-03, 9.95000005E-01, 0.00000000E+00), _TMP47);
    _r0054.w = dot(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP47);
    _TMP2 = pow(_r0054.x, 4.54545438E-01);
    _TMP3 = pow(_r0054.y, 4.54545438E-01);
    _TMP4 = pow(_r0054.z, 4.54545438E-01);
    _TMP5 = pow(_r0054.w, 4.54545438E-01);
    _ret_0 = vec4(_TMP2, _TMP3, _TMP4, _TMP5);
    FragColor = _ret_0;
    return;
} 
#endif
