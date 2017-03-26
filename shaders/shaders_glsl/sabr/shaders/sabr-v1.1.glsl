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
COMPAT_VARYING     vec4 VARxyp_21_22_23;
COMPAT_VARYING     vec4 VARxyp_16_17_18;
COMPAT_VARYING     vec4 VARxyp_11_12_13;
COMPAT_VARYING     vec4 VARxyp_9_14_9;
COMPAT_VARYING     vec4 VARxyp_6_7_8;
COMPAT_VARYING     vec4 VARxyp_5_10_15;
COMPAT_VARYING     vec4 VARxyp_1_2_3;
COMPAT_VARYING     vec2 _tc;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _pos;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _pos;
    vec4 _color1;
    vec2 _tc;
    vec4 VARxyp_1_2_3;
    vec4 VARxyp_5_10_15;
    vec4 VARxyp_6_7_8;
    vec4 VARxyp_9_14_9;
    vec4 VARxyp_11_12_13;
    vec4 VARxyp_16_17_18;
    vec4 VARxyp_21_22_23;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    float _x;
    float _y;
    vec2 _texCoord;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _x = 1.00000000E+00/TextureSize.x;
    _y = 1.00000000E+00/TextureSize.y;
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT.VARxyp_1_2_3 = _texCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, -2.00000000E+00*_y);
    _OUT.VARxyp_6_7_8 = _texCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, -_y);
    _OUT.VARxyp_11_12_13 = _texCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, 0.00000000E+00);
    _OUT.VARxyp_16_17_18 = _texCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, _y);
    _OUT.VARxyp_21_22_23 = _texCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, 2.00000000E+00*_y);
    _OUT.VARxyp_5_10_15 = _texCoord.xyyy + vec4(-2.00000000E+00*_x, -_y, 0.00000000E+00, _y);
    _OUT.VARxyp_9_14_9 = _texCoord.xyyy + vec4(2.00000000E+00*_x, -_y, 0.00000000E+00, _y);
    _ret_0._pos = _r0006;
    _ret_0._color1 = _OUT._color1;
    _ret_0._tc = _texCoord;
    VARxyp_1_2_3 = _OUT.VARxyp_1_2_3;
    VARxyp_5_10_15 = _OUT.VARxyp_5_10_15;
    VARxyp_6_7_8 = _OUT.VARxyp_6_7_8;
    VARxyp_9_14_9 = _OUT.VARxyp_9_14_9;
    VARxyp_11_12_13 = _OUT.VARxyp_11_12_13;
    VARxyp_16_17_18 = _OUT.VARxyp_16_17_18;
    VARxyp_21_22_23 = _OUT.VARxyp_21_22_23;
    gl_Position = _r0006;
    COL0 = _OUT._color1;
    TEX0.xy = _texCoord;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._tc;
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
COMPAT_VARYING     vec4 VARxyp_21_22_23;
COMPAT_VARYING     vec4 VARxyp_16_17_18;
COMPAT_VARYING     vec4 VARxyp_11_12_13;
COMPAT_VARYING     vec4 VARxyp_9_14_9;
COMPAT_VARYING     vec4 VARxyp_6_7_8;
COMPAT_VARYING     vec4 VARxyp_5_10_15;
COMPAT_VARYING     vec4 VARxyp_1_2_3;
COMPAT_VARYING     vec2 _tc;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color;
    vec2 _tc;
    vec4 VARxyp_1_2_3;
    vec4 VARxyp_5_10_15;
    vec4 VARxyp_6_7_8;
    vec4 VARxyp_9_14_9;
    vec4 VARxyp_11_12_13;
    vec4 VARxyp_16_17_18;
    vec4 VARxyp_21_22_23;
};
vec4 _ret_0;
vec3 _TMP53;
vec3 _TMP52;
vec3 _TMP51;
vec3 _TMP50;
float _TMP46;
float _TMP47;
float _TMP48;
float _TMP49;
float _TMP42;
float _TMP43;
float _TMP44;
float _TMP45;
float _TMP38;
float _TMP39;
float _TMP40;
float _TMP41;
float _TMP34;
float _TMP35;
float _TMP36;
float _TMP37;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
vec4 _TMP64;
float _TMP57;
float _TMP56;
float _TMP55;
float _TMP54;
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
out_vertex _VAR1;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0172;
vec4 _x0176;
vec4 _TMP177;
vec4 _x0186;
vec4 _TMP187;
vec4 _x0196;
vec4 _TMP197;
vec4 _x0206;
vec4 _TMP207;
vec4 _TMP215;
vec4 _a0218;
vec4 _TMP219;
vec4 _a0222;
vec4 _TMP223;
vec4 _a0226;
vec4 _TMP227;
vec4 _a0230;
vec4 _TMP231;
vec4 _a0234;
vec4 _TMP237;
vec4 _a0240;
vec4 _TMP241;
vec4 _a0244;
vec4 _TMP245;
vec4 _a0248;
vec4 _TMP249;
vec4 _a0252;
vec4 _TMP253;
vec4 _a0256;
vec4 _TMP257;
vec4 _a0260;
vec4 _TMP261;
vec4 _a0264;
vec4 _TMP267;
vec4 _a0270;
vec4 _TMP273;
vec4 _a0276;
vec4 _TMP279;
vec4 _a0282;
vec4 _TMP285;
vec4 _a0288;
vec4 _TMP291;
vec4 _a0294;
vec4 _TMP297;
vec4 _a0300;
vec4 _TMP303;
vec4 _a0306;
vec4 _TMP309;
vec4 _a0312;
vec4 _TMP315;
vec4 _a0318;
vec4 _TMP321;
vec4 _a0324;
vec4 _TMP327;
vec4 _a0330;
vec4 _TMP331;
vec4 _a0334;
vec4 _TMP335;
vec4 _a0338;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _p7;
    vec4 _p8;
    vec4 _p12;
    vec4 _p14;
    vec4 _p19;
    vec4 _p23;
    vec2 _fp;
    vec4 _t45;
    vec4 _t15;
    vec4 _t60;
    bvec4 _fx45;
    bvec4 _fx15;
    bvec4 _fx60;
    bvec4 _fxrn;
    vec4 _ma45;
    vec4 _ma15;
    vec4 _ma60;
    vec4 _marn;
    vec4 _e45;
    vec4 _econt;
    bvec4 _r45;
    bvec4 _r15;
    bvec4 _r60;
    bvec4 _edr45;
    bvec4 _edr15;
    bvec4 _edr60;
    bvec4 _edrrn;
    vec4 _px;
    vec3 _res;
    _TMP0 = COMPAT_TEXTURE(Texture, VARxyp_1_2_3.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, VARxyp_1_2_3.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, VARxyp_1_2_3.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, VARxyp_6_7_8.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, VARxyp_6_7_8.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, VARxyp_6_7_8.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, VARxyp_11_12_13.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, VARxyp_11_12_13.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, VARxyp_11_12_13.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, VARxyp_16_17_18.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, VARxyp_16_17_18.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, VARxyp_16_17_18.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, VARxyp_21_22_23.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, VARxyp_21_22_23.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, VARxyp_21_22_23.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, VARxyp_5_10_15.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, VARxyp_5_10_15.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, VARxyp_5_10_15.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, VARxyp_9_14_9.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, VARxyp_9_14_9.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, VARxyp_9_14_9.xw);
    _TMP54 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP4.xyz);
    _TMP55 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP6.xyz);
    _TMP56 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP10.xyz);
    _TMP57 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP8.xyz);
    _p7 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP54 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP5.xyz);
    _TMP55 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP3.xyz);
    _TMP56 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP9.xyz);
    _TMP57 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP11.xyz);
    _p8 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP54 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP7.xyz);
    _TMP55 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP7.xyz);
    _TMP56 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP7.xyz);
    _TMP57 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP7.xyz);
    _p12 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP54 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP19.xyz);
    _TMP55 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP1.xyz);
    _TMP56 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP16.xyz);
    _TMP57 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP13.xyz);
    _p14 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP54 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP20.xyz);
    _TMP55 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP2.xyz);
    _TMP56 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP15.xyz);
    _TMP57 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP12.xyz);
    _p19 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _TMP54 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP14.xyz);
    _TMP55 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP18.xyz);
    _TMP56 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP0.xyz);
    _TMP57 = dot(vec3( 2.12599993E-01, 7.15200007E-01, 7.22000003E-02), _TMP17.xyz);
    _p23 = vec4(_TMP54, _TMP55, _TMP56, _TMP57);
    _x0172 = TEX0.xy*TextureSize;
    _fp = fract(_x0172);
    _t45 = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _t15 = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _t60 = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _fx45 = bvec4(_t45.x > 1.29999995E+00, _t45.y > 3.00000012E-01, _t45.z > -6.99999988E-01, _t45.w > 3.00000012E-01);
    _fx15 = bvec4(_t15.x > 8.99999976E-01, _t15.y > 8.00000012E-01, _t15.z > -6.00000024E-01, _t15.w > -2.00000003E-01);
    _fx60 = bvec4(_t60.x > 1.79999995E+00, _t60.y > -1.00000001E-01, _t60.z > -1.20000005E+00, _t60.w > 4.00000006E-01);
    _fxrn = bvec4(_t45.x > 1.50000000E+00, _t45.y > 5.00000000E-01, _t45.z > -5.00000000E-01, _t45.w > 5.00000000E-01);
    _x0176 = (_t45 - vec4( 1.10000002E+00, 9.99999940E-02, -8.99999976E-01, 9.99999940E-02))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP64 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0176);
    _TMP177 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP64);
    _ma45 = _TMP177*_TMP177*(3.00000000E+00 - 2.00000000E+00*_TMP177);
    _x0186 = (_t15 - vec4( 8.00000012E-01, 6.00000024E-01, -6.99999988E-01, -4.00000006E-01))/vec4( 4.00000036E-01, 7.99999952E-01, 3.99999976E-01, 8.00000012E-01);
    _TMP64 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0186);
    _TMP187 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP64);
    _ma15 = _TMP187*_TMP187*(3.00000000E+00 - 2.00000000E+00*_TMP187);
    _x0196 = (_t60 - vec4( 1.60000002E+00, -2.00000003E-01, -1.39999998E+00, 3.00000012E-01))/vec4( 8.00000072E-01, 4.00000006E-01, 7.99999952E-01, 3.99999976E-01);
    _TMP64 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0196);
    _TMP197 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP64);
    _ma60 = _TMP197*_TMP197*(3.00000000E+00 - 2.00000000E+00*_TMP197);
    _x0206 = (_t45 - vec4( 1.30000007E+00, 3.00000012E-01, -6.99999988E-01, 3.00000012E-01))/vec4( 7.99999833E-01, 8.00000012E-01, 8.00000012E-01, 8.00000012E-01);
    _TMP64 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0206);
    _TMP207 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP64);
    _marn = _TMP207*_TMP207*(3.00000000E+00 - 2.00000000E+00*_TMP207);
    _a0218 = _p12 - _p8;
    _TMP215 = abs(_a0218);
    _a0222 = _p12 - _p8.zwxy;
    _TMP219 = abs(_a0222);
    _a0226 = _p8.wxyz - _p14.wxyz;
    _TMP223 = abs(_a0226);
    _a0230 = _p8.wxyz - _p14;
    _TMP227 = abs(_a0230);
    _a0234 = _p7.zwxy - _p7.wxyz;
    _TMP231 = abs(_a0234);
    _e45 = _TMP215 + _TMP219 + _TMP223 + _TMP227 + 4.00000000E+00*_TMP231;
    _a0240 = _p7.zwxy - _p7.yzwx;
    _TMP237 = abs(_a0240);
    _a0244 = _p7.zwxy - _p23;
    _TMP241 = abs(_a0244);
    _a0248 = _p7.wxyz - _p7;
    _TMP245 = abs(_a0248);
    _a0252 = _p7.wxyz - _p19;
    _TMP249 = abs(_a0252);
    _a0256 = _p12 - _p8.wxyz;
    _TMP253 = abs(_a0256);
    _econt = _TMP237 + _TMP241 + _TMP245 + _TMP249 + 4.00000000E+00*_TMP253;
    _a0260 = _p7.wxyz - _p8.zwxy;
    _TMP257 = abs(_a0260);
    _a0264 = _p8 - _p7.zwxy;
    _TMP261 = abs(_a0264);
    _a0270 = _p7.wxyz - _p7;
    _TMP267 = abs(_a0270);
    _TMP21 = bvec4(_TMP267.x < 4.16666657E-01, _TMP267.y < 4.16666657E-01, _TMP267.z < 4.16666657E-01, _TMP267.w < 4.16666657E-01);
    _a0276 = _p7.wxyz - _p8;
    _TMP273 = abs(_a0276);
    _TMP22 = bvec4(_TMP273.x < 4.16666657E-01, _TMP273.y < 4.16666657E-01, _TMP273.z < 4.16666657E-01, _TMP273.w < 4.16666657E-01);
    _a0282 = _p7.zwxy - _p7.yzwx;
    _TMP279 = abs(_a0282);
    _TMP23 = bvec4(_TMP279.x < 4.16666657E-01, _TMP279.y < 4.16666657E-01, _TMP279.z < 4.16666657E-01, _TMP279.w < 4.16666657E-01);
    _a0288 = _p7.zwxy - _p8.zwxy;
    _TMP285 = abs(_a0288);
    _TMP24 = bvec4(_TMP285.x < 4.16666657E-01, _TMP285.y < 4.16666657E-01, _TMP285.z < 4.16666657E-01, _TMP285.w < 4.16666657E-01);
    _a0294 = _p12 - _p8.wxyz;
    _TMP291 = abs(_a0294);
    _TMP25 = bvec4(_TMP291.x < 4.16666657E-01, _TMP291.y < 4.16666657E-01, _TMP291.z < 4.16666657E-01, _TMP291.w < 4.16666657E-01);
    _a0300 = _p7.wxyz - _p14;
    _TMP297 = abs(_a0300);
    _TMP26 = bvec4(_TMP297.x < 4.16666657E-01, _TMP297.y < 4.16666657E-01, _TMP297.z < 4.16666657E-01, _TMP297.w < 4.16666657E-01);
    _a0306 = _p7.wxyz - _p19;
    _TMP303 = abs(_a0306);
    _TMP27 = bvec4(_TMP303.x < 4.16666657E-01, _TMP303.y < 4.16666657E-01, _TMP303.z < 4.16666657E-01, _TMP303.w < 4.16666657E-01);
    _a0312 = _p7.zwxy - _p14.wxyz;
    _TMP309 = abs(_a0312);
    _TMP28 = bvec4(_TMP309.x < 4.16666657E-01, _TMP309.y < 4.16666657E-01, _TMP309.z < 4.16666657E-01, _TMP309.w < 4.16666657E-01);
    _a0318 = _p7.zwxy - _p23;
    _TMP315 = abs(_a0318);
    _TMP29 = bvec4(_TMP315.x < 4.16666657E-01, _TMP315.y < 4.16666657E-01, _TMP315.z < 4.16666657E-01, _TMP315.w < 4.16666657E-01);
    _a0324 = _p12 - _p8.zwxy;
    _TMP321 = abs(_a0324);
    _TMP30 = bvec4(_TMP321.x < 4.16666657E-01, _TMP321.y < 4.16666657E-01, _TMP321.z < 4.16666657E-01, _TMP321.w < 4.16666657E-01);
    _a0330 = _p12 - _p8;
    _TMP327 = abs(_a0330);
    _TMP31 = bvec4(_TMP327.x < 4.16666657E-01, _TMP327.y < 4.16666657E-01, _TMP327.z < 4.16666657E-01, _TMP327.w < 4.16666657E-01);
    _r45 = bvec4(_p12.x != _p7.w && _p12.x != _p7.z && (!_TMP21.x && !_TMP22.x || !_TMP23.x && !_TMP24.x || _TMP25.x && (!_TMP26.x && !_TMP27.x || !_TMP28.x && !_TMP29.x) || _TMP30.x || _TMP31.x), _p12.y != _p7.x && _p12.y != _p7.w && (!_TMP21.y && !_TMP22.y || !_TMP23.y && !_TMP24.y || _TMP25.y && (!_TMP26.y && !_TMP27.y || !_TMP28.y && !_TMP29.y) || _TMP30.y || _TMP31.y), _p12.z != _p7.y && _p12.z != _p7.x && (!_TMP21.z && !_TMP22.z || !_TMP23.z && !_TMP24.z || _TMP25.z && (!_TMP26.z && !_TMP27.z || !_TMP28.z && !_TMP29.z) || _TMP30.z || _TMP31.z), _p12.w != _p7.z && _p12.w != _p7.y && (!_TMP21.w && !_TMP22.w || !_TMP23.w && !_TMP24.w || _TMP25.w && (!_TMP26.w && !_TMP27.w || !_TMP28.w && !_TMP29.w) || _TMP30.w || _TMP31.w));
    _r15 = bvec4(_p12.x != _p8.z && _p7.y != _p8.z, _p12.y != _p8.w && _p7.z != _p8.w, _p12.z != _p8.x && _p7.w != _p8.x, _p12.w != _p8.y && _p7.x != _p8.y);
    _r60 = bvec4(_p12.x != _p8.x && _p7.x != _p8.x, _p12.y != _p8.y && _p7.y != _p8.y, _p12.z != _p8.z && _p7.z != _p8.z, _p12.w != _p8.w && _p7.w != _p8.w);
    _edr45 = bvec4(_e45.x < _econt.x && _r45.x, _e45.y < _econt.y && _r45.y, _e45.z < _econt.z && _r45.z, _e45.w < _econt.w && _r45.w);
    _edr15 = bvec4(_edr45.x && (2.00000000E+00*_TMP257).x <= _TMP261.x && _r15.x, _edr45.y && (2.00000000E+00*_TMP257).y <= _TMP261.y && _r15.y, _edr45.z && (2.00000000E+00*_TMP257).z <= _TMP261.z && _r15.z, _edr45.w && (2.00000000E+00*_TMP257).w <= _TMP261.w && _r15.w);
    _edr60 = bvec4(_edr45.x && (2.00000000E+00*_TMP261).x <= _TMP257.x && _r60.x, _edr45.y && (2.00000000E+00*_TMP261).y <= _TMP257.y && _r60.y, _edr45.z && (2.00000000E+00*_TMP261).z <= _TMP257.z && _r60.z, _edr45.w && (2.00000000E+00*_TMP261).w <= _TMP257.w && _r60.w);
    _edrrn = bvec4(_e45.x <= _econt.x, _e45.y <= _econt.y, _e45.z <= _econt.z, _e45.w <= _econt.w);
    _a0334 = _p12 - _p7.zwxy;
    _TMP331 = abs(_a0334);
    _a0338 = _p12 - _p7.wxyz;
    _TMP335 = abs(_a0338);
    _px = vec4(float((_TMP335.x >= _TMP331.x)), float((_TMP335.y >= _TMP331.y)), float((_TMP335.z >= _TMP331.z)), float((_TMP335.w >= _TMP331.w)));
    if (_edr15.x && _fx15.x) { 
        _TMP34 = _ma15.x;
    } else {
        if (_edr60.x && _fx60.x) { 
            _TMP35 = _ma60.x;
        } else {
            if (_edr45.x && _fx45.x) { 
                _TMP36 = _ma45.x;
            } else {
                if (_edrrn.x && _fxrn.x) { 
                    _TMP37 = _marn.x;
                } else {
                    _TMP37 = 0.00000000E+00;
                } 
                _TMP36 = _TMP37;
            } 
            _TMP35 = _TMP36;
        } 
        _TMP34 = _TMP35;
    } 
    if (_edr15.y && _fx15.y) { 
        _TMP38 = _ma15.y;
    } else {
        if (_edr60.y && _fx60.y) { 
            _TMP39 = _ma60.y;
        } else {
            if (_edr45.y && _fx45.y) { 
                _TMP40 = _ma45.y;
            } else {
                if (_edrrn.y && _fxrn.y) { 
                    _TMP41 = _marn.y;
                } else {
                    _TMP41 = 0.00000000E+00;
                } 
                _TMP40 = _TMP41;
            } 
            _TMP39 = _TMP40;
        } 
        _TMP38 = _TMP39;
    } 
    if (_edr15.z && _fx15.z) { 
        _TMP42 = _ma15.z;
    } else {
        if (_edr60.z && _fx60.z) { 
            _TMP43 = _ma60.z;
        } else {
            if (_edr45.z && _fx45.z) { 
                _TMP44 = _ma45.z;
            } else {
                if (_edrrn.z && _fxrn.z) { 
                    _TMP45 = _marn.z;
                } else {
                    _TMP45 = 0.00000000E+00;
                } 
                _TMP44 = _TMP45;
            } 
            _TMP43 = _TMP44;
        } 
        _TMP42 = _TMP43;
    } 
    if (_edr15.w && _fx15.w) { 
        _TMP46 = _ma15.w;
    } else {
        if (_edr60.w && _fx60.w) { 
            _TMP47 = _ma60.w;
        } else {
            if (_edr45.w && _fx45.w) { 
                _TMP48 = _ma45.w;
            } else {
                if (_edrrn.w && _fxrn.w) { 
                    _TMP49 = _marn.w;
                } else {
                    _TMP49 = 0.00000000E+00;
                } 
                _TMP48 = _TMP49;
            } 
            _TMP47 = _TMP48;
        } 
        _TMP46 = _TMP47;
    } 
    _TMP50 = _TMP8.xyz + _px.x*(_TMP10.xyz - _TMP8.xyz);
    _res = _TMP7.xyz + _TMP34*(_TMP50 - _TMP7.xyz);
    _TMP51 = _TMP4.xyz + _px.y*(_TMP8.xyz - _TMP4.xyz);
    _res = _res + _TMP38*(_TMP51 - _res);
    _TMP52 = _TMP6.xyz + _px.z*(_TMP4.xyz - _TMP6.xyz);
    _res = _res + _TMP42*(_TMP52 - _res);
    _TMP53 = _TMP10.xyz + _px.w*(_TMP6.xyz - _TMP10.xyz);
    _res = _res + _TMP46*(_TMP53 - _res);
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
