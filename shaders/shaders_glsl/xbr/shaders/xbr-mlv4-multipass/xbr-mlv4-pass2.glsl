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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct prev {
    vec2 _tex_coord;
    vec2 _texture_size1;
float _placeholder35;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = TexCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = TexCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct prev {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder33;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
prev _PASSPREV21;
vec4 _r0102;
vec4 _r0112;
vec4 _r0122;
vec4 _r0132;
vec4 _r0142;
vec4 _r0152;
vec4 _TMP161;
vec4 _x0164;
vec4 _TMP165;
vec4 _x0168;
vec4 _TMP169;
vec4 _x0172;
vec4 _TMP173;
vec4 _x0176;
vec4 _TMP177;
vec4 _x0180;
vec4 _TMP183;
vec4 _a0186;
vec4 _TMP187;
vec4 _a0190;
vec4 _TMP193;
vec4 _a0196;
vec4 _TMP197;
vec4 _a0200;
vec4 _TMP203;
vec4 _a0206;
vec4 _TMP207;
vec4 _a0210;
vec4 _TMP213;
vec4 _a0216;
vec4 _TMP217;
vec4 _a0220;
vec4 _TMP223;
vec4 _a0226;
vec4 _TMP227;
vec4 _a0230;
vec4 _TMP233;
vec4 _a0236;
vec4 _TMP237;
vec4 _a0240;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform sampler2D PassPrev2Texture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _PB;
    vec4 _PD;
    vec4 _PE;
    vec4 _PF;
    vec4 _PH;
    vec4 _pe;
    vec4 _f2;
    vec4 _h2;
    vec4 _f1;
    vec4 _h3;
    bvec4 _nbrs;
    bvec4 _jag1;
    bvec4 _jag2;
    bvec4 _jag3;
    bvec4 _jag91;
    bvec4 _jag92;
    bvec4 _jag93;
    bvec4 _jag94;
    bvec4 _jag9;
    _PB = COMPAT_TEXTURE(Texture, TEX2.yw);
    _PD = COMPAT_TEXTURE(Texture, TEX3.xw);
    _PE = COMPAT_TEXTURE(Texture, TEX3.yw);
    _PF = COMPAT_TEXTURE(Texture, TEX3.zw);
    _PH = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP0 = COMPAT_TEXTURE(PassPrev2Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(PassPrev2Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(PassPrev2Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(PassPrev2Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(PassPrev2Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(PassPrev2Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(PassPrev2Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(PassPrev2Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(PassPrev2Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(PassPrev2Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(PassPrev2Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(PassPrev2Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(PassPrev2Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(PassPrev2Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(PassPrev2Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(PassPrev2Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(PassPrev2Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(PassPrev2Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(PassPrev2Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(PassPrev2Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(PassPrev2Texture, TEX7.xw);
    _r0102.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0102.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0102.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0102.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0112.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0112.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0112.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0112.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _x0164 = vec4( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02, 2.55000000E+02)*_PE + 5.00000000E-01;
    _TMP161 = floor(_x0164);
    _x0168 = vec4( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02, 2.55000000E+02)*_PF + 5.00000000E-01;
    _TMP165 = floor(_x0168);
    _x0172 = vec4( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02, 2.55000000E+02)*_PH + 5.00000000E-01;
    _TMP169 = floor(_x0172);
    _x0176 = vec4( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02, 2.55000000E+02)*_PB + 5.00000000E-01;
    _TMP173 = floor(_x0176);
    _x0180 = vec4( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02, 2.55000000E+02)*_PD + 5.00000000E-01;
    _TMP177 = floor(_x0180);
    _f2 = vec4(_TMP165.z, _TMP173.w, _TMP177.x, _TMP169.y);
    _h2 = vec4(_TMP169.z, _TMP165.w, _TMP173.x, _TMP177.y);
    _f1 = vec4(_TMP165.y, _TMP173.z, _TMP177.w, _TMP169.x);
    _h3 = vec4(_TMP169.w, _TMP165.x, _TMP173.y, _TMP177.z);
    _nbrs = bvec4(_TMP161.y > 1.00000000E+00 || _TMP161.w > 1.00000000E+00 ? true : false, _TMP161.z > 1.00000000E+00 || _TMP161.x > 1.00000000E+00 ? true : false, _TMP161.w > 1.00000000E+00 || _TMP161.y > 1.00000000E+00 ? true : false, _TMP161.x > 1.00000000E+00 || _TMP161.z > 1.00000000E+00 ? true : false);
    _jag1 = bvec4(_f2.x > 1.00000000E+00 || _h2.x > 1.00000000E+00 ? true : false, _f2.y > 1.00000000E+00 || _h2.y > 1.00000000E+00 ? true : false, _f2.z > 1.00000000E+00 || _h2.z > 1.00000000E+00 ? true : false, _f2.w > 1.00000000E+00 || _h2.w > 1.00000000E+00 ? true : false);
    _jag2 = bvec4(_f2.x > 2.00000000E+00 || _h2.x > 2.00000000E+00 ? true : false, _f2.y > 2.00000000E+00 || _h2.y > 2.00000000E+00 ? true : false, _f2.z > 2.00000000E+00 || _h2.z > 2.00000000E+00 ? true : false, _f2.w > 2.00000000E+00 || _h2.w > 2.00000000E+00 ? true : false);
    _jag3 = bvec4(_f2.x > 4.00000000E+00 || _h2.x > 4.00000000E+00 ? true : false, _f2.y > 4.00000000E+00 || _h2.y > 4.00000000E+00 ? true : false, _f2.z > 4.00000000E+00 || _h2.z > 4.00000000E+00 ? true : false, _f2.w > 4.00000000E+00 || _h2.w > 4.00000000E+00 ? true : false);
    _pe = vec4(_TMP161.x == 7.00000000E+00 || _TMP161.x == 8.00000000E+00 ? _jag3.x ? _TMP161.x : (_TMP161 - 2.00000000E+00).x : _TMP161.x, _TMP161.y == 7.00000000E+00 || _TMP161.y == 8.00000000E+00 ? _jag3.y ? _TMP161.y : (_TMP161 - 2.00000000E+00).y : _TMP161.y, _TMP161.z == 7.00000000E+00 || _TMP161.z == 8.00000000E+00 ? _jag3.z ? _TMP161.z : (_TMP161 - 2.00000000E+00).z : _TMP161.z, _TMP161.w == 7.00000000E+00 || _TMP161.w == 8.00000000E+00 ? _jag3.w ? _TMP161.w : (_TMP161 - 2.00000000E+00).w : _TMP161.w);
    _pe = vec4(_pe.x == 5.00000000E+00 || _pe.x == 6.00000000E+00 ? _jag2.x ? _pe.x : (_pe - 2.00000000E+00).x : _pe.x, _pe.y == 5.00000000E+00 || _pe.y == 6.00000000E+00 ? _jag2.y ? _pe.y : (_pe - 2.00000000E+00).y : _pe.y, _pe.z == 5.00000000E+00 || _pe.z == 6.00000000E+00 ? _jag2.z ? _pe.z : (_pe - 2.00000000E+00).z : _pe.z, _pe.w == 5.00000000E+00 || _pe.w == 6.00000000E+00 ? _jag2.w ? _pe.w : (_pe - 2.00000000E+00).w : _pe.w);
    _a0186 = _r0122 - _r0102.zwxy;
    _TMP183 = abs(_a0186);
    _a0190 = _r0102.zwxy - _r0112.wxyz;
    _TMP187 = abs(_a0190);
    _TMP21 = bvec4(_TMP183.x > _TMP187.x, _TMP183.y > _TMP187.y, _TMP183.z > _TMP187.z, _TMP183.w > _TMP187.w);
    _a0196 = _r0152.yzwx - _r0132;
    _TMP193 = abs(_a0196);
    _a0200 = _r0132 - _r0112.wxyz;
    _TMP197 = abs(_a0200);
    _TMP22 = bvec4(_TMP193.x > _TMP197.x, _TMP193.y > _TMP197.y, _TMP193.z > _TMP197.z, _TMP193.w > _TMP197.w);
    _jag91 = bvec4((_TMP21.x || _TMP22.x) && _f2.x > 1.00000000E+00 && _f1.x > 1.00000000E+00, (_TMP21.y || _TMP22.y) && _f2.y > 1.00000000E+00 && _f1.y > 1.00000000E+00, (_TMP21.z || _TMP22.z) && _f2.z > 1.00000000E+00 && _f1.z > 1.00000000E+00, (_TMP21.w || _TMP22.w) && _f2.w > 1.00000000E+00 && _f1.w > 1.00000000E+00);
    _a0206 = _r0122 - _r0102.wxyz;
    _TMP203 = abs(_a0206);
    _a0210 = _r0102.wxyz - _r0112.wxyz;
    _TMP207 = abs(_a0210);
    _TMP23 = bvec4(_TMP203.x > _TMP207.x, _TMP203.y > _TMP207.y, _TMP203.z > _TMP207.z, _TMP203.w > _TMP207.w);
    _a0216 = _r0152 - _r0142;
    _TMP213 = abs(_a0216);
    _a0220 = _r0142 - _r0112.wxyz;
    _TMP217 = abs(_a0220);
    _TMP24 = bvec4(_TMP213.x > _TMP217.x, _TMP213.y > _TMP217.y, _TMP213.z > _TMP217.z, _TMP213.w > _TMP217.w);
    _jag92 = bvec4((_TMP23.x || _TMP24.x) && _h2.x > 1.00000000E+00 && _h3.x > 1.00000000E+00, (_TMP23.y || _TMP24.y) && _h2.y > 1.00000000E+00 && _h3.y > 1.00000000E+00, (_TMP23.z || _TMP24.z) && _h2.z > 1.00000000E+00 && _h3.z > 1.00000000E+00, (_TMP23.w || _TMP24.w) && _h2.w > 1.00000000E+00 && _h3.w > 1.00000000E+00);
    _a0226 = _r0122 - _r0112.zwxy;
    _TMP223 = abs(_a0226);
    _a0230 = _r0102.zwxy - _r0112.zwxy;
    _TMP227 = abs(_a0230);
    _jag93 = bvec4((_TMP223/(_TMP227 + 9.99999972E-10)).x > 2.00000000E+00, (_TMP223/(_TMP227 + 9.99999972E-10)).y > 2.00000000E+00, (_TMP223/(_TMP227 + 9.99999972E-10)).z > 2.00000000E+00, (_TMP223/(_TMP227 + 9.99999972E-10)).w > 2.00000000E+00);
    _a0236 = _r0122 - _r0112;
    _TMP233 = abs(_a0236);
    _a0240 = _r0102.wxyz - _r0112;
    _TMP237 = abs(_a0240);
    _jag94 = bvec4((_TMP233/(_TMP237 + 9.99999972E-10)).x > 2.00000000E+00, (_TMP233/(_TMP237 + 9.99999972E-10)).y > 2.00000000E+00, (_TMP233/(_TMP237 + 9.99999972E-10)).z > 2.00000000E+00, (_TMP233/(_TMP237 + 9.99999972E-10)).w > 2.00000000E+00);
    _jag9 = bvec4(!(_jag91.x && _jag93.x || _jag92.x && _jag94.x), !(_jag91.y && _jag93.y || _jag92.y && _jag94.y), !(_jag91.z && _jag93.z || _jag92.z && _jag94.z), !(_jag91.w && _jag93.w || _jag92.w && _jag94.w));
    _pe = vec4(_pe.x == 0.00000000E+00 || (!_nbrs.x || _jag1.x) && _jag9.x ? _pe.x : 1.00000000E+00, _pe.y == 0.00000000E+00 || (!_nbrs.y || _jag1.y) && _jag9.y ? _pe.y : 1.00000000E+00, _pe.z == 0.00000000E+00 || (!_nbrs.z || _jag1.z) && _jag9.z ? _pe.z : 1.00000000E+00, _pe.w == 0.00000000E+00 || (!_nbrs.w || _jag1.w) && _jag9.w ? _pe.w : 1.00000000E+00);
    _ret_0 = _pe/vec4( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02, 2.55000000E+02);
    FragColor = _ret_0;
    return;
} 
#endif
