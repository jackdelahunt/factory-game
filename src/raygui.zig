pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const __builtin_va_list = [*c]u8;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __builtin_va_list;
pub const struct_Vector2 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
};
pub const Vector2 = struct_Vector2;
pub const struct_Vector3 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    z: f32 = @import("std").mem.zeroes(f32),
};
pub const Vector3 = struct_Vector3;
pub const struct_Vector4 = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    z: f32 = @import("std").mem.zeroes(f32),
    w: f32 = @import("std").mem.zeroes(f32),
};
pub const Vector4 = struct_Vector4;
pub const Quaternion = Vector4;
pub const struct_Matrix = extern struct {
    m0: f32 = @import("std").mem.zeroes(f32),
    m4: f32 = @import("std").mem.zeroes(f32),
    m8: f32 = @import("std").mem.zeroes(f32),
    m12: f32 = @import("std").mem.zeroes(f32),
    m1: f32 = @import("std").mem.zeroes(f32),
    m5: f32 = @import("std").mem.zeroes(f32),
    m9: f32 = @import("std").mem.zeroes(f32),
    m13: f32 = @import("std").mem.zeroes(f32),
    m2: f32 = @import("std").mem.zeroes(f32),
    m6: f32 = @import("std").mem.zeroes(f32),
    m10: f32 = @import("std").mem.zeroes(f32),
    m14: f32 = @import("std").mem.zeroes(f32),
    m3: f32 = @import("std").mem.zeroes(f32),
    m7: f32 = @import("std").mem.zeroes(f32),
    m11: f32 = @import("std").mem.zeroes(f32),
    m15: f32 = @import("std").mem.zeroes(f32),
};
pub const Matrix = struct_Matrix;
pub const struct_Color = extern struct {
    r: u8 = @import("std").mem.zeroes(u8),
    g: u8 = @import("std").mem.zeroes(u8),
    b: u8 = @import("std").mem.zeroes(u8),
    a: u8 = @import("std").mem.zeroes(u8),
};
pub const Color = struct_Color;
pub const struct_Rectangle = extern struct {
    x: f32 = @import("std").mem.zeroes(f32),
    y: f32 = @import("std").mem.zeroes(f32),
    width: f32 = @import("std").mem.zeroes(f32),
    height: f32 = @import("std").mem.zeroes(f32),
};
pub const Rectangle = struct_Rectangle;
pub const struct_Image = extern struct {
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    mipmaps: c_int = @import("std").mem.zeroes(c_int),
    format: c_int = @import("std").mem.zeroes(c_int),
};
pub const Image = struct_Image;
pub const struct_Texture = extern struct {
    id: c_uint = @import("std").mem.zeroes(c_uint),
    width: c_int = @import("std").mem.zeroes(c_int),
    height: c_int = @import("std").mem.zeroes(c_int),
    mipmaps: c_int = @import("std").mem.zeroes(c_int),
    format: c_int = @import("std").mem.zeroes(c_int),
};
pub const Texture = struct_Texture;
pub const Texture2D = Texture;
pub const TextureCubemap = Texture;
pub const struct_RenderTexture = extern struct {
    id: c_uint = @import("std").mem.zeroes(c_uint),
    texture: Texture = @import("std").mem.zeroes(Texture),
    depth: Texture = @import("std").mem.zeroes(Texture),
};
pub const RenderTexture = struct_RenderTexture;
pub const RenderTexture2D = RenderTexture;
pub const struct_NPatchInfo = extern struct {
    source: Rectangle = @import("std").mem.zeroes(Rectangle),
    left: c_int = @import("std").mem.zeroes(c_int),
    top: c_int = @import("std").mem.zeroes(c_int),
    right: c_int = @import("std").mem.zeroes(c_int),
    bottom: c_int = @import("std").mem.zeroes(c_int),
    layout: c_int = @import("std").mem.zeroes(c_int),
};
pub const NPatchInfo = struct_NPatchInfo;
pub const struct_GlyphInfo = extern struct {
    value: c_int = @import("std").mem.zeroes(c_int),
    offsetX: c_int = @import("std").mem.zeroes(c_int),
    offsetY: c_int = @import("std").mem.zeroes(c_int),
    advanceX: c_int = @import("std").mem.zeroes(c_int),
    image: Image = @import("std").mem.zeroes(Image),
};
pub const GlyphInfo = struct_GlyphInfo;
pub const struct_Font = extern struct {
    baseSize: c_int = @import("std").mem.zeroes(c_int),
    glyphCount: c_int = @import("std").mem.zeroes(c_int),
    glyphPadding: c_int = @import("std").mem.zeroes(c_int),
    texture: Texture2D = @import("std").mem.zeroes(Texture2D),
    recs: [*c]Rectangle = @import("std").mem.zeroes([*c]Rectangle),
    glyphs: [*c]GlyphInfo = @import("std").mem.zeroes([*c]GlyphInfo),
};
pub const Font = struct_Font;
pub const struct_Camera3D = extern struct {
    position: Vector3 = @import("std").mem.zeroes(Vector3),
    target: Vector3 = @import("std").mem.zeroes(Vector3),
    up: Vector3 = @import("std").mem.zeroes(Vector3),
    fovy: f32 = @import("std").mem.zeroes(f32),
    projection: c_int = @import("std").mem.zeroes(c_int),
};
pub const Camera3D = struct_Camera3D;
pub const Camera = Camera3D;
pub const struct_Camera2D = extern struct {
    offset: Vector2 = @import("std").mem.zeroes(Vector2),
    target: Vector2 = @import("std").mem.zeroes(Vector2),
    rotation: f32 = @import("std").mem.zeroes(f32),
    zoom: f32 = @import("std").mem.zeroes(f32),
};
pub const Camera2D = struct_Camera2D;
pub const struct_Mesh = extern struct {
    vertexCount: c_int = @import("std").mem.zeroes(c_int),
    triangleCount: c_int = @import("std").mem.zeroes(c_int),
    vertices: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    texcoords: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    texcoords2: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    normals: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    tangents: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    colors: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    indices: [*c]c_ushort = @import("std").mem.zeroes([*c]c_ushort),
    animVertices: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    animNormals: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    boneIds: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    boneWeights: [*c]f32 = @import("std").mem.zeroes([*c]f32),
    vaoId: c_uint = @import("std").mem.zeroes(c_uint),
    vboId: [*c]c_uint = @import("std").mem.zeroes([*c]c_uint),
};
pub const Mesh = struct_Mesh;
pub const struct_Shader = extern struct {
    id: c_uint = @import("std").mem.zeroes(c_uint),
    locs: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
};
pub const Shader = struct_Shader;
pub const struct_MaterialMap = extern struct {
    texture: Texture2D = @import("std").mem.zeroes(Texture2D),
    color: Color = @import("std").mem.zeroes(Color),
    value: f32 = @import("std").mem.zeroes(f32),
};
pub const MaterialMap = struct_MaterialMap;
pub const struct_Material = extern struct {
    shader: Shader = @import("std").mem.zeroes(Shader),
    maps: [*c]MaterialMap = @import("std").mem.zeroes([*c]MaterialMap),
    params: [4]f32 = @import("std").mem.zeroes([4]f32),
};
pub const Material = struct_Material;
pub const struct_Transform = extern struct {
    translation: Vector3 = @import("std").mem.zeroes(Vector3),
    rotation: Quaternion = @import("std").mem.zeroes(Quaternion),
    scale: Vector3 = @import("std").mem.zeroes(Vector3),
};
pub const Transform = struct_Transform;
pub const struct_BoneInfo = extern struct {
    name: [32]u8 = @import("std").mem.zeroes([32]u8),
    parent: c_int = @import("std").mem.zeroes(c_int),
};
pub const BoneInfo = struct_BoneInfo;
pub const struct_Model = extern struct {
    transform: Matrix = @import("std").mem.zeroes(Matrix),
    meshCount: c_int = @import("std").mem.zeroes(c_int),
    materialCount: c_int = @import("std").mem.zeroes(c_int),
    meshes: [*c]Mesh = @import("std").mem.zeroes([*c]Mesh),
    materials: [*c]Material = @import("std").mem.zeroes([*c]Material),
    meshMaterial: [*c]c_int = @import("std").mem.zeroes([*c]c_int),
    boneCount: c_int = @import("std").mem.zeroes(c_int),
    bones: [*c]BoneInfo = @import("std").mem.zeroes([*c]BoneInfo),
    bindPose: [*c]Transform = @import("std").mem.zeroes([*c]Transform),
};
pub const Model = struct_Model;
pub const struct_ModelAnimation = extern struct {
    boneCount: c_int = @import("std").mem.zeroes(c_int),
    frameCount: c_int = @import("std").mem.zeroes(c_int),
    bones: [*c]BoneInfo = @import("std").mem.zeroes([*c]BoneInfo),
    framePoses: [*c][*c]Transform = @import("std").mem.zeroes([*c][*c]Transform),
    name: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const ModelAnimation = struct_ModelAnimation;
pub const struct_Ray = extern struct {
    position: Vector3 = @import("std").mem.zeroes(Vector3),
    direction: Vector3 = @import("std").mem.zeroes(Vector3),
};
pub const Ray = struct_Ray;
pub const struct_RayCollision = extern struct {
    hit: bool = @import("std").mem.zeroes(bool),
    distance: f32 = @import("std").mem.zeroes(f32),
    point: Vector3 = @import("std").mem.zeroes(Vector3),
    normal: Vector3 = @import("std").mem.zeroes(Vector3),
};
pub const RayCollision = struct_RayCollision;
pub const struct_BoundingBox = extern struct {
    min: Vector3 = @import("std").mem.zeroes(Vector3),
    max: Vector3 = @import("std").mem.zeroes(Vector3),
};
pub const BoundingBox = struct_BoundingBox;
pub const struct_Wave = extern struct {
    frameCount: c_uint = @import("std").mem.zeroes(c_uint),
    sampleRate: c_uint = @import("std").mem.zeroes(c_uint),
    sampleSize: c_uint = @import("std").mem.zeroes(c_uint),
    channels: c_uint = @import("std").mem.zeroes(c_uint),
    data: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const Wave = struct_Wave;
pub const struct_rAudioBuffer = opaque {};
pub const rAudioBuffer = struct_rAudioBuffer;
pub const struct_rAudioProcessor = opaque {};
pub const rAudioProcessor = struct_rAudioProcessor;
pub const struct_AudioStream = extern struct {
    buffer: ?*rAudioBuffer = @import("std").mem.zeroes(?*rAudioBuffer),
    processor: ?*rAudioProcessor = @import("std").mem.zeroes(?*rAudioProcessor),
    sampleRate: c_uint = @import("std").mem.zeroes(c_uint),
    sampleSize: c_uint = @import("std").mem.zeroes(c_uint),
    channels: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const AudioStream = struct_AudioStream;
pub const struct_Sound = extern struct {
    stream: AudioStream = @import("std").mem.zeroes(AudioStream),
    frameCount: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const Sound = struct_Sound;
pub const struct_Music = extern struct {
    stream: AudioStream = @import("std").mem.zeroes(AudioStream),
    frameCount: c_uint = @import("std").mem.zeroes(c_uint),
    looping: bool = @import("std").mem.zeroes(bool),
    ctxType: c_int = @import("std").mem.zeroes(c_int),
    ctxData: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const Music = struct_Music;
pub const struct_VrDeviceInfo = extern struct {
    hResolution: c_int = @import("std").mem.zeroes(c_int),
    vResolution: c_int = @import("std").mem.zeroes(c_int),
    hScreenSize: f32 = @import("std").mem.zeroes(f32),
    vScreenSize: f32 = @import("std").mem.zeroes(f32),
    vScreenCenter: f32 = @import("std").mem.zeroes(f32),
    eyeToScreenDistance: f32 = @import("std").mem.zeroes(f32),
    lensSeparationDistance: f32 = @import("std").mem.zeroes(f32),
    interpupillaryDistance: f32 = @import("std").mem.zeroes(f32),
    lensDistortionValues: [4]f32 = @import("std").mem.zeroes([4]f32),
    chromaAbCorrection: [4]f32 = @import("std").mem.zeroes([4]f32),
};
pub const VrDeviceInfo = struct_VrDeviceInfo;
pub const struct_VrStereoConfig = extern struct {
    projection: [2]Matrix = @import("std").mem.zeroes([2]Matrix),
    viewOffset: [2]Matrix = @import("std").mem.zeroes([2]Matrix),
    leftLensCenter: [2]f32 = @import("std").mem.zeroes([2]f32),
    rightLensCenter: [2]f32 = @import("std").mem.zeroes([2]f32),
    leftScreenCenter: [2]f32 = @import("std").mem.zeroes([2]f32),
    rightScreenCenter: [2]f32 = @import("std").mem.zeroes([2]f32),
    scale: [2]f32 = @import("std").mem.zeroes([2]f32),
    scaleIn: [2]f32 = @import("std").mem.zeroes([2]f32),
};
pub const VrStereoConfig = struct_VrStereoConfig;
pub const struct_FilePathList = extern struct {
    capacity: c_uint = @import("std").mem.zeroes(c_uint),
    count: c_uint = @import("std").mem.zeroes(c_uint),
    paths: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
};
pub const FilePathList = struct_FilePathList;
pub const struct_AutomationEvent = extern struct {
    frame: c_uint = @import("std").mem.zeroes(c_uint),
    type: c_uint = @import("std").mem.zeroes(c_uint),
    params: [4]c_int = @import("std").mem.zeroes([4]c_int),
};
pub const AutomationEvent = struct_AutomationEvent;
pub const struct_AutomationEventList = extern struct {
    capacity: c_uint = @import("std").mem.zeroes(c_uint),
    count: c_uint = @import("std").mem.zeroes(c_uint),
    events: [*c]AutomationEvent = @import("std").mem.zeroes([*c]AutomationEvent),
};
pub const AutomationEventList = struct_AutomationEventList;
pub const FLAG_VSYNC_HINT: c_int = 64;
pub const FLAG_FULLSCREEN_MODE: c_int = 2;
pub const FLAG_WINDOW_RESIZABLE: c_int = 4;
pub const FLAG_WINDOW_UNDECORATED: c_int = 8;
pub const FLAG_WINDOW_HIDDEN: c_int = 128;
pub const FLAG_WINDOW_MINIMIZED: c_int = 512;
pub const FLAG_WINDOW_MAXIMIZED: c_int = 1024;
pub const FLAG_WINDOW_UNFOCUSED: c_int = 2048;
pub const FLAG_WINDOW_TOPMOST: c_int = 4096;
pub const FLAG_WINDOW_ALWAYS_RUN: c_int = 256;
pub const FLAG_WINDOW_TRANSPARENT: c_int = 16;
pub const FLAG_WINDOW_HIGHDPI: c_int = 8192;
pub const FLAG_WINDOW_MOUSE_PASSTHROUGH: c_int = 16384;
pub const FLAG_BORDERLESS_WINDOWED_MODE: c_int = 32768;
pub const FLAG_MSAA_4X_HINT: c_int = 32;
pub const FLAG_INTERLACED_HINT: c_int = 65536;
pub const ConfigFlags = c_uint;
pub const LOG_ALL: c_int = 0;
pub const LOG_TRACE: c_int = 1;
pub const LOG_DEBUG: c_int = 2;
pub const LOG_INFO: c_int = 3;
pub const LOG_WARNING: c_int = 4;
pub const LOG_ERROR: c_int = 5;
pub const LOG_FATAL: c_int = 6;
pub const LOG_NONE: c_int = 7;
pub const TraceLogLevel = c_uint;
pub const KEY_NULL: c_int = 0;
pub const KEY_APOSTROPHE: c_int = 39;
pub const KEY_COMMA: c_int = 44;
pub const KEY_MINUS: c_int = 45;
pub const KEY_PERIOD: c_int = 46;
pub const KEY_SLASH: c_int = 47;
pub const KEY_ZERO: c_int = 48;
pub const KEY_ONE: c_int = 49;
pub const KEY_TWO: c_int = 50;
pub const KEY_THREE: c_int = 51;
pub const KEY_FOUR: c_int = 52;
pub const KEY_FIVE: c_int = 53;
pub const KEY_SIX: c_int = 54;
pub const KEY_SEVEN: c_int = 55;
pub const KEY_EIGHT: c_int = 56;
pub const KEY_NINE: c_int = 57;
pub const KEY_SEMICOLON: c_int = 59;
pub const KEY_EQUAL: c_int = 61;
pub const KEY_A: c_int = 65;
pub const KEY_B: c_int = 66;
pub const KEY_C: c_int = 67;
pub const KEY_D: c_int = 68;
pub const KEY_E: c_int = 69;
pub const KEY_F: c_int = 70;
pub const KEY_G: c_int = 71;
pub const KEY_H: c_int = 72;
pub const KEY_I: c_int = 73;
pub const KEY_J: c_int = 74;
pub const KEY_K: c_int = 75;
pub const KEY_L: c_int = 76;
pub const KEY_M: c_int = 77;
pub const KEY_N: c_int = 78;
pub const KEY_O: c_int = 79;
pub const KEY_P: c_int = 80;
pub const KEY_Q: c_int = 81;
pub const KEY_R: c_int = 82;
pub const KEY_S: c_int = 83;
pub const KEY_T: c_int = 84;
pub const KEY_U: c_int = 85;
pub const KEY_V: c_int = 86;
pub const KEY_W: c_int = 87;
pub const KEY_X: c_int = 88;
pub const KEY_Y: c_int = 89;
pub const KEY_Z: c_int = 90;
pub const KEY_LEFT_BRACKET: c_int = 91;
pub const KEY_BACKSLASH: c_int = 92;
pub const KEY_RIGHT_BRACKET: c_int = 93;
pub const KEY_GRAVE: c_int = 96;
pub const KEY_SPACE: c_int = 32;
pub const KEY_ESCAPE: c_int = 256;
pub const KEY_ENTER: c_int = 257;
pub const KEY_TAB: c_int = 258;
pub const KEY_BACKSPACE: c_int = 259;
pub const KEY_INSERT: c_int = 260;
pub const KEY_DELETE: c_int = 261;
pub const KEY_RIGHT: c_int = 262;
pub const KEY_LEFT: c_int = 263;
pub const KEY_DOWN: c_int = 264;
pub const KEY_UP: c_int = 265;
pub const KEY_PAGE_UP: c_int = 266;
pub const KEY_PAGE_DOWN: c_int = 267;
pub const KEY_HOME: c_int = 268;
pub const KEY_END: c_int = 269;
pub const KEY_CAPS_LOCK: c_int = 280;
pub const KEY_SCROLL_LOCK: c_int = 281;
pub const KEY_NUM_LOCK: c_int = 282;
pub const KEY_PRINT_SCREEN: c_int = 283;
pub const KEY_PAUSE: c_int = 284;
pub const KEY_F1: c_int = 290;
pub const KEY_F2: c_int = 291;
pub const KEY_F3: c_int = 292;
pub const KEY_F4: c_int = 293;
pub const KEY_F5: c_int = 294;
pub const KEY_F6: c_int = 295;
pub const KEY_F7: c_int = 296;
pub const KEY_F8: c_int = 297;
pub const KEY_F9: c_int = 298;
pub const KEY_F10: c_int = 299;
pub const KEY_F11: c_int = 300;
pub const KEY_F12: c_int = 301;
pub const KEY_LEFT_SHIFT: c_int = 340;
pub const KEY_LEFT_CONTROL: c_int = 341;
pub const KEY_LEFT_ALT: c_int = 342;
pub const KEY_LEFT_SUPER: c_int = 343;
pub const KEY_RIGHT_SHIFT: c_int = 344;
pub const KEY_RIGHT_CONTROL: c_int = 345;
pub const KEY_RIGHT_ALT: c_int = 346;
pub const KEY_RIGHT_SUPER: c_int = 347;
pub const KEY_KB_MENU: c_int = 348;
pub const KEY_KP_0: c_int = 320;
pub const KEY_KP_1: c_int = 321;
pub const KEY_KP_2: c_int = 322;
pub const KEY_KP_3: c_int = 323;
pub const KEY_KP_4: c_int = 324;
pub const KEY_KP_5: c_int = 325;
pub const KEY_KP_6: c_int = 326;
pub const KEY_KP_7: c_int = 327;
pub const KEY_KP_8: c_int = 328;
pub const KEY_KP_9: c_int = 329;
pub const KEY_KP_DECIMAL: c_int = 330;
pub const KEY_KP_DIVIDE: c_int = 331;
pub const KEY_KP_MULTIPLY: c_int = 332;
pub const KEY_KP_SUBTRACT: c_int = 333;
pub const KEY_KP_ADD: c_int = 334;
pub const KEY_KP_ENTER: c_int = 335;
pub const KEY_KP_EQUAL: c_int = 336;
pub const KEY_BACK: c_int = 4;
pub const KEY_MENU: c_int = 82;
pub const KEY_VOLUME_UP: c_int = 24;
pub const KEY_VOLUME_DOWN: c_int = 25;
pub const KeyboardKey = c_uint;
pub const MOUSE_BUTTON_LEFT: c_int = 0;
pub const MOUSE_BUTTON_RIGHT: c_int = 1;
pub const MOUSE_BUTTON_MIDDLE: c_int = 2;
pub const MOUSE_BUTTON_SIDE: c_int = 3;
pub const MOUSE_BUTTON_EXTRA: c_int = 4;
pub const MOUSE_BUTTON_FORWARD: c_int = 5;
pub const MOUSE_BUTTON_BACK: c_int = 6;
pub const MouseButton = c_uint;
pub const MOUSE_CURSOR_DEFAULT: c_int = 0;
pub const MOUSE_CURSOR_ARROW: c_int = 1;
pub const MOUSE_CURSOR_IBEAM: c_int = 2;
pub const MOUSE_CURSOR_CROSSHAIR: c_int = 3;
pub const MOUSE_CURSOR_POINTING_HAND: c_int = 4;
pub const MOUSE_CURSOR_RESIZE_EW: c_int = 5;
pub const MOUSE_CURSOR_RESIZE_NS: c_int = 6;
pub const MOUSE_CURSOR_RESIZE_NWSE: c_int = 7;
pub const MOUSE_CURSOR_RESIZE_NESW: c_int = 8;
pub const MOUSE_CURSOR_RESIZE_ALL: c_int = 9;
pub const MOUSE_CURSOR_NOT_ALLOWED: c_int = 10;
pub const MouseCursor = c_uint;
pub const GAMEPAD_BUTTON_UNKNOWN: c_int = 0;
pub const GAMEPAD_BUTTON_LEFT_FACE_UP: c_int = 1;
pub const GAMEPAD_BUTTON_LEFT_FACE_RIGHT: c_int = 2;
pub const GAMEPAD_BUTTON_LEFT_FACE_DOWN: c_int = 3;
pub const GAMEPAD_BUTTON_LEFT_FACE_LEFT: c_int = 4;
pub const GAMEPAD_BUTTON_RIGHT_FACE_UP: c_int = 5;
pub const GAMEPAD_BUTTON_RIGHT_FACE_RIGHT: c_int = 6;
pub const GAMEPAD_BUTTON_RIGHT_FACE_DOWN: c_int = 7;
pub const GAMEPAD_BUTTON_RIGHT_FACE_LEFT: c_int = 8;
pub const GAMEPAD_BUTTON_LEFT_TRIGGER_1: c_int = 9;
pub const GAMEPAD_BUTTON_LEFT_TRIGGER_2: c_int = 10;
pub const GAMEPAD_BUTTON_RIGHT_TRIGGER_1: c_int = 11;
pub const GAMEPAD_BUTTON_RIGHT_TRIGGER_2: c_int = 12;
pub const GAMEPAD_BUTTON_MIDDLE_LEFT: c_int = 13;
pub const GAMEPAD_BUTTON_MIDDLE: c_int = 14;
pub const GAMEPAD_BUTTON_MIDDLE_RIGHT: c_int = 15;
pub const GAMEPAD_BUTTON_LEFT_THUMB: c_int = 16;
pub const GAMEPAD_BUTTON_RIGHT_THUMB: c_int = 17;
pub const GamepadButton = c_uint;
pub const GAMEPAD_AXIS_LEFT_X: c_int = 0;
pub const GAMEPAD_AXIS_LEFT_Y: c_int = 1;
pub const GAMEPAD_AXIS_RIGHT_X: c_int = 2;
pub const GAMEPAD_AXIS_RIGHT_Y: c_int = 3;
pub const GAMEPAD_AXIS_LEFT_TRIGGER: c_int = 4;
pub const GAMEPAD_AXIS_RIGHT_TRIGGER: c_int = 5;
pub const GamepadAxis = c_uint;
pub const MATERIAL_MAP_ALBEDO: c_int = 0;
pub const MATERIAL_MAP_METALNESS: c_int = 1;
pub const MATERIAL_MAP_NORMAL: c_int = 2;
pub const MATERIAL_MAP_ROUGHNESS: c_int = 3;
pub const MATERIAL_MAP_OCCLUSION: c_int = 4;
pub const MATERIAL_MAP_EMISSION: c_int = 5;
pub const MATERIAL_MAP_HEIGHT: c_int = 6;
pub const MATERIAL_MAP_CUBEMAP: c_int = 7;
pub const MATERIAL_MAP_IRRADIANCE: c_int = 8;
pub const MATERIAL_MAP_PREFILTER: c_int = 9;
pub const MATERIAL_MAP_BRDF: c_int = 10;
pub const MaterialMapIndex = c_uint;
pub const SHADER_LOC_VERTEX_POSITION: c_int = 0;
pub const SHADER_LOC_VERTEX_TEXCOORD01: c_int = 1;
pub const SHADER_LOC_VERTEX_TEXCOORD02: c_int = 2;
pub const SHADER_LOC_VERTEX_NORMAL: c_int = 3;
pub const SHADER_LOC_VERTEX_TANGENT: c_int = 4;
pub const SHADER_LOC_VERTEX_COLOR: c_int = 5;
pub const SHADER_LOC_MATRIX_MVP: c_int = 6;
pub const SHADER_LOC_MATRIX_VIEW: c_int = 7;
pub const SHADER_LOC_MATRIX_PROJECTION: c_int = 8;
pub const SHADER_LOC_MATRIX_MODEL: c_int = 9;
pub const SHADER_LOC_MATRIX_NORMAL: c_int = 10;
pub const SHADER_LOC_VECTOR_VIEW: c_int = 11;
pub const SHADER_LOC_COLOR_DIFFUSE: c_int = 12;
pub const SHADER_LOC_COLOR_SPECULAR: c_int = 13;
pub const SHADER_LOC_COLOR_AMBIENT: c_int = 14;
pub const SHADER_LOC_MAP_ALBEDO: c_int = 15;
pub const SHADER_LOC_MAP_METALNESS: c_int = 16;
pub const SHADER_LOC_MAP_NORMAL: c_int = 17;
pub const SHADER_LOC_MAP_ROUGHNESS: c_int = 18;
pub const SHADER_LOC_MAP_OCCLUSION: c_int = 19;
pub const SHADER_LOC_MAP_EMISSION: c_int = 20;
pub const SHADER_LOC_MAP_HEIGHT: c_int = 21;
pub const SHADER_LOC_MAP_CUBEMAP: c_int = 22;
pub const SHADER_LOC_MAP_IRRADIANCE: c_int = 23;
pub const SHADER_LOC_MAP_PREFILTER: c_int = 24;
pub const SHADER_LOC_MAP_BRDF: c_int = 25;
pub const ShaderLocationIndex = c_uint;
pub const SHADER_UNIFORM_FLOAT: c_int = 0;
pub const SHADER_UNIFORM_VEC2: c_int = 1;
pub const SHADER_UNIFORM_VEC3: c_int = 2;
pub const SHADER_UNIFORM_VEC4: c_int = 3;
pub const SHADER_UNIFORM_INT: c_int = 4;
pub const SHADER_UNIFORM_IVEC2: c_int = 5;
pub const SHADER_UNIFORM_IVEC3: c_int = 6;
pub const SHADER_UNIFORM_IVEC4: c_int = 7;
pub const SHADER_UNIFORM_SAMPLER2D: c_int = 8;
pub const ShaderUniformDataType = c_uint;
pub const SHADER_ATTRIB_FLOAT: c_int = 0;
pub const SHADER_ATTRIB_VEC2: c_int = 1;
pub const SHADER_ATTRIB_VEC3: c_int = 2;
pub const SHADER_ATTRIB_VEC4: c_int = 3;
pub const ShaderAttributeDataType = c_uint;
pub const PIXELFORMAT_UNCOMPRESSED_GRAYSCALE: c_int = 1;
pub const PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA: c_int = 2;
pub const PIXELFORMAT_UNCOMPRESSED_R5G6B5: c_int = 3;
pub const PIXELFORMAT_UNCOMPRESSED_R8G8B8: c_int = 4;
pub const PIXELFORMAT_UNCOMPRESSED_R5G5B5A1: c_int = 5;
pub const PIXELFORMAT_UNCOMPRESSED_R4G4B4A4: c_int = 6;
pub const PIXELFORMAT_UNCOMPRESSED_R8G8B8A8: c_int = 7;
pub const PIXELFORMAT_UNCOMPRESSED_R32: c_int = 8;
pub const PIXELFORMAT_UNCOMPRESSED_R32G32B32: c_int = 9;
pub const PIXELFORMAT_UNCOMPRESSED_R32G32B32A32: c_int = 10;
pub const PIXELFORMAT_UNCOMPRESSED_R16: c_int = 11;
pub const PIXELFORMAT_UNCOMPRESSED_R16G16B16: c_int = 12;
pub const PIXELFORMAT_UNCOMPRESSED_R16G16B16A16: c_int = 13;
pub const PIXELFORMAT_COMPRESSED_DXT1_RGB: c_int = 14;
pub const PIXELFORMAT_COMPRESSED_DXT1_RGBA: c_int = 15;
pub const PIXELFORMAT_COMPRESSED_DXT3_RGBA: c_int = 16;
pub const PIXELFORMAT_COMPRESSED_DXT5_RGBA: c_int = 17;
pub const PIXELFORMAT_COMPRESSED_ETC1_RGB: c_int = 18;
pub const PIXELFORMAT_COMPRESSED_ETC2_RGB: c_int = 19;
pub const PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA: c_int = 20;
pub const PIXELFORMAT_COMPRESSED_PVRT_RGB: c_int = 21;
pub const PIXELFORMAT_COMPRESSED_PVRT_RGBA: c_int = 22;
pub const PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA: c_int = 23;
pub const PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA: c_int = 24;
pub const PixelFormat = c_uint;
pub const TEXTURE_FILTER_POINT: c_int = 0;
pub const TEXTURE_FILTER_BILINEAR: c_int = 1;
pub const TEXTURE_FILTER_TRILINEAR: c_int = 2;
pub const TEXTURE_FILTER_ANISOTROPIC_4X: c_int = 3;
pub const TEXTURE_FILTER_ANISOTROPIC_8X: c_int = 4;
pub const TEXTURE_FILTER_ANISOTROPIC_16X: c_int = 5;
pub const TextureFilter = c_uint;
pub const TEXTURE_WRAP_REPEAT: c_int = 0;
pub const TEXTURE_WRAP_CLAMP: c_int = 1;
pub const TEXTURE_WRAP_MIRROR_REPEAT: c_int = 2;
pub const TEXTURE_WRAP_MIRROR_CLAMP: c_int = 3;
pub const TextureWrap = c_uint;
pub const CUBEMAP_LAYOUT_AUTO_DETECT: c_int = 0;
pub const CUBEMAP_LAYOUT_LINE_VERTICAL: c_int = 1;
pub const CUBEMAP_LAYOUT_LINE_HORIZONTAL: c_int = 2;
pub const CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR: c_int = 3;
pub const CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE: c_int = 4;
pub const CUBEMAP_LAYOUT_PANORAMA: c_int = 5;
pub const CubemapLayout = c_uint;
pub const FONT_DEFAULT: c_int = 0;
pub const FONT_BITMAP: c_int = 1;
pub const FONT_SDF: c_int = 2;
pub const FontType = c_uint;
pub const BLEND_ALPHA: c_int = 0;
pub const BLEND_ADDITIVE: c_int = 1;
pub const BLEND_MULTIPLIED: c_int = 2;
pub const BLEND_ADD_COLORS: c_int = 3;
pub const BLEND_SUBTRACT_COLORS: c_int = 4;
pub const BLEND_ALPHA_PREMULTIPLY: c_int = 5;
pub const BLEND_CUSTOM: c_int = 6;
pub const BLEND_CUSTOM_SEPARATE: c_int = 7;
pub const BlendMode = c_uint;
pub const GESTURE_NONE: c_int = 0;
pub const GESTURE_TAP: c_int = 1;
pub const GESTURE_DOUBLETAP: c_int = 2;
pub const GESTURE_HOLD: c_int = 4;
pub const GESTURE_DRAG: c_int = 8;
pub const GESTURE_SWIPE_RIGHT: c_int = 16;
pub const GESTURE_SWIPE_LEFT: c_int = 32;
pub const GESTURE_SWIPE_UP: c_int = 64;
pub const GESTURE_SWIPE_DOWN: c_int = 128;
pub const GESTURE_PINCH_IN: c_int = 256;
pub const GESTURE_PINCH_OUT: c_int = 512;
pub const Gesture = c_uint;
pub const CAMERA_CUSTOM: c_int = 0;
pub const CAMERA_FREE: c_int = 1;
pub const CAMERA_ORBITAL: c_int = 2;
pub const CAMERA_FIRST_PERSON: c_int = 3;
pub const CAMERA_THIRD_PERSON: c_int = 4;
pub const CameraMode = c_uint;
pub const CAMERA_PERSPECTIVE: c_int = 0;
pub const CAMERA_ORTHOGRAPHIC: c_int = 1;
pub const CameraProjection = c_uint;
pub const NPATCH_NINE_PATCH: c_int = 0;
pub const NPATCH_THREE_PATCH_VERTICAL: c_int = 1;
pub const NPATCH_THREE_PATCH_HORIZONTAL: c_int = 2;
pub const NPatchLayout = c_uint;
pub const TraceLogCallback = ?*const fn (c_int, [*c]const u8, va_list) callconv(.C) void;
pub const LoadFileDataCallback = ?*const fn ([*c]const u8, [*c]c_int) callconv(.C) [*c]u8;
pub const SaveFileDataCallback = ?*const fn ([*c]const u8, ?*anyopaque, c_int) callconv(.C) bool;
pub const LoadFileTextCallback = ?*const fn ([*c]const u8) callconv(.C) [*c]u8;
pub const SaveFileTextCallback = ?*const fn ([*c]const u8, [*c]u8) callconv(.C) bool;
pub extern fn InitWindow(width: c_int, height: c_int, title: [*c]const u8) void;
pub extern fn CloseWindow() void;
pub extern fn WindowShouldClose() bool;
pub extern fn IsWindowReady() bool;
pub extern fn IsWindowFullscreen() bool;
pub extern fn IsWindowHidden() bool;
pub extern fn IsWindowMinimized() bool;
pub extern fn IsWindowMaximized() bool;
pub extern fn IsWindowFocused() bool;
pub extern fn IsWindowResized() bool;
pub extern fn IsWindowState(flag: c_uint) bool;
pub extern fn SetWindowState(flags: c_uint) void;
pub extern fn ClearWindowState(flags: c_uint) void;
pub extern fn ToggleFullscreen() void;
pub extern fn ToggleBorderlessWindowed() void;
pub extern fn MaximizeWindow() void;
pub extern fn MinimizeWindow() void;
pub extern fn RestoreWindow() void;
pub extern fn SetWindowIcon(image: Image) void;
pub extern fn SetWindowIcons(images: [*c]Image, count: c_int) void;
pub extern fn SetWindowTitle(title: [*c]const u8) void;
pub extern fn SetWindowPosition(x: c_int, y: c_int) void;
pub extern fn SetWindowMonitor(monitor: c_int) void;
pub extern fn SetWindowMinSize(width: c_int, height: c_int) void;
pub extern fn SetWindowMaxSize(width: c_int, height: c_int) void;
pub extern fn SetWindowSize(width: c_int, height: c_int) void;
pub extern fn SetWindowOpacity(opacity: f32) void;
pub extern fn SetWindowFocused() void;
pub extern fn GetWindowHandle() ?*anyopaque;
pub extern fn GetScreenWidth() c_int;
pub extern fn GetScreenHeight() c_int;
pub extern fn GetRenderWidth() c_int;
pub extern fn GetRenderHeight() c_int;
pub extern fn GetMonitorCount() c_int;
pub extern fn GetCurrentMonitor() c_int;
pub extern fn GetMonitorPosition(monitor: c_int) Vector2;
pub extern fn GetMonitorWidth(monitor: c_int) c_int;
pub extern fn GetMonitorHeight(monitor: c_int) c_int;
pub extern fn GetMonitorPhysicalWidth(monitor: c_int) c_int;
pub extern fn GetMonitorPhysicalHeight(monitor: c_int) c_int;
pub extern fn GetMonitorRefreshRate(monitor: c_int) c_int;
pub extern fn GetWindowPosition() Vector2;
pub extern fn GetWindowScaleDPI() Vector2;
pub extern fn GetMonitorName(monitor: c_int) [*c]const u8;
pub extern fn SetClipboardText(text: [*c]const u8) void;
pub extern fn GetClipboardText() [*c]const u8;
pub extern fn EnableEventWaiting() void;
pub extern fn DisableEventWaiting() void;
pub extern fn ShowCursor() void;
pub extern fn HideCursor() void;
pub extern fn IsCursorHidden() bool;
pub extern fn EnableCursor() void;
pub extern fn DisableCursor() void;
pub extern fn IsCursorOnScreen() bool;
pub extern fn ClearBackground(color: Color) void;
pub extern fn BeginDrawing() void;
pub extern fn EndDrawing() void;
pub extern fn BeginMode2D(camera: Camera2D) void;
pub extern fn EndMode2D() void;
pub extern fn BeginMode3D(camera: Camera3D) void;
pub extern fn EndMode3D() void;
pub extern fn BeginTextureMode(target: RenderTexture2D) void;
pub extern fn EndTextureMode() void;
pub extern fn BeginShaderMode(shader: Shader) void;
pub extern fn EndShaderMode() void;
pub extern fn BeginBlendMode(mode: c_int) void;
pub extern fn EndBlendMode() void;
pub extern fn BeginScissorMode(x: c_int, y: c_int, width: c_int, height: c_int) void;
pub extern fn EndScissorMode() void;
pub extern fn BeginVrStereoMode(config: VrStereoConfig) void;
pub extern fn EndVrStereoMode() void;
pub extern fn LoadVrStereoConfig(device: VrDeviceInfo) VrStereoConfig;
pub extern fn UnloadVrStereoConfig(config: VrStereoConfig) void;
pub extern fn LoadShader(vsFileName: [*c]const u8, fsFileName: [*c]const u8) Shader;
pub extern fn LoadShaderFromMemory(vsCode: [*c]const u8, fsCode: [*c]const u8) Shader;
pub extern fn IsShaderReady(shader: Shader) bool;
pub extern fn GetShaderLocation(shader: Shader, uniformName: [*c]const u8) c_int;
pub extern fn GetShaderLocationAttrib(shader: Shader, attribName: [*c]const u8) c_int;
pub extern fn SetShaderValue(shader: Shader, locIndex: c_int, value: ?*const anyopaque, uniformType: c_int) void;
pub extern fn SetShaderValueV(shader: Shader, locIndex: c_int, value: ?*const anyopaque, uniformType: c_int, count: c_int) void;
pub extern fn SetShaderValueMatrix(shader: Shader, locIndex: c_int, mat: Matrix) void;
pub extern fn SetShaderValueTexture(shader: Shader, locIndex: c_int, texture: Texture2D) void;
pub extern fn UnloadShader(shader: Shader) void;
pub extern fn GetMouseRay(mousePosition: Vector2, camera: Camera) Ray;
pub extern fn GetCameraMatrix(camera: Camera) Matrix;
pub extern fn GetCameraMatrix2D(camera: Camera2D) Matrix;
pub extern fn GetWorldToScreen(position: Vector3, camera: Camera) Vector2;
pub extern fn GetScreenToWorld2D(position: Vector2, camera: Camera2D) Vector2;
pub extern fn GetWorldToScreenEx(position: Vector3, camera: Camera, width: c_int, height: c_int) Vector2;
pub extern fn GetWorldToScreen2D(position: Vector2, camera: Camera2D) Vector2;
pub extern fn SetTargetFPS(fps: c_int) void;
pub extern fn GetFrameTime() f32;
pub extern fn GetTime() f64;
pub extern fn GetFPS() c_int;
pub extern fn SwapScreenBuffer() void;
pub extern fn PollInputEvents() void;
pub extern fn WaitTime(seconds: f64) void;
pub extern fn SetRandomSeed(seed: c_uint) void;
pub extern fn GetRandomValue(min: c_int, max: c_int) c_int;
pub extern fn LoadRandomSequence(count: c_uint, min: c_int, max: c_int) [*c]c_int;
pub extern fn UnloadRandomSequence(sequence: [*c]c_int) void;
pub extern fn TakeScreenshot(fileName: [*c]const u8) void;
pub extern fn SetConfigFlags(flags: c_uint) void;
pub extern fn OpenURL(url: [*c]const u8) void;
pub extern fn TraceLog(logLevel: c_int, text: [*c]const u8, ...) void;
pub extern fn SetTraceLogLevel(logLevel: c_int) void;
pub extern fn MemAlloc(size: c_uint) ?*anyopaque;
pub extern fn MemRealloc(ptr: ?*anyopaque, size: c_uint) ?*anyopaque;
pub extern fn MemFree(ptr: ?*anyopaque) void;
pub extern fn SetTraceLogCallback(callback: TraceLogCallback) void;
pub extern fn SetLoadFileDataCallback(callback: LoadFileDataCallback) void;
pub extern fn SetSaveFileDataCallback(callback: SaveFileDataCallback) void;
pub extern fn SetLoadFileTextCallback(callback: LoadFileTextCallback) void;
pub extern fn SetSaveFileTextCallback(callback: SaveFileTextCallback) void;
pub extern fn LoadFileData(fileName: [*c]const u8, dataSize: [*c]c_int) [*c]u8;
pub extern fn UnloadFileData(data: [*c]u8) void;
pub extern fn SaveFileData(fileName: [*c]const u8, data: ?*anyopaque, dataSize: c_int) bool;
pub extern fn ExportDataAsCode(data: [*c]const u8, dataSize: c_int, fileName: [*c]const u8) bool;
pub extern fn LoadFileText(fileName: [*c]const u8) [*c]u8;
pub extern fn UnloadFileText(text: [*c]u8) void;
pub extern fn SaveFileText(fileName: [*c]const u8, text: [*c]u8) bool;
pub extern fn FileExists(fileName: [*c]const u8) bool;
pub extern fn DirectoryExists(dirPath: [*c]const u8) bool;
pub extern fn IsFileExtension(fileName: [*c]const u8, ext: [*c]const u8) bool;
pub extern fn GetFileLength(fileName: [*c]const u8) c_int;
pub extern fn GetFileExtension(fileName: [*c]const u8) [*c]const u8;
pub extern fn GetFileName(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetFileNameWithoutExt(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetDirectoryPath(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetPrevDirectoryPath(dirPath: [*c]const u8) [*c]const u8;
pub extern fn GetWorkingDirectory() [*c]const u8;
pub extern fn GetApplicationDirectory() [*c]const u8;
pub extern fn ChangeDirectory(dir: [*c]const u8) bool;
pub extern fn IsPathFile(path: [*c]const u8) bool;
pub extern fn LoadDirectoryFiles(dirPath: [*c]const u8) FilePathList;
pub extern fn LoadDirectoryFilesEx(basePath: [*c]const u8, filter: [*c]const u8, scanSubdirs: bool) FilePathList;
pub extern fn UnloadDirectoryFiles(files: FilePathList) void;
pub extern fn IsFileDropped() bool;
pub extern fn LoadDroppedFiles() FilePathList;
pub extern fn UnloadDroppedFiles(files: FilePathList) void;
pub extern fn GetFileModTime(fileName: [*c]const u8) c_long;
pub extern fn CompressData(data: [*c]const u8, dataSize: c_int, compDataSize: [*c]c_int) [*c]u8;
pub extern fn DecompressData(compData: [*c]const u8, compDataSize: c_int, dataSize: [*c]c_int) [*c]u8;
pub extern fn EncodeDataBase64(data: [*c]const u8, dataSize: c_int, outputSize: [*c]c_int) [*c]u8;
pub extern fn DecodeDataBase64(data: [*c]const u8, outputSize: [*c]c_int) [*c]u8;
pub extern fn LoadAutomationEventList(fileName: [*c]const u8) AutomationEventList;
pub extern fn UnloadAutomationEventList(list: [*c]AutomationEventList) void;
pub extern fn ExportAutomationEventList(list: AutomationEventList, fileName: [*c]const u8) bool;
pub extern fn SetAutomationEventList(list: [*c]AutomationEventList) void;
pub extern fn SetAutomationEventBaseFrame(frame: c_int) void;
pub extern fn StartAutomationEventRecording() void;
pub extern fn StopAutomationEventRecording() void;
pub extern fn PlayAutomationEvent(event: AutomationEvent) void;
pub extern fn IsKeyPressed(key: c_int) bool;
pub extern fn IsKeyPressedRepeat(key: c_int) bool;
pub extern fn IsKeyDown(key: c_int) bool;
pub extern fn IsKeyReleased(key: c_int) bool;
pub extern fn IsKeyUp(key: c_int) bool;
pub extern fn GetKeyPressed() c_int;
pub extern fn GetCharPressed() c_int;
pub extern fn SetExitKey(key: c_int) void;
pub extern fn IsGamepadAvailable(gamepad: c_int) bool;
pub extern fn GetGamepadName(gamepad: c_int) [*c]const u8;
pub extern fn IsGamepadButtonPressed(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonDown(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonReleased(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonUp(gamepad: c_int, button: c_int) bool;
pub extern fn GetGamepadButtonPressed() c_int;
pub extern fn GetGamepadAxisCount(gamepad: c_int) c_int;
pub extern fn GetGamepadAxisMovement(gamepad: c_int, axis: c_int) f32;
pub extern fn SetGamepadMappings(mappings: [*c]const u8) c_int;
pub extern fn IsMouseButtonPressed(button: c_int) bool;
pub extern fn IsMouseButtonDown(button: c_int) bool;
pub extern fn IsMouseButtonReleased(button: c_int) bool;
pub extern fn IsMouseButtonUp(button: c_int) bool;
pub extern fn GetMouseX() c_int;
pub extern fn GetMouseY() c_int;
pub extern fn GetMousePosition() Vector2;
pub extern fn GetMouseDelta() Vector2;
pub extern fn SetMousePosition(x: c_int, y: c_int) void;
pub extern fn SetMouseOffset(offsetX: c_int, offsetY: c_int) void;
pub extern fn SetMouseScale(scaleX: f32, scaleY: f32) void;
pub extern fn GetMouseWheelMove() f32;
pub extern fn GetMouseWheelMoveV() Vector2;
pub extern fn SetMouseCursor(cursor: c_int) void;
pub extern fn GetTouchX() c_int;
pub extern fn GetTouchY() c_int;
pub extern fn GetTouchPosition(index: c_int) Vector2;
pub extern fn GetTouchPointId(index: c_int) c_int;
pub extern fn GetTouchPointCount() c_int;
pub extern fn SetGesturesEnabled(flags: c_uint) void;
pub extern fn IsGestureDetected(gesture: c_uint) bool;
pub extern fn GetGestureDetected() c_int;
pub extern fn GetGestureHoldDuration() f32;
pub extern fn GetGestureDragVector() Vector2;
pub extern fn GetGestureDragAngle() f32;
pub extern fn GetGesturePinchVector() Vector2;
pub extern fn GetGesturePinchAngle() f32;
pub extern fn UpdateCamera(camera: [*c]Camera, mode: c_int) void;
pub extern fn UpdateCameraPro(camera: [*c]Camera, movement: Vector3, rotation: Vector3, zoom: f32) void;
pub extern fn SetShapesTexture(texture: Texture2D, source: Rectangle) void;
pub extern fn DrawPixel(posX: c_int, posY: c_int, color: Color) void;
pub extern fn DrawPixelV(position: Vector2, color: Color) void;
pub extern fn DrawLine(startPosX: c_int, startPosY: c_int, endPosX: c_int, endPosY: c_int, color: Color) void;
pub extern fn DrawLineV(startPos: Vector2, endPos: Vector2, color: Color) void;
pub extern fn DrawLineEx(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineStrip(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawLineBezier(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawCircle(centerX: c_int, centerY: c_int, radius: f32, color: Color) void;
pub extern fn DrawCircleSector(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawCircleSectorLines(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawCircleGradient(centerX: c_int, centerY: c_int, radius: f32, color1: Color, color2: Color) void;
pub extern fn DrawCircleV(center: Vector2, radius: f32, color: Color) void;
pub extern fn DrawCircleLines(centerX: c_int, centerY: c_int, radius: f32, color: Color) void;
pub extern fn DrawCircleLinesV(center: Vector2, radius: f32, color: Color) void;
pub extern fn DrawEllipse(centerX: c_int, centerY: c_int, radiusH: f32, radiusV: f32, color: Color) void;
pub extern fn DrawEllipseLines(centerX: c_int, centerY: c_int, radiusH: f32, radiusV: f32, color: Color) void;
pub extern fn DrawRing(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawRingLines(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawRectangle(posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn DrawRectangleV(position: Vector2, size: Vector2, color: Color) void;
pub extern fn DrawRectangleRec(rec: Rectangle, color: Color) void;
pub extern fn DrawRectanglePro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) void;
pub extern fn DrawRectangleGradientV(posX: c_int, posY: c_int, width: c_int, height: c_int, color1: Color, color2: Color) void;
pub extern fn DrawRectangleGradientH(posX: c_int, posY: c_int, width: c_int, height: c_int, color1: Color, color2: Color) void;
pub extern fn DrawRectangleGradientEx(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) void;
pub extern fn DrawRectangleLines(posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn DrawRectangleLinesEx(rec: Rectangle, lineThick: f32, color: Color) void;
pub extern fn DrawRectangleRounded(rec: Rectangle, roundness: f32, segments: c_int, color: Color) void;
pub extern fn DrawRectangleRoundedLines(rec: Rectangle, roundness: f32, segments: c_int, lineThick: f32, color: Color) void;
pub extern fn DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
pub extern fn DrawTriangleLines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
pub extern fn DrawTriangleFan(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawTriangleStrip(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawPoly(center: Vector2, sides: c_int, radius: f32, rotation: f32, color: Color) void;
pub extern fn DrawPolyLines(center: Vector2, sides: c_int, radius: f32, rotation: f32, color: Color) void;
pub extern fn DrawPolyLinesEx(center: Vector2, sides: c_int, radius: f32, rotation: f32, lineThick: f32, color: Color) void;
pub extern fn DrawSplineLinear(points: [*c]Vector2, pointCount: c_int, thick: f32, color: Color) void;
pub extern fn DrawSplineBasis(points: [*c]Vector2, pointCount: c_int, thick: f32, color: Color) void;
pub extern fn DrawSplineCatmullRom(points: [*c]Vector2, pointCount: c_int, thick: f32, color: Color) void;
pub extern fn DrawSplineBezierQuadratic(points: [*c]Vector2, pointCount: c_int, thick: f32, color: Color) void;
pub extern fn DrawSplineBezierCubic(points: [*c]Vector2, pointCount: c_int, thick: f32, color: Color) void;
pub extern fn DrawSplineSegmentLinear(p1: Vector2, p2: Vector2, thick: f32, color: Color) void;
pub extern fn DrawSplineSegmentBasis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) void;
pub extern fn DrawSplineSegmentCatmullRom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, thick: f32, color: Color) void;
pub extern fn DrawSplineSegmentBezierQuadratic(p1: Vector2, c2: Vector2, p3: Vector2, thick: f32, color: Color) void;
pub extern fn DrawSplineSegmentBezierCubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, thick: f32, color: Color) void;
pub extern fn GetSplinePointLinear(startPos: Vector2, endPos: Vector2, t: f32) Vector2;
pub extern fn GetSplinePointBasis(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) Vector2;
pub extern fn GetSplinePointCatmullRom(p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, t: f32) Vector2;
pub extern fn GetSplinePointBezierQuad(p1: Vector2, c2: Vector2, p3: Vector2, t: f32) Vector2;
pub extern fn GetSplinePointBezierCubic(p1: Vector2, c2: Vector2, c3: Vector2, p4: Vector2, t: f32) Vector2;
pub extern fn CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle) bool;
pub extern fn CheckCollisionCircles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) bool;
pub extern fn CheckCollisionCircleRec(center: Vector2, radius: f32, rec: Rectangle) bool;
pub extern fn CheckCollisionPointRec(point: Vector2, rec: Rectangle) bool;
pub extern fn CheckCollisionPointCircle(point: Vector2, center: Vector2, radius: f32) bool;
pub extern fn CheckCollisionPointTriangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) bool;
pub extern fn CheckCollisionPointPoly(point: Vector2, points: [*c]Vector2, pointCount: c_int) bool;
pub extern fn CheckCollisionLines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: [*c]Vector2) bool;
pub extern fn CheckCollisionPointLine(point: Vector2, p1: Vector2, p2: Vector2, threshold: c_int) bool;
pub extern fn GetCollisionRec(rec1: Rectangle, rec2: Rectangle) Rectangle;
pub extern fn LoadImage(fileName: [*c]const u8) Image;
pub extern fn LoadImageRaw(fileName: [*c]const u8, width: c_int, height: c_int, format: c_int, headerSize: c_int) Image;
pub extern fn LoadImageSvg(fileNameOrString: [*c]const u8, width: c_int, height: c_int) Image;
pub extern fn LoadImageAnim(fileName: [*c]const u8, frames: [*c]c_int) Image;
pub extern fn LoadImageFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int) Image;
pub extern fn LoadImageFromTexture(texture: Texture2D) Image;
pub extern fn LoadImageFromScreen() Image;
pub extern fn IsImageReady(image: Image) bool;
pub extern fn UnloadImage(image: Image) void;
pub extern fn ExportImage(image: Image, fileName: [*c]const u8) bool;
pub extern fn ExportImageToMemory(image: Image, fileType: [*c]const u8, fileSize: [*c]c_int) [*c]u8;
pub extern fn ExportImageAsCode(image: Image, fileName: [*c]const u8) bool;
pub extern fn GenImageColor(width: c_int, height: c_int, color: Color) Image;
pub extern fn GenImageGradientLinear(width: c_int, height: c_int, direction: c_int, start: Color, end: Color) Image;
pub extern fn GenImageGradientRadial(width: c_int, height: c_int, density: f32, inner: Color, outer: Color) Image;
pub extern fn GenImageGradientSquare(width: c_int, height: c_int, density: f32, inner: Color, outer: Color) Image;
pub extern fn GenImageChecked(width: c_int, height: c_int, checksX: c_int, checksY: c_int, col1: Color, col2: Color) Image;
pub extern fn GenImageWhiteNoise(width: c_int, height: c_int, factor: f32) Image;
pub extern fn GenImagePerlinNoise(width: c_int, height: c_int, offsetX: c_int, offsetY: c_int, scale: f32) Image;
pub extern fn GenImageCellular(width: c_int, height: c_int, tileSize: c_int) Image;
pub extern fn GenImageText(width: c_int, height: c_int, text: [*c]const u8) Image;
pub extern fn ImageCopy(image: Image) Image;
pub extern fn ImageFromImage(image: Image, rec: Rectangle) Image;
pub extern fn ImageText(text: [*c]const u8, fontSize: c_int, color: Color) Image;
pub extern fn ImageTextEx(font: Font, text: [*c]const u8, fontSize: f32, spacing: f32, tint: Color) Image;
pub extern fn ImageFormat(image: [*c]Image, newFormat: c_int) void;
pub extern fn ImageToPOT(image: [*c]Image, fill: Color) void;
pub extern fn ImageCrop(image: [*c]Image, crop: Rectangle) void;
pub extern fn ImageAlphaCrop(image: [*c]Image, threshold: f32) void;
pub extern fn ImageAlphaClear(image: [*c]Image, color: Color, threshold: f32) void;
pub extern fn ImageAlphaMask(image: [*c]Image, alphaMask: Image) void;
pub extern fn ImageAlphaPremultiply(image: [*c]Image) void;
pub extern fn ImageBlurGaussian(image: [*c]Image, blurSize: c_int) void;
pub extern fn ImageResize(image: [*c]Image, newWidth: c_int, newHeight: c_int) void;
pub extern fn ImageResizeNN(image: [*c]Image, newWidth: c_int, newHeight: c_int) void;
pub extern fn ImageResizeCanvas(image: [*c]Image, newWidth: c_int, newHeight: c_int, offsetX: c_int, offsetY: c_int, fill: Color) void;
pub extern fn ImageMipmaps(image: [*c]Image) void;
pub extern fn ImageDither(image: [*c]Image, rBpp: c_int, gBpp: c_int, bBpp: c_int, aBpp: c_int) void;
pub extern fn ImageFlipVertical(image: [*c]Image) void;
pub extern fn ImageFlipHorizontal(image: [*c]Image) void;
pub extern fn ImageRotate(image: [*c]Image, degrees: c_int) void;
pub extern fn ImageRotateCW(image: [*c]Image) void;
pub extern fn ImageRotateCCW(image: [*c]Image) void;
pub extern fn ImageColorTint(image: [*c]Image, color: Color) void;
pub extern fn ImageColorInvert(image: [*c]Image) void;
pub extern fn ImageColorGrayscale(image: [*c]Image) void;
pub extern fn ImageColorContrast(image: [*c]Image, contrast: f32) void;
pub extern fn ImageColorBrightness(image: [*c]Image, brightness: c_int) void;
pub extern fn ImageColorReplace(image: [*c]Image, color: Color, replace: Color) void;
pub extern fn LoadImageColors(image: Image) [*c]Color;
pub extern fn LoadImagePalette(image: Image, maxPaletteSize: c_int, colorCount: [*c]c_int) [*c]Color;
pub extern fn UnloadImageColors(colors: [*c]Color) void;
pub extern fn UnloadImagePalette(colors: [*c]Color) void;
pub extern fn GetImageAlphaBorder(image: Image, threshold: f32) Rectangle;
pub extern fn GetImageColor(image: Image, x: c_int, y: c_int) Color;
pub extern fn ImageClearBackground(dst: [*c]Image, color: Color) void;
pub extern fn ImageDrawPixel(dst: [*c]Image, posX: c_int, posY: c_int, color: Color) void;
pub extern fn ImageDrawPixelV(dst: [*c]Image, position: Vector2, color: Color) void;
pub extern fn ImageDrawLine(dst: [*c]Image, startPosX: c_int, startPosY: c_int, endPosX: c_int, endPosY: c_int, color: Color) void;
pub extern fn ImageDrawLineV(dst: [*c]Image, start: Vector2, end: Vector2, color: Color) void;
pub extern fn ImageDrawCircle(dst: [*c]Image, centerX: c_int, centerY: c_int, radius: c_int, color: Color) void;
pub extern fn ImageDrawCircleV(dst: [*c]Image, center: Vector2, radius: c_int, color: Color) void;
pub extern fn ImageDrawCircleLines(dst: [*c]Image, centerX: c_int, centerY: c_int, radius: c_int, color: Color) void;
pub extern fn ImageDrawCircleLinesV(dst: [*c]Image, center: Vector2, radius: c_int, color: Color) void;
pub extern fn ImageDrawRectangle(dst: [*c]Image, posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn ImageDrawRectangleV(dst: [*c]Image, position: Vector2, size: Vector2, color: Color) void;
pub extern fn ImageDrawRectangleRec(dst: [*c]Image, rec: Rectangle, color: Color) void;
pub extern fn ImageDrawRectangleLines(dst: [*c]Image, rec: Rectangle, thick: c_int, color: Color) void;
pub extern fn ImageDraw(dst: [*c]Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) void;
pub extern fn ImageDrawText(dst: [*c]Image, text: [*c]const u8, posX: c_int, posY: c_int, fontSize: c_int, color: Color) void;
pub extern fn ImageDrawTextEx(dst: [*c]Image, font: Font, text: [*c]const u8, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn LoadTexture(fileName: [*c]const u8) Texture2D;
pub extern fn LoadTextureFromImage(image: Image) Texture2D;
pub extern fn LoadTextureCubemap(image: Image, layout: c_int) TextureCubemap;
pub extern fn LoadRenderTexture(width: c_int, height: c_int) RenderTexture2D;
pub extern fn IsTextureReady(texture: Texture2D) bool;
pub extern fn UnloadTexture(texture: Texture2D) void;
pub extern fn IsRenderTextureReady(target: RenderTexture2D) bool;
pub extern fn UnloadRenderTexture(target: RenderTexture2D) void;
pub extern fn UpdateTexture(texture: Texture2D, pixels: ?*const anyopaque) void;
pub extern fn UpdateTextureRec(texture: Texture2D, rec: Rectangle, pixels: ?*const anyopaque) void;
pub extern fn GenTextureMipmaps(texture: [*c]Texture2D) void;
pub extern fn SetTextureFilter(texture: Texture2D, filter: c_int) void;
pub extern fn SetTextureWrap(texture: Texture2D, wrap: c_int) void;
pub extern fn DrawTexture(texture: Texture2D, posX: c_int, posY: c_int, tint: Color) void;
pub extern fn DrawTextureV(texture: Texture2D, position: Vector2, tint: Color) void;
pub extern fn DrawTextureEx(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) void;
pub extern fn DrawTextureRec(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color) void;
pub extern fn DrawTexturePro(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn DrawTextureNPatch(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn Fade(color: Color, alpha: f32) Color;
pub extern fn ColorToInt(color: Color) c_int;
pub extern fn ColorNormalize(color: Color) Vector4;
pub extern fn ColorFromNormalized(normalized: Vector4) Color;
pub extern fn ColorToHSV(color: Color) Vector3;
pub extern fn ColorFromHSV(hue: f32, saturation: f32, value: f32) Color;
pub extern fn ColorTint(color: Color, tint: Color) Color;
pub extern fn ColorBrightness(color: Color, factor: f32) Color;
pub extern fn ColorContrast(color: Color, contrast: f32) Color;
pub extern fn ColorAlpha(color: Color, alpha: f32) Color;
pub extern fn ColorAlphaBlend(dst: Color, src: Color, tint: Color) Color;
pub extern fn GetColor(hexValue: c_uint) Color;
pub extern fn GetPixelColor(srcPtr: ?*anyopaque, format: c_int) Color;
pub extern fn SetPixelColor(dstPtr: ?*anyopaque, color: Color, format: c_int) void;
pub extern fn GetPixelDataSize(width: c_int, height: c_int, format: c_int) c_int;
pub extern fn GetFontDefault() Font;
pub extern fn LoadFont(fileName: [*c]const u8) Font;
pub extern fn LoadFontEx(fileName: [*c]const u8, fontSize: c_int, codepoints: [*c]c_int, codepointCount: c_int) Font;
pub extern fn LoadFontFromImage(image: Image, key: Color, firstChar: c_int) Font;
pub extern fn LoadFontFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int, fontSize: c_int, codepoints: [*c]c_int, codepointCount: c_int) Font;
pub extern fn IsFontReady(font: Font) bool;
pub extern fn LoadFontData(fileData: [*c]const u8, dataSize: c_int, fontSize: c_int, codepoints: [*c]c_int, codepointCount: c_int, @"type": c_int) [*c]GlyphInfo;
pub extern fn GenImageFontAtlas(glyphs: [*c]const GlyphInfo, glyphRecs: [*c][*c]Rectangle, glyphCount: c_int, fontSize: c_int, padding: c_int, packMethod: c_int) Image;
pub extern fn UnloadFontData(glyphs: [*c]GlyphInfo, glyphCount: c_int) void;
pub extern fn UnloadFont(font: Font) void;
pub extern fn ExportFontAsCode(font: Font, fileName: [*c]const u8) bool;
pub extern fn DrawFPS(posX: c_int, posY: c_int) void;
pub extern fn DrawText(text: [*c]const u8, posX: c_int, posY: c_int, fontSize: c_int, color: Color) void;
pub extern fn DrawTextEx(font: Font, text: [*c]const u8, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn DrawTextPro(font: Font, text: [*c]const u8, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn DrawTextCodepoint(font: Font, codepoint: c_int, position: Vector2, fontSize: f32, tint: Color) void;
pub extern fn DrawTextCodepoints(font: Font, codepoints: [*c]const c_int, codepointCount: c_int, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn SetTextLineSpacing(spacing: c_int) void;
pub extern fn MeasureText(text: [*c]const u8, fontSize: c_int) c_int;
pub extern fn MeasureTextEx(font: Font, text: [*c]const u8, fontSize: f32, spacing: f32) Vector2;
pub extern fn GetGlyphIndex(font: Font, codepoint: c_int) c_int;
pub extern fn GetGlyphInfo(font: Font, codepoint: c_int) GlyphInfo;
pub extern fn GetGlyphAtlasRec(font: Font, codepoint: c_int) Rectangle;
pub extern fn LoadUTF8(codepoints: [*c]const c_int, length: c_int) [*c]u8;
pub extern fn UnloadUTF8(text: [*c]u8) void;
pub extern fn LoadCodepoints(text: [*c]const u8, count: [*c]c_int) [*c]c_int;
pub extern fn UnloadCodepoints(codepoints: [*c]c_int) void;
pub extern fn GetCodepointCount(text: [*c]const u8) c_int;
pub extern fn GetCodepoint(text: [*c]const u8, codepointSize: [*c]c_int) c_int;
pub extern fn GetCodepointNext(text: [*c]const u8, codepointSize: [*c]c_int) c_int;
pub extern fn GetCodepointPrevious(text: [*c]const u8, codepointSize: [*c]c_int) c_int;
pub extern fn CodepointToUTF8(codepoint: c_int, utf8Size: [*c]c_int) [*c]const u8;
pub extern fn TextCopy(dst: [*c]u8, src: [*c]const u8) c_int;
pub extern fn TextIsEqual(text1: [*c]const u8, text2: [*c]const u8) bool;
pub extern fn TextLength(text: [*c]const u8) c_uint;
pub extern fn TextFormat(text: [*c]const u8, ...) [*c]const u8;
pub extern fn TextSubtext(text: [*c]const u8, position: c_int, length: c_int) [*c]const u8;
pub extern fn TextReplace(text: [*c]u8, replace: [*c]const u8, by: [*c]const u8) [*c]u8;
pub extern fn TextInsert(text: [*c]const u8, insert: [*c]const u8, position: c_int) [*c]u8;
pub extern fn TextJoin(textList: [*c][*c]const u8, count: c_int, delimiter: [*c]const u8) [*c]const u8;
pub extern fn TextSplit(text: [*c]const u8, delimiter: u8, count: [*c]c_int) [*c][*c]const u8;
pub extern fn TextAppend(text: [*c]u8, append: [*c]const u8, position: [*c]c_int) void;
pub extern fn TextFindIndex(text: [*c]const u8, find: [*c]const u8) c_int;
pub extern fn TextToUpper(text: [*c]const u8) [*c]const u8;
pub extern fn TextToLower(text: [*c]const u8) [*c]const u8;
pub extern fn TextToPascal(text: [*c]const u8) [*c]const u8;
pub extern fn TextToInteger(text: [*c]const u8) c_int;
pub extern fn DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color) void;
pub extern fn DrawPoint3D(position: Vector3, color: Color) void;
pub extern fn DrawCircle3D(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color) void;
pub extern fn DrawTriangle3D(v1: Vector3, v2: Vector3, v3: Vector3, color: Color) void;
pub extern fn DrawTriangleStrip3D(points: [*c]Vector3, pointCount: c_int, color: Color) void;
pub extern fn DrawCube(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeV(position: Vector3, size: Vector3, color: Color) void;
pub extern fn DrawCubeWires(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeWiresV(position: Vector3, size: Vector3, color: Color) void;
pub extern fn DrawSphere(centerPos: Vector3, radius: f32, color: Color) void;
pub extern fn DrawSphereEx(centerPos: Vector3, radius: f32, rings: c_int, slices: c_int, color: Color) void;
pub extern fn DrawSphereWires(centerPos: Vector3, radius: f32, rings: c_int, slices: c_int, color: Color) void;
pub extern fn DrawCylinder(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: c_int, color: Color) void;
pub extern fn DrawCylinderEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: c_int, color: Color) void;
pub extern fn DrawCylinderWires(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: c_int, color: Color) void;
pub extern fn DrawCylinderWiresEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: c_int, color: Color) void;
pub extern fn DrawCapsule(startPos: Vector3, endPos: Vector3, radius: f32, slices: c_int, rings: c_int, color: Color) void;
pub extern fn DrawCapsuleWires(startPos: Vector3, endPos: Vector3, radius: f32, slices: c_int, rings: c_int, color: Color) void;
pub extern fn DrawPlane(centerPos: Vector3, size: Vector2, color: Color) void;
pub extern fn DrawRay(ray: Ray, color: Color) void;
pub extern fn DrawGrid(slices: c_int, spacing: f32) void;
pub extern fn LoadModel(fileName: [*c]const u8) Model;
pub extern fn LoadModelFromMesh(mesh: Mesh) Model;
pub extern fn IsModelReady(model: Model) bool;
pub extern fn UnloadModel(model: Model) void;
pub extern fn GetModelBoundingBox(model: Model) BoundingBox;
pub extern fn DrawModel(model: Model, position: Vector3, scale: f32, tint: Color) void;
pub extern fn DrawModelEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
pub extern fn DrawModelWires(model: Model, position: Vector3, scale: f32, tint: Color) void;
pub extern fn DrawModelWiresEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
pub extern fn DrawBoundingBox(box: BoundingBox, color: Color) void;
pub extern fn DrawBillboard(camera: Camera, texture: Texture2D, position: Vector3, size: f32, tint: Color) void;
pub extern fn DrawBillboardRec(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, size: Vector2, tint: Color) void;
pub extern fn DrawBillboardPro(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn UploadMesh(mesh: [*c]Mesh, dynamic: bool) void;
pub extern fn UpdateMeshBuffer(mesh: Mesh, index: c_int, data: ?*const anyopaque, dataSize: c_int, offset: c_int) void;
pub extern fn UnloadMesh(mesh: Mesh) void;
pub extern fn DrawMesh(mesh: Mesh, material: Material, transform: Matrix) void;
pub extern fn DrawMeshInstanced(mesh: Mesh, material: Material, transforms: [*c]const Matrix, instances: c_int) void;
pub extern fn ExportMesh(mesh: Mesh, fileName: [*c]const u8) bool;
pub extern fn GetMeshBoundingBox(mesh: Mesh) BoundingBox;
pub extern fn GenMeshTangents(mesh: [*c]Mesh) void;
pub extern fn GenMeshPoly(sides: c_int, radius: f32) Mesh;
pub extern fn GenMeshPlane(width: f32, length: f32, resX: c_int, resZ: c_int) Mesh;
pub extern fn GenMeshCube(width: f32, height: f32, length: f32) Mesh;
pub extern fn GenMeshSphere(radius: f32, rings: c_int, slices: c_int) Mesh;
pub extern fn GenMeshHemiSphere(radius: f32, rings: c_int, slices: c_int) Mesh;
pub extern fn GenMeshCylinder(radius: f32, height: f32, slices: c_int) Mesh;
pub extern fn GenMeshCone(radius: f32, height: f32, slices: c_int) Mesh;
pub extern fn GenMeshTorus(radius: f32, size: f32, radSeg: c_int, sides: c_int) Mesh;
pub extern fn GenMeshKnot(radius: f32, size: f32, radSeg: c_int, sides: c_int) Mesh;
pub extern fn GenMeshHeightmap(heightmap: Image, size: Vector3) Mesh;
pub extern fn GenMeshCubicmap(cubicmap: Image, cubeSize: Vector3) Mesh;
pub extern fn LoadMaterials(fileName: [*c]const u8, materialCount: [*c]c_int) [*c]Material;
pub extern fn LoadMaterialDefault() Material;
pub extern fn IsMaterialReady(material: Material) bool;
pub extern fn UnloadMaterial(material: Material) void;
pub extern fn SetMaterialTexture(material: [*c]Material, mapType: c_int, texture: Texture2D) void;
pub extern fn SetModelMeshMaterial(model: [*c]Model, meshId: c_int, materialId: c_int) void;
pub extern fn LoadModelAnimations(fileName: [*c]const u8, animCount: [*c]c_int) [*c]ModelAnimation;
pub extern fn UpdateModelAnimation(model: Model, anim: ModelAnimation, frame: c_int) void;
pub extern fn UnloadModelAnimation(anim: ModelAnimation) void;
pub extern fn UnloadModelAnimations(animations: [*c]ModelAnimation, animCount: c_int) void;
pub extern fn IsModelAnimationValid(model: Model, anim: ModelAnimation) bool;
pub extern fn CheckCollisionSpheres(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) bool;
pub extern fn CheckCollisionBoxes(box1: BoundingBox, box2: BoundingBox) bool;
pub extern fn CheckCollisionBoxSphere(box: BoundingBox, center: Vector3, radius: f32) bool;
pub extern fn GetRayCollisionSphere(ray: Ray, center: Vector3, radius: f32) RayCollision;
pub extern fn GetRayCollisionBox(ray: Ray, box: BoundingBox) RayCollision;
pub extern fn GetRayCollisionMesh(ray: Ray, mesh: Mesh, transform: Matrix) RayCollision;
pub extern fn GetRayCollisionTriangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) RayCollision;
pub extern fn GetRayCollisionQuad(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) RayCollision;
pub const AudioCallback = ?*const fn (?*anyopaque, c_uint) callconv(.C) void;
pub extern fn InitAudioDevice() void;
pub extern fn CloseAudioDevice() void;
pub extern fn IsAudioDeviceReady() bool;
pub extern fn SetMasterVolume(volume: f32) void;
pub extern fn GetMasterVolume() f32;
pub extern fn LoadWave(fileName: [*c]const u8) Wave;
pub extern fn LoadWaveFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int) Wave;
pub extern fn IsWaveReady(wave: Wave) bool;
pub extern fn LoadSound(fileName: [*c]const u8) Sound;
pub extern fn LoadSoundFromWave(wave: Wave) Sound;
pub extern fn LoadSoundAlias(source: Sound) Sound;
pub extern fn IsSoundReady(sound: Sound) bool;
pub extern fn UpdateSound(sound: Sound, data: ?*const anyopaque, sampleCount: c_int) void;
pub extern fn UnloadWave(wave: Wave) void;
pub extern fn UnloadSound(sound: Sound) void;
pub extern fn UnloadSoundAlias(alias: Sound) void;
pub extern fn ExportWave(wave: Wave, fileName: [*c]const u8) bool;
pub extern fn ExportWaveAsCode(wave: Wave, fileName: [*c]const u8) bool;
pub extern fn PlaySound(sound: Sound) void;
pub extern fn StopSound(sound: Sound) void;
pub extern fn PauseSound(sound: Sound) void;
pub extern fn ResumeSound(sound: Sound) void;
pub extern fn IsSoundPlaying(sound: Sound) bool;
pub extern fn SetSoundVolume(sound: Sound, volume: f32) void;
pub extern fn SetSoundPitch(sound: Sound, pitch: f32) void;
pub extern fn SetSoundPan(sound: Sound, pan: f32) void;
pub extern fn WaveCopy(wave: Wave) Wave;
pub extern fn WaveCrop(wave: [*c]Wave, initSample: c_int, finalSample: c_int) void;
pub extern fn WaveFormat(wave: [*c]Wave, sampleRate: c_int, sampleSize: c_int, channels: c_int) void;
pub extern fn LoadWaveSamples(wave: Wave) [*c]f32;
pub extern fn UnloadWaveSamples(samples: [*c]f32) void;
pub extern fn LoadMusicStream(fileName: [*c]const u8) Music;
pub extern fn LoadMusicStreamFromMemory(fileType: [*c]const u8, data: [*c]const u8, dataSize: c_int) Music;
pub extern fn IsMusicReady(music: Music) bool;
pub extern fn UnloadMusicStream(music: Music) void;
pub extern fn PlayMusicStream(music: Music) void;
pub extern fn IsMusicStreamPlaying(music: Music) bool;
pub extern fn UpdateMusicStream(music: Music) void;
pub extern fn StopMusicStream(music: Music) void;
pub extern fn PauseMusicStream(music: Music) void;
pub extern fn ResumeMusicStream(music: Music) void;
pub extern fn SeekMusicStream(music: Music, position: f32) void;
pub extern fn SetMusicVolume(music: Music, volume: f32) void;
pub extern fn SetMusicPitch(music: Music, pitch: f32) void;
pub extern fn SetMusicPan(music: Music, pan: f32) void;
pub extern fn GetMusicTimeLength(music: Music) f32;
pub extern fn GetMusicTimePlayed(music: Music) f32;
pub extern fn LoadAudioStream(sampleRate: c_uint, sampleSize: c_uint, channels: c_uint) AudioStream;
pub extern fn IsAudioStreamReady(stream: AudioStream) bool;
pub extern fn UnloadAudioStream(stream: AudioStream) void;
pub extern fn UpdateAudioStream(stream: AudioStream, data: ?*const anyopaque, frameCount: c_int) void;
pub extern fn IsAudioStreamProcessed(stream: AudioStream) bool;
pub extern fn PlayAudioStream(stream: AudioStream) void;
pub extern fn PauseAudioStream(stream: AudioStream) void;
pub extern fn ResumeAudioStream(stream: AudioStream) void;
pub extern fn IsAudioStreamPlaying(stream: AudioStream) bool;
pub extern fn StopAudioStream(stream: AudioStream) void;
pub extern fn SetAudioStreamVolume(stream: AudioStream, volume: f32) void;
pub extern fn SetAudioStreamPitch(stream: AudioStream, pitch: f32) void;
pub extern fn SetAudioStreamPan(stream: AudioStream, pan: f32) void;
pub extern fn SetAudioStreamBufferSizeDefault(size: c_int) void;
pub extern fn SetAudioStreamCallback(stream: AudioStream, callback: AudioCallback) void;
pub extern fn AttachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback) void;
pub extern fn DetachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback) void;
pub extern fn AttachAudioMixedProcessor(processor: AudioCallback) void;
pub extern fn DetachAudioMixedProcessor(processor: AudioCallback) void;
pub const struct_GuiStyleProp = extern struct {
    controlId: c_ushort = @import("std").mem.zeroes(c_ushort),
    propertyId: c_ushort = @import("std").mem.zeroes(c_ushort),
    propertyValue: c_int = @import("std").mem.zeroes(c_int),
};
pub const GuiStyleProp = struct_GuiStyleProp;
pub const STATE_NORMAL: c_int = 0;
pub const STATE_FOCUSED: c_int = 1;
pub const STATE_PRESSED: c_int = 2;
pub const STATE_DISABLED: c_int = 3;
pub const GuiState = c_uint;
pub const TEXT_ALIGN_LEFT: c_int = 0;
pub const TEXT_ALIGN_CENTER: c_int = 1;
pub const TEXT_ALIGN_RIGHT: c_int = 2;
pub const GuiTextAlignment = c_uint;
pub const TEXT_ALIGN_TOP: c_int = 0;
pub const TEXT_ALIGN_MIDDLE: c_int = 1;
pub const TEXT_ALIGN_BOTTOM: c_int = 2;
pub const GuiTextAlignmentVertical = c_uint;
pub const TEXT_WRAP_NONE: c_int = 0;
pub const TEXT_WRAP_CHAR: c_int = 1;
pub const TEXT_WRAP_WORD: c_int = 2;
pub const GuiTextWrapMode = c_uint;
pub const DEFAULT: c_int = 0;
pub const LABEL: c_int = 1;
pub const BUTTON: c_int = 2;
pub const TOGGLE: c_int = 3;
pub const SLIDER: c_int = 4;
pub const PROGRESSBAR: c_int = 5;
pub const CHECKBOX: c_int = 6;
pub const COMBOBOX: c_int = 7;
pub const DROPDOWNBOX: c_int = 8;
pub const TEXTBOX: c_int = 9;
pub const VALUEBOX: c_int = 10;
pub const SPINNER: c_int = 11;
pub const LISTVIEW: c_int = 12;
pub const COLORPICKER: c_int = 13;
pub const SCROLLBAR: c_int = 14;
pub const STATUSBAR: c_int = 15;
pub const GuiControl = c_uint;
pub const BORDER_COLOR_NORMAL: c_int = 0;
pub const BASE_COLOR_NORMAL: c_int = 1;
pub const TEXT_COLOR_NORMAL: c_int = 2;
pub const BORDER_COLOR_FOCUSED: c_int = 3;
pub const BASE_COLOR_FOCUSED: c_int = 4;
pub const TEXT_COLOR_FOCUSED: c_int = 5;
pub const BORDER_COLOR_PRESSED: c_int = 6;
pub const BASE_COLOR_PRESSED: c_int = 7;
pub const TEXT_COLOR_PRESSED: c_int = 8;
pub const BORDER_COLOR_DISABLED: c_int = 9;
pub const BASE_COLOR_DISABLED: c_int = 10;
pub const TEXT_COLOR_DISABLED: c_int = 11;
pub const BORDER_WIDTH: c_int = 12;
pub const TEXT_PADDING: c_int = 13;
pub const TEXT_ALIGNMENT: c_int = 14;
pub const GuiControlProperty = c_uint;
pub const TEXT_SIZE: c_int = 16;
pub const TEXT_SPACING: c_int = 17;
pub const LINE_COLOR: c_int = 18;
pub const BACKGROUND_COLOR: c_int = 19;
pub const TEXT_LINE_SPACING: c_int = 20;
pub const TEXT_ALIGNMENT_VERTICAL: c_int = 21;
pub const TEXT_WRAP_MODE: c_int = 22;
pub const GuiDefaultProperty = c_uint;
pub const GROUP_PADDING: c_int = 16;
pub const GuiToggleProperty = c_uint;
pub const SLIDER_WIDTH: c_int = 16;
pub const SLIDER_PADDING: c_int = 17;
pub const GuiSliderProperty = c_uint;
pub const PROGRESS_PADDING: c_int = 16;
pub const GuiProgressBarProperty = c_uint;
pub const ARROWS_SIZE: c_int = 16;
pub const ARROWS_VISIBLE: c_int = 17;
pub const SCROLL_SLIDER_PADDING: c_int = 18;
pub const SCROLL_SLIDER_SIZE: c_int = 19;
pub const SCROLL_PADDING: c_int = 20;
pub const SCROLL_SPEED: c_int = 21;
pub const GuiScrollBarProperty = c_uint;
pub const CHECK_PADDING: c_int = 16;
pub const GuiCheckBoxProperty = c_uint;
pub const COMBO_BUTTON_WIDTH: c_int = 16;
pub const COMBO_BUTTON_SPACING: c_int = 17;
pub const GuiComboBoxProperty = c_uint;
pub const ARROW_PADDING: c_int = 16;
pub const DROPDOWN_ITEMS_SPACING: c_int = 17;
pub const GuiDropdownBoxProperty = c_uint;
pub const TEXT_READONLY: c_int = 16;
pub const GuiTextBoxProperty = c_uint;
pub const SPIN_BUTTON_WIDTH: c_int = 16;
pub const SPIN_BUTTON_SPACING: c_int = 17;
pub const GuiSpinnerProperty = c_uint;
pub const LIST_ITEMS_HEIGHT: c_int = 16;
pub const LIST_ITEMS_SPACING: c_int = 17;
pub const SCROLLBAR_WIDTH: c_int = 18;
pub const SCROLLBAR_SIDE: c_int = 19;
pub const GuiListViewProperty = c_uint;
pub const COLOR_SELECTOR_SIZE: c_int = 16;
pub const HUEBAR_WIDTH: c_int = 17;
pub const HUEBAR_PADDING: c_int = 18;
pub const HUEBAR_SELECTOR_HEIGHT: c_int = 19;
pub const HUEBAR_SELECTOR_OVERFLOW: c_int = 20;
pub const GuiColorPickerProperty = c_uint;
pub export fn GuiEnable() void {
    if (guiState == @as(c_uint, @bitCast(STATE_DISABLED))) {
        guiState = @as(c_uint, @bitCast(STATE_NORMAL));
    }
}
pub export fn GuiDisable() void {
    if (guiState == @as(c_uint, @bitCast(STATE_NORMAL))) {
        guiState = @as(c_uint, @bitCast(STATE_DISABLED));
    }
}
pub export fn GuiLock() void {
    guiLocked = @as(c_int, 1) != 0;
}
pub export fn GuiUnlock() void {
    guiLocked = @as(c_int, 0) != 0;
}
pub export fn GuiIsLocked() bool {
    return guiLocked;
}
pub export fn GuiSetAlpha(arg_alpha: f32) void {
    var alpha = arg_alpha;
    _ = &alpha;
    if (alpha < 0.0) {
        alpha = 0.0;
    } else if (alpha > 1.0) {
        alpha = 1.0;
    }
    guiAlpha = alpha;
}
pub export fn GuiSetState(arg_state: c_int) void {
    var state = arg_state;
    _ = &state;
    guiState = @as(c_uint, @bitCast(state));
}
pub export fn GuiGetState() c_int {
    return @as(c_int, @bitCast(guiState));
}
pub export fn GuiSetFont(arg_font: Font) void {
    var font = arg_font;
    _ = &font;
    if (font.texture.id > @as(c_uint, @bitCast(@as(c_int, 0)))) {
        if (!guiStyleLoaded) {
            GuiLoadStyleDefault();
        }
        guiFont = font;
    }
}
pub export fn GuiGetFont() Font {
    return guiFont;
}
pub export fn GuiSetStyle(arg_control: c_int, arg_property: c_int, arg_value: c_int) void {
    var control = arg_control;
    _ = &control;
    var property = arg_property;
    _ = &property;
    var value = arg_value;
    _ = &value;
    if (!guiStyleLoaded) {
        GuiLoadStyleDefault();
    }
    guiStyle[@as(c_uint, @intCast((control * (@as(c_int, 16) + @as(c_int, 8))) + property))] = @as(c_uint, @bitCast(value));
    if ((control == @as(c_int, 0)) and (property < @as(c_int, 16))) {
        {
            var i: c_int = 1;
            _ = &i;
            while (i < @as(c_int, 16)) : (i += 1) {
                guiStyle[@as(c_uint, @intCast((i * (@as(c_int, 16) + @as(c_int, 8))) + property))] = @as(c_uint, @bitCast(value));
            }
        }
    }
}
pub export fn GuiGetStyle(arg_control: c_int, arg_property: c_int) c_int {
    var control = arg_control;
    _ = &control;
    var property = arg_property;
    _ = &property;
    if (!guiStyleLoaded) {
        GuiLoadStyleDefault();
    }
    return @as(c_int, @bitCast(guiStyle[@as(c_uint, @intCast((control * (@as(c_int, 16) + @as(c_int, 8))) + property))]));
}
pub const struct___sbuf = extern struct {
    _base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _size: c_int = @import("std").mem.zeroes(c_int),
};
pub const __int64_t = c_longlong;
pub const __darwin_off_t = __int64_t;
pub const fpos_t = __darwin_off_t;
pub const struct___sFILEX = opaque {};
pub const struct___sFILE = extern struct {
    _p: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _r: c_int = @import("std").mem.zeroes(c_int),
    _w: c_int = @import("std").mem.zeroes(c_int),
    _flags: c_short = @import("std").mem.zeroes(c_short),
    _file: c_short = @import("std").mem.zeroes(c_short),
    _bf: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _lbfsize: c_int = @import("std").mem.zeroes(c_int),
    _cookie: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    _close: ?*const fn (?*anyopaque) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) c_int),
    _read: ?*const fn (?*anyopaque, [*c]u8, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]u8, c_int) callconv(.C) c_int),
    _seek: ?*const fn (?*anyopaque, fpos_t, c_int) callconv(.C) fpos_t = @import("std").mem.zeroes(?*const fn (?*anyopaque, fpos_t, c_int) callconv(.C) fpos_t),
    _write: ?*const fn (?*anyopaque, [*c]const u8, c_int) callconv(.C) c_int = @import("std").mem.zeroes(?*const fn (?*anyopaque, [*c]const u8, c_int) callconv(.C) c_int),
    _ub: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _extra: ?*struct___sFILEX = @import("std").mem.zeroes(?*struct___sFILEX),
    _ur: c_int = @import("std").mem.zeroes(c_int),
    _ubuf: [3]u8 = @import("std").mem.zeroes([3]u8),
    _nbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lb: struct___sbuf = @import("std").mem.zeroes(struct___sbuf),
    _blksize: c_int = @import("std").mem.zeroes(c_int),
    _offset: fpos_t = @import("std").mem.zeroes(fpos_t),
};
pub const FILE = struct___sFILE;
pub export fn GuiLoadStyle(arg_fileName: [*c]const u8) void {
    var fileName = arg_fileName;
    _ = &fileName;
    var tryBinary: bool = @as(c_int, 0) != 0;
    _ = &tryBinary;
    var rgsFile: [*c]FILE = fopen(fileName, "rt");
    _ = &rgsFile;
    if (rgsFile != @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var buffer: [256]u8 = [1]u8{
            0,
        } ++ [1]u8{0} ** 255;
        _ = &buffer;
        _ = fgets(@as([*c]u8, @ptrCast(@alignCast(&buffer))), @as(c_int, 256), rgsFile);
        if (@as(c_int, @bitCast(@as(c_uint, buffer[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '#')) {
            var controlId: c_int = 0;
            _ = &controlId;
            var propertyId: c_int = 0;
            _ = &propertyId;
            var propertyValue: c_uint = 0;
            _ = &propertyValue;
            while (!(feof(rgsFile) != 0)) {
                while (true) {
                    switch (@as(c_int, @bitCast(@as(c_uint, buffer[@as(c_uint, @intCast(@as(c_int, 0)))])))) {
                        @as(c_int, 112) => {
                            {
                                _ = sscanf(@as([*c]u8, @ptrCast(@alignCast(&buffer))), "p %d %d 0x%x", &controlId, &propertyId, &propertyValue);
                                GuiSetStyle(controlId, propertyId, @as(c_int, @bitCast(propertyValue)));
                            }
                            break;
                        },
                        @as(c_int, 102) => {
                            {
                                var fontSize: c_int = 0;
                                _ = &fontSize;
                                var charmapFileName: [256]u8 = [1]u8{
                                    0,
                                } ++ [1]u8{0} ** 255;
                                _ = &charmapFileName;
                                var fontFileName: [256]u8 = [1]u8{
                                    0,
                                } ++ [1]u8{0} ** 255;
                                _ = &fontFileName;
                                _ = sscanf(@as([*c]u8, @ptrCast(@alignCast(&buffer))), "f %d %s %[^\r\n]s", &fontSize, @as([*c]u8, @ptrCast(@alignCast(&charmapFileName))), @as([*c]u8, @ptrCast(@alignCast(&fontFileName))));
                                var font: Font = Font{
                                    .baseSize = @as(c_int, 0),
                                    .glyphCount = 0,
                                    .glyphPadding = 0,
                                    .texture = @import("std").mem.zeroes(Texture2D),
                                    .recs = null,
                                    .glyphs = null,
                                };
                                _ = &font;
                                var codepoints: [*c]c_int = null;
                                _ = &codepoints;
                                var codepointCount: c_int = 0;
                                _ = &codepointCount;
                                if (@as(c_int, @bitCast(@as(c_uint, charmapFileName[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '0')) {
                                    var textData: [*c]u8 = LoadFileText(TextFormat("%s/%s", GetDirectoryPath(fileName), @as([*c]u8, @ptrCast(@alignCast(&charmapFileName)))));
                                    _ = &textData;
                                    codepoints = LoadCodepoints(textData, &codepointCount);
                                    UnloadFileText(textData);
                                }
                                if (@as(c_int, @bitCast(@as(c_uint, fontFileName[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00')) {
                                    if (font.texture.id != GetFontDefault().texture.id) {
                                        UnloadTexture(font.texture);
                                    }
                                    if (codepointCount > @as(c_int, 0)) {
                                        font = LoadFontEx(TextFormat("%s/%s", GetDirectoryPath(fileName), @as([*c]u8, @ptrCast(@alignCast(&fontFileName)))), fontSize, codepoints, codepointCount);
                                    } else {
                                        font = LoadFontEx(TextFormat("%s/%s", GetDirectoryPath(fileName), @as([*c]u8, @ptrCast(@alignCast(&fontFileName)))), fontSize, null, @as(c_int, 0));
                                    }
                                }
                                if (font.texture.id == @as(c_uint, @bitCast(@as(c_int, 0)))) {
                                    font = GetFontDefault();
                                    GuiSetStyle(DEFAULT, TEXT_SIZE, @as(c_int, 10));
                                    GuiSetStyle(DEFAULT, TEXT_SPACING, @as(c_int, 1));
                                }
                                UnloadCodepoints(codepoints);
                                if ((font.texture.id > @as(c_uint, @bitCast(@as(c_int, 0)))) and (font.glyphCount > @as(c_int, 0))) {
                                    GuiSetFont(font);
                                }
                            }
                            break;
                        },
                        else => break,
                    }
                    break;
                }
                _ = fgets(@as([*c]u8, @ptrCast(@alignCast(&buffer))), @as(c_int, 256), rgsFile);
            }
        } else {
            tryBinary = @as(c_int, 1) != 0;
        }
        _ = fclose(rgsFile);
    }
    if (tryBinary) {
        rgsFile = fopen(fileName, "rb");
        if (rgsFile != @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            _ = fseek(rgsFile, @as(c_long, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 2));
            var fileDataSize: c_int = @as(c_int, @bitCast(@as(c_int, @truncate(ftell(rgsFile)))));
            _ = &fileDataSize;
            _ = fseek(rgsFile, @as(c_long, @bitCast(@as(c_long, @as(c_int, 0)))), @as(c_int, 0));
            if (fileDataSize > @as(c_int, 0)) {
                var fileData: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, fileDataSize))) *% @sizeOf(u8)))));
                _ = &fileData;
                _ = fread(@as(?*anyopaque, @ptrCast(fileData)), @sizeOf(u8), @as(c_ulong, @bitCast(@as(c_long, fileDataSize))), rgsFile);
                GuiLoadStyleFromMemory(fileData, fileDataSize);
                free(@as(?*anyopaque, @ptrCast(fileData)));
            }
            _ = fclose(rgsFile);
        }
    }
}
pub export fn GuiLoadStyleDefault() void {
    guiStyleLoaded = @as(c_int, 1) != 0;
    GuiSetStyle(DEFAULT, BORDER_COLOR_NORMAL, @as(c_int, @bitCast(@as(c_uint, 2206434303))));
    GuiSetStyle(DEFAULT, BASE_COLOR_NORMAL, @as(c_int, @bitCast(@as(c_uint, 3385444863))));
    GuiSetStyle(DEFAULT, TEXT_COLOR_NORMAL, @as(c_int, 1751673087));
    GuiSetStyle(DEFAULT, BORDER_COLOR_FOCUSED, @as(c_int, 1538447871));
    GuiSetStyle(DEFAULT, BASE_COLOR_FOCUSED, @as(c_int, @bitCast(@as(c_uint, 3387948799))));
    GuiSetStyle(DEFAULT, TEXT_COLOR_FOCUSED, @as(c_int, 1822145791));
    GuiSetStyle(DEFAULT, BORDER_COLOR_PRESSED, @as(c_int, 76728319));
    GuiSetStyle(DEFAULT, BASE_COLOR_PRESSED, @as(c_int, @bitCast(@as(c_uint, 2548629503))));
    GuiSetStyle(DEFAULT, TEXT_COLOR_PRESSED, @as(c_int, 915124223));
    GuiSetStyle(DEFAULT, BORDER_COLOR_DISABLED, @as(c_int, @bitCast(@as(c_uint, 3049374463))));
    GuiSetStyle(DEFAULT, BASE_COLOR_DISABLED, @as(c_int, @bitCast(@as(c_uint, 3874089471))));
    GuiSetStyle(DEFAULT, TEXT_COLOR_DISABLED, @as(c_int, @bitCast(@as(c_uint, 2931276031))));
    GuiSetStyle(DEFAULT, BORDER_WIDTH, @as(c_int, 1));
    GuiSetStyle(DEFAULT, TEXT_PADDING, @as(c_int, 0));
    GuiSetStyle(DEFAULT, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
    GuiSetStyle(DEFAULT, TEXT_SIZE, @as(c_int, 10));
    GuiSetStyle(DEFAULT, TEXT_SPACING, @as(c_int, 1));
    GuiSetStyle(DEFAULT, LINE_COLOR, @as(c_int, @bitCast(@as(c_uint, 2427172351))));
    GuiSetStyle(DEFAULT, BACKGROUND_COLOR, @as(c_int, @bitCast(@as(c_uint, 4126537215))));
    GuiSetStyle(DEFAULT, TEXT_LINE_SPACING, @as(c_int, 15));
    GuiSetStyle(DEFAULT, TEXT_ALIGNMENT_VERTICAL, TEXT_ALIGN_MIDDLE);
    GuiSetStyle(LABEL, TEXT_ALIGNMENT, TEXT_ALIGN_LEFT);
    GuiSetStyle(BUTTON, BORDER_WIDTH, @as(c_int, 2));
    GuiSetStyle(SLIDER, TEXT_PADDING, @as(c_int, 4));
    GuiSetStyle(PROGRESSBAR, TEXT_PADDING, @as(c_int, 4));
    GuiSetStyle(CHECKBOX, TEXT_PADDING, @as(c_int, 4));
    GuiSetStyle(CHECKBOX, TEXT_ALIGNMENT, TEXT_ALIGN_RIGHT);
    GuiSetStyle(DROPDOWNBOX, TEXT_PADDING, @as(c_int, 0));
    GuiSetStyle(DROPDOWNBOX, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
    GuiSetStyle(TEXTBOX, TEXT_PADDING, @as(c_int, 4));
    GuiSetStyle(TEXTBOX, TEXT_ALIGNMENT, TEXT_ALIGN_LEFT);
    GuiSetStyle(VALUEBOX, TEXT_PADDING, @as(c_int, 0));
    GuiSetStyle(VALUEBOX, TEXT_ALIGNMENT, TEXT_ALIGN_LEFT);
    GuiSetStyle(SPINNER, TEXT_PADDING, @as(c_int, 0));
    GuiSetStyle(SPINNER, TEXT_ALIGNMENT, TEXT_ALIGN_LEFT);
    GuiSetStyle(STATUSBAR, TEXT_PADDING, @as(c_int, 8));
    GuiSetStyle(STATUSBAR, TEXT_ALIGNMENT, TEXT_ALIGN_LEFT);
    GuiSetStyle(TOGGLE, GROUP_PADDING, @as(c_int, 2));
    GuiSetStyle(SLIDER, SLIDER_WIDTH, @as(c_int, 16));
    GuiSetStyle(SLIDER, SLIDER_PADDING, @as(c_int, 1));
    GuiSetStyle(PROGRESSBAR, PROGRESS_PADDING, @as(c_int, 1));
    GuiSetStyle(CHECKBOX, CHECK_PADDING, @as(c_int, 1));
    GuiSetStyle(COMBOBOX, COMBO_BUTTON_WIDTH, @as(c_int, 32));
    GuiSetStyle(COMBOBOX, COMBO_BUTTON_SPACING, @as(c_int, 2));
    GuiSetStyle(DROPDOWNBOX, ARROW_PADDING, @as(c_int, 16));
    GuiSetStyle(DROPDOWNBOX, DROPDOWN_ITEMS_SPACING, @as(c_int, 2));
    GuiSetStyle(SPINNER, SPIN_BUTTON_WIDTH, @as(c_int, 24));
    GuiSetStyle(SPINNER, SPIN_BUTTON_SPACING, @as(c_int, 2));
    GuiSetStyle(SCROLLBAR, BORDER_WIDTH, @as(c_int, 0));
    GuiSetStyle(SCROLLBAR, ARROWS_VISIBLE, @as(c_int, 0));
    GuiSetStyle(SCROLLBAR, ARROWS_SIZE, @as(c_int, 6));
    GuiSetStyle(SCROLLBAR, SCROLL_SLIDER_PADDING, @as(c_int, 0));
    GuiSetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE, @as(c_int, 16));
    GuiSetStyle(SCROLLBAR, SCROLL_PADDING, @as(c_int, 0));
    GuiSetStyle(SCROLLBAR, SCROLL_SPEED, @as(c_int, 12));
    GuiSetStyle(LISTVIEW, LIST_ITEMS_HEIGHT, @as(c_int, 28));
    GuiSetStyle(LISTVIEW, LIST_ITEMS_SPACING, @as(c_int, 2));
    GuiSetStyle(LISTVIEW, SCROLLBAR_WIDTH, @as(c_int, 12));
    GuiSetStyle(LISTVIEW, SCROLLBAR_SIDE, @as(c_int, 1));
    GuiSetStyle(COLORPICKER, COLOR_SELECTOR_SIZE, @as(c_int, 8));
    GuiSetStyle(COLORPICKER, HUEBAR_WIDTH, @as(c_int, 16));
    GuiSetStyle(COLORPICKER, HUEBAR_PADDING, @as(c_int, 8));
    GuiSetStyle(COLORPICKER, HUEBAR_SELECTOR_HEIGHT, @as(c_int, 8));
    GuiSetStyle(COLORPICKER, HUEBAR_SELECTOR_OVERFLOW, @as(c_int, 2));
    if (guiFont.texture.id != GetFontDefault().texture.id) {
        UnloadTexture(guiFont.texture);
        free(@as(?*anyopaque, @ptrCast(guiFont.recs)));
        free(@as(?*anyopaque, @ptrCast(guiFont.glyphs)));
        guiFont.recs = null;
        guiFont.glyphs = null;
        guiFont = GetFontDefault();
        var whiteChar: Rectangle = guiFont.recs[@as(c_uint, @intCast(@as(c_int, 95)))];
        _ = &whiteChar;
        SetShapesTexture(guiFont.texture, Rectangle{
            .x = whiteChar.x + @as(f32, @floatFromInt(@as(c_int, 1))),
            .y = whiteChar.y + @as(f32, @floatFromInt(@as(c_int, 1))),
            .width = whiteChar.width - @as(f32, @floatFromInt(@as(c_int, 2))),
            .height = whiteChar.height - @as(f32, @floatFromInt(@as(c_int, 2))),
        });
    }
}
pub export fn GuiEnableTooltip() void {
    guiTooltip = @as(c_int, 1) != 0;
}
pub export fn GuiDisableTooltip() void {
    guiTooltip = @as(c_int, 0) != 0;
}
pub export fn GuiSetTooltip(arg_tooltip: [*c]const u8) void {
    var tooltip = arg_tooltip;
    _ = &tooltip;
    guiTooltipPtr = tooltip;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:47:3: warning: TODO implement function '__builtin___sprintf_chk' in std.zig.c_builtins

// libs/raylib/include/raygui.h:4181:13: warning: unable to translate function, demoted to extern
pub extern fn GuiIconText(arg_iconId: c_int, arg_text: [*c]const u8) [*c]const u8;
pub export fn GuiSetIconScale(arg_scale: c_int) void {
    var scale = arg_scale;
    _ = &scale;
    if (scale >= @as(c_int, 1)) {
        guiIconScale = @as(c_uint, @bitCast(scale));
    }
}
pub export fn GuiGetIcons() [*c]c_uint {
    return guiIconsPtr;
}
pub export fn GuiLoadIcons(arg_fileName: [*c]const u8, arg_loadIconsName: bool) [*c][*c]u8 {
    var fileName = arg_fileName;
    _ = &fileName;
    var loadIconsName = arg_loadIconsName;
    _ = &loadIconsName;
    var rgiFile: [*c]FILE = fopen(fileName, "rb");
    _ = &rgiFile;
    var guiIconsName: [*c][*c]u8 = null;
    _ = &guiIconsName;
    if (rgiFile != @as([*c]FILE, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var signature: [5]u8 = [1]u8{
            0,
        } ++ [1]u8{0} ** 4;
        _ = &signature;
        var version: c_short = 0;
        _ = &version;
        var reserved: c_short = 0;
        _ = &reserved;
        var iconCount: c_short = 0;
        _ = &iconCount;
        var iconSize: c_short = 0;
        _ = &iconSize;
        _ = fread(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&signature))))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4)))), rgiFile);
        _ = fread(@as(?*anyopaque, @ptrCast(&version)), @sizeOf(c_short), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), rgiFile);
        _ = fread(@as(?*anyopaque, @ptrCast(&reserved)), @sizeOf(c_short), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), rgiFile);
        _ = fread(@as(?*anyopaque, @ptrCast(&iconCount)), @sizeOf(c_short), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), rgiFile);
        _ = fread(@as(?*anyopaque, @ptrCast(&iconSize)), @sizeOf(c_short), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), rgiFile);
        if ((((@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, 'r')) and (@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, 'G'))) and (@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 2)))]))) == @as(c_int, 'I'))) and (@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 3)))]))) == @as(c_int, ' '))) {
            if (loadIconsName) {
                guiIconsName = @as([*c][*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, iconCount))) *% @sizeOf([*c][*c]u8)))));
                {
                    var i: c_int = 0;
                    _ = &i;
                    while (i < @as(c_int, @bitCast(@as(c_int, iconCount)))) : (i += 1) {
                        (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk guiIconsName + @as(usize, @intCast(tmp)) else break :blk guiIconsName - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, @as(c_int, 32))))))));
                        _ = fread(@as(?*anyopaque, @ptrCast((blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk guiIconsName + @as(usize, @intCast(tmp)) else break :blk guiIconsName - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*)), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1)))), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 32)))), rgiFile);
                    }
                }
            } else {
                _ = fseek(rgiFile, @as(c_long, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_int, iconCount))) * @as(c_int, 32)))), @as(c_int, 1));
            }
            _ = fread(@as(?*anyopaque, @ptrCast(guiIconsPtr)), @sizeOf(c_uint), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_int, iconCount))) * @divTrunc(@as(c_int, @bitCast(@as(c_int, iconSize))) * @as(c_int, @bitCast(@as(c_int, iconSize))), @as(c_int, 32))))), rgiFile);
        }
        _ = fclose(rgiFile);
    }
    return guiIconsName;
}
pub export fn GuiDrawIcon(arg_iconId: c_int, arg_posX: c_int, arg_posY: c_int, arg_pixelSize: c_int, arg_color: Color) void {
    var iconId = arg_iconId;
    _ = &iconId;
    var posX = arg_posX;
    _ = &posX;
    var posY = arg_posY;
    _ = &posY;
    var pixelSize = arg_pixelSize;
    _ = &pixelSize;
    var color = arg_color;
    _ = &color;
    {
        var i: c_int = 0;
        _ = &i;
        var y: c_int = 0;
        _ = &y;
        while (i < @divTrunc(@as(c_int, 16) * @as(c_int, 16), @as(c_int, 32))) : (i += 1) {
            {
                var k: c_int = 0;
                _ = &k;
                while (k < @as(c_int, 32)) : (k += 1) {
                    if (((blk: {
                        const tmp = (iconId * @divTrunc(@as(c_int, 16) * @as(c_int, 16), @as(c_int, 32))) + i;
                        if (tmp >= 0) break :blk guiIconsPtr + @as(usize, @intCast(tmp)) else break :blk guiIconsPtr - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* & (@as(c_uint, 1) << @intCast(k))) != 0) {
                        GuiDrawRectangle(Rectangle{
                            .x = @as(f32, @floatFromInt(posX)) + @as(f32, @floatFromInt(@import("std").zig.c_translation.signedRemainder(k, @as(c_int, 16)) * pixelSize)),
                            .y = @as(f32, @floatFromInt(posY)) + @as(f32, @floatFromInt(y * pixelSize)),
                            .width = @as(f32, @floatFromInt(pixelSize)),
                            .height = @as(f32, @floatFromInt(pixelSize)),
                        }, @as(c_int, 0), Color{
                            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                        }, color);
                    }
                    if ((k == @as(c_int, 15)) or (k == @as(c_int, 31))) {
                        y += 1;
                    }
                }
            }
        }
    }
}
pub export fn GuiWindowBox(arg_bounds: Rectangle, arg_title: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var title = arg_title;
    _ = &title;
    var result: c_int = 0;
    _ = &result;
    var statusBarHeight: c_int = 24;
    _ = &statusBarHeight;
    var statusBar: Rectangle = Rectangle{
        .x = bounds.x,
        .y = bounds.y,
        .width = bounds.width,
        .height = @as(f32, @floatFromInt(statusBarHeight)),
    };
    _ = &statusBar;
    if (bounds.height < (@as(f32, @floatFromInt(statusBarHeight)) * 2.0)) {
        bounds.height = @as(f32, @floatFromInt(statusBarHeight)) * 2.0;
    }
    var windowPanel: Rectangle = Rectangle{
        .x = bounds.x,
        .y = (bounds.y + @as(f32, @floatFromInt(statusBarHeight))) - @as(f32, @floatFromInt(@as(c_int, 1))),
        .width = bounds.width,
        .height = (bounds.height - @as(f32, @floatFromInt(statusBarHeight))) + @as(f32, @floatFromInt(@as(c_int, 1))),
    };
    _ = &windowPanel;
    var closeButtonRec: Rectangle = Rectangle{
        .x = ((statusBar.x + statusBar.width) - @as(f32, @floatFromInt(GuiGetStyle(STATUSBAR, BORDER_WIDTH)))) - @as(f32, @floatFromInt(@as(c_int, 20))),
        .y = (statusBar.y + (@as(f32, @floatFromInt(statusBarHeight)) / 2.0)) - (18.0 / 2.0),
        .width = @as(f32, @floatFromInt(@as(c_int, 18))),
        .height = @as(f32, @floatFromInt(@as(c_int, 18))),
    };
    _ = &closeButtonRec;
    _ = GuiStatusBar(statusBar, title);
    _ = GuiPanel(windowPanel, null);
    var tempBorderWidth: c_int = GuiGetStyle(BUTTON, BORDER_WIDTH);
    _ = &tempBorderWidth;
    var tempTextAlignment: c_int = GuiGetStyle(BUTTON, TEXT_ALIGNMENT);
    _ = &tempTextAlignment;
    GuiSetStyle(BUTTON, BORDER_WIDTH, @as(c_int, 1));
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
    result = GuiButton(closeButtonRec, GuiIconText(ICON_CROSS_SMALL, null));
    GuiSetStyle(BUTTON, BORDER_WIDTH, tempBorderWidth);
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, tempTextAlignment);
    return result;
}
pub export fn GuiGroupBox(arg_bounds: Rectangle, arg_text: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    GuiDrawRectangle(Rectangle{
        .x = bounds.x,
        .y = bounds.y,
        .width = @as(f32, @floatFromInt(@as(c_int, 1))),
        .height = bounds.height,
    }, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, if (state == @as(c_uint, @bitCast(STATE_DISABLED))) BORDER_COLOR_DISABLED else LINE_COLOR)))));
    GuiDrawRectangle(Rectangle{
        .x = bounds.x,
        .y = (bounds.y + bounds.height) - @as(f32, @floatFromInt(@as(c_int, 1))),
        .width = bounds.width,
        .height = @as(f32, @floatFromInt(@as(c_int, 1))),
    }, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, if (state == @as(c_uint, @bitCast(STATE_DISABLED))) BORDER_COLOR_DISABLED else LINE_COLOR)))));
    GuiDrawRectangle(Rectangle{
        .x = (bounds.x + bounds.width) - @as(f32, @floatFromInt(@as(c_int, 1))),
        .y = bounds.y,
        .width = @as(f32, @floatFromInt(@as(c_int, 1))),
        .height = bounds.height,
    }, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, if (state == @as(c_uint, @bitCast(STATE_DISABLED))) BORDER_COLOR_DISABLED else LINE_COLOR)))));
    _ = GuiLine(Rectangle{
        .x = bounds.x,
        .y = bounds.y - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2)))),
        .width = bounds.width,
        .height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))),
    }, text);
    return result;
}
pub export fn GuiLine(arg_bounds: Rectangle, arg_text: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var color: Color = GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, if (state == @as(c_uint, @bitCast(STATE_DISABLED))) BORDER_COLOR_DISABLED else LINE_COLOR))));
    _ = &color;
    if (text == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        GuiDrawRectangle(Rectangle{
            .x = bounds.x,
            .y = bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2)))),
            .width = bounds.width,
            .height = @as(f32, @floatFromInt(@as(c_int, 1))),
        }, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, color);
    } else {
        var textBounds: Rectangle = Rectangle{
            .x = @as(f32, @floatFromInt(@as(c_int, 0))),
            .y = 0,
            .width = 0,
            .height = 0,
        };
        _ = &textBounds;
        textBounds.width = @as(f32, @floatFromInt(GetTextWidth(text))) + @as(f32, @floatFromInt(@as(c_int, 2)));
        textBounds.height = bounds.height;
        textBounds.x = bounds.x + @as(f32, @floatFromInt(@as(c_int, 12)));
        textBounds.y = bounds.y;
        GuiDrawRectangle(Rectangle{
            .x = bounds.x,
            .y = bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2)))),
            .width = @as(f32, @floatFromInt(@as(c_int, 12) - @as(c_int, 4))),
            .height = @as(f32, @floatFromInt(@as(c_int, 1))),
        }, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, color);
        GuiDrawText(text, textBounds, TEXT_ALIGN_LEFT, color);
        GuiDrawRectangle(Rectangle{
            .x = ((bounds.x + @as(f32, @floatFromInt(@as(c_int, 12)))) + textBounds.width) + @as(f32, @floatFromInt(@as(c_int, 4))),
            .y = bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2)))),
            .width = ((bounds.width - textBounds.width) - @as(f32, @floatFromInt(@as(c_int, 12)))) - @as(f32, @floatFromInt(@as(c_int, 4))),
            .height = @as(f32, @floatFromInt(@as(c_int, 1))),
        }, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, color);
    }
    return result;
}
pub export fn GuiPanel(arg_bounds: Rectangle, arg_text: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var statusBar: Rectangle = Rectangle{
        .x = bounds.x,
        .y = bounds.y,
        .width = bounds.width,
        .height = @as(f32, @floatFromInt(@as(c_int, 24))),
    };
    _ = &statusBar;
    if ((text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (bounds.height < (@as(f32, @floatFromInt(@as(c_int, 24))) * 2.0))) {
        bounds.height = @as(f32, @floatFromInt(@as(c_int, 24))) * 2.0;
    }
    if (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        bounds.y += @as(f32, @floatFromInt(@as(c_int, 24))) - @as(f32, @floatFromInt(@as(c_int, 1)));
        bounds.height -= @as(f32, @floatFromInt(@as(c_int, 24))) - @as(f32, @floatFromInt(@as(c_int, 1)));
    }
    if (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = GuiStatusBar(statusBar, text);
    }
    GuiDrawRectangle(bounds, @as(c_int, 1), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, if (state == @as(c_uint, @bitCast(STATE_DISABLED))) BORDER_COLOR_DISABLED else LINE_COLOR)))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, if (state == @as(c_uint, @bitCast(STATE_DISABLED))) BASE_COLOR_DISABLED else BACKGROUND_COLOR)))));
    return result;
}
pub export fn GuiTabBar(arg_bounds: Rectangle, arg_text: [*c][*c]const u8, arg_count: c_int, arg_active: [*c]c_int) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var count = arg_count;
    _ = &count;
    var active = arg_active;
    _ = &active;
    var result: c_int = -@as(c_int, 1);
    _ = &result;
    var tabBounds: Rectangle = Rectangle{
        .x = bounds.x,
        .y = bounds.y,
        .width = @as(f32, @floatFromInt(@as(c_int, 160))),
        .height = bounds.height,
    };
    _ = &tabBounds;
    if (active.* < @as(c_int, 0)) {
        active.* = 0;
    } else if (active.* > (count - @as(c_int, 1))) {
        active.* = count - @as(c_int, 1);
    }
    var offsetX: c_int = 0;
    _ = &offsetX;
    offsetX = ((active.* + @as(c_int, 2)) * @as(c_int, 160)) - GetScreenWidth();
    if (offsetX < @as(c_int, 0)) {
        offsetX = 0;
    }
    var toggle: bool = @as(c_int, 0) != 0;
    _ = &toggle;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < count) : (i += 1) {
            tabBounds.x = (bounds.x + @as(f32, @floatFromInt((@as(c_int, 160) + @as(c_int, 4)) * i))) - @as(f32, @floatFromInt(offsetX));
            if (tabBounds.x < @as(f32, @floatFromInt(GetScreenWidth()))) {
                var textAlignment: c_int = GuiGetStyle(TOGGLE, TEXT_ALIGNMENT);
                _ = &textAlignment;
                var textPadding: c_int = GuiGetStyle(TOGGLE, TEXT_PADDING);
                _ = &textPadding;
                GuiSetStyle(TOGGLE, TEXT_ALIGNMENT, TEXT_ALIGN_LEFT);
                GuiSetStyle(TOGGLE, TEXT_PADDING, @as(c_int, 8));
                if (i == active.*) {
                    toggle = @as(c_int, 1) != 0;
                    _ = GuiToggle(tabBounds, GuiIconText(@as(c_int, 12), (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*), &toggle);
                } else {
                    toggle = @as(c_int, 0) != 0;
                    _ = GuiToggle(tabBounds, GuiIconText(@as(c_int, 12), (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*), &toggle);
                    if (toggle) {
                        active.* = i;
                    }
                }
                GuiSetStyle(TOGGLE, TEXT_PADDING, textPadding);
                GuiSetStyle(TOGGLE, TEXT_ALIGNMENT, textAlignment);
                var tempBorderWidth: c_int = GuiGetStyle(BUTTON, BORDER_WIDTH);
                _ = &tempBorderWidth;
                var tempTextAlignment: c_int = GuiGetStyle(BUTTON, TEXT_ALIGNMENT);
                _ = &tempTextAlignment;
                GuiSetStyle(BUTTON, BORDER_WIDTH, @as(c_int, 1));
                GuiSetStyle(BUTTON, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
                if (GuiButton(Rectangle{
                    .x = ((tabBounds.x + tabBounds.width) - @as(f32, @floatFromInt(@as(c_int, 14)))) - @as(f32, @floatFromInt(@as(c_int, 5))),
                    .y = tabBounds.y + @as(f32, @floatFromInt(@as(c_int, 5))),
                    .width = @as(f32, @floatFromInt(@as(c_int, 14))),
                    .height = @as(f32, @floatFromInt(@as(c_int, 14))),
                }, GuiIconText(ICON_CROSS_SMALL, null)) != 0) {
                    result = i;
                }
                GuiSetStyle(BUTTON, BORDER_WIDTH, tempBorderWidth);
                GuiSetStyle(BUTTON, TEXT_ALIGNMENT, tempTextAlignment);
            }
        }
    }
    GuiDrawRectangle(Rectangle{
        .x = bounds.x,
        .y = (bounds.y + bounds.height) - @as(f32, @floatFromInt(@as(c_int, 1))),
        .width = bounds.width,
        .height = @as(f32, @floatFromInt(@as(c_int, 1))),
    }, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, BORDER_COLOR_NORMAL)))));
    return result;
}
pub export fn GuiScrollPanel(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_content: Rectangle, arg_scroll: [*c]Vector2, arg_view: [*c]Rectangle) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var content = arg_content;
    _ = &content;
    var scroll = arg_scroll;
    _ = &scroll;
    var view = arg_view;
    _ = &view;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var mouseWheelSpeed: f32 = 20.0;
    _ = &mouseWheelSpeed;
    var temp: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &temp;
    if (view == @as([*c]Rectangle, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        view = &temp;
    }
    var scrollPos: Vector2 = Vector2{
        .x = 0.0,
        .y = 0.0,
    };
    _ = &scrollPos;
    if (scroll != @as([*c]Vector2, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        scrollPos = scroll.*;
    }
    var statusBar: Rectangle = Rectangle{
        .x = bounds.x,
        .y = bounds.y,
        .width = bounds.width,
        .height = @as(f32, @floatFromInt(@as(c_int, 24))),
    };
    _ = &statusBar;
    if (bounds.height < (@as(f32, @floatFromInt(@as(c_int, 24))) * 2.0)) {
        bounds.height = @as(f32, @floatFromInt(@as(c_int, 24))) * 2.0;
    }
    if (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        bounds.y += @as(f32, @floatFromInt(@as(c_int, 24))) - @as(f32, @floatFromInt(@as(c_int, 1)));
        bounds.height -= @as(f32, @floatFromInt(@as(c_int, 24))) + @as(f32, @floatFromInt(@as(c_int, 1)));
    }
    var hasHorizontalScrollBar: bool = (if (content.width > (bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH))))) @as(c_int, 1) else @as(c_int, 0)) != 0;
    _ = &hasHorizontalScrollBar;
    var hasVerticalScrollBar: bool = (if (content.height > (bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH))))) @as(c_int, 1) else @as(c_int, 0)) != 0;
    _ = &hasVerticalScrollBar;
    if (!hasHorizontalScrollBar) {
        hasHorizontalScrollBar = (if ((@as(c_int, @intFromBool(hasVerticalScrollBar)) != 0) and (content.width > ((bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, SCROLLBAR_WIDTH)))))) @as(c_int, 1) else @as(c_int, 0)) != 0;
    }
    if (!hasVerticalScrollBar) {
        hasVerticalScrollBar = (if ((@as(c_int, @intFromBool(hasHorizontalScrollBar)) != 0) and (content.height > ((bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, SCROLLBAR_WIDTH)))))) @as(c_int, 1) else @as(c_int, 0)) != 0;
    }
    var horizontalScrollBarWidth: c_int = if (@as(c_int, @intFromBool(hasHorizontalScrollBar)) != 0) GuiGetStyle(LISTVIEW, SCROLLBAR_WIDTH) else @as(c_int, 0);
    _ = &horizontalScrollBarWidth;
    var verticalScrollBarWidth: c_int = if (@as(c_int, @intFromBool(hasVerticalScrollBar)) != 0) GuiGetStyle(LISTVIEW, SCROLLBAR_WIDTH) else @as(c_int, 0);
    _ = &verticalScrollBarWidth;
    var horizontalScrollBar: Rectangle = Rectangle{
        .x = (if (GuiGetStyle(LISTVIEW, SCROLLBAR_SIDE) == @as(c_int, 0)) bounds.x + @as(f32, @floatFromInt(verticalScrollBarWidth)) else bounds.x) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .y = ((bounds.y + bounds.height) - @as(f32, @floatFromInt(horizontalScrollBarWidth))) - @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .width = (bounds.width - @as(f32, @floatFromInt(verticalScrollBarWidth))) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .height = @as(f32, @floatFromInt(horizontalScrollBarWidth)),
    };
    _ = &horizontalScrollBar;
    var verticalScrollBar: Rectangle = Rectangle{
        .x = if (GuiGetStyle(LISTVIEW, SCROLLBAR_SIDE) == @as(c_int, 0)) bounds.x + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))) else ((bounds.x + bounds.width) - @as(f32, @floatFromInt(verticalScrollBarWidth))) - @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .y = bounds.y + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .width = @as(f32, @floatFromInt(verticalScrollBarWidth)),
        .height = (bounds.height - @as(f32, @floatFromInt(horizontalScrollBarWidth))) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH))),
    };
    _ = &verticalScrollBar;
    if (horizontalScrollBar.width < @as(f32, @floatFromInt(@as(c_int, 40)))) {
        horizontalScrollBar.width = 40;
        mouseWheelSpeed = 30.0;
    }
    if (verticalScrollBar.height < @as(f32, @floatFromInt(@as(c_int, 40)))) {
        verticalScrollBar.height = 40;
        mouseWheelSpeed = 30.0;
    }
    view.* = if (GuiGetStyle(LISTVIEW, SCROLLBAR_SIDE) == @as(c_int, 0)) Rectangle{
        .x = (bounds.x + @as(f32, @floatFromInt(verticalScrollBarWidth))) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .y = bounds.y + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .width = (bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - @as(f32, @floatFromInt(verticalScrollBarWidth)),
        .height = (bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - @as(f32, @floatFromInt(horizontalScrollBarWidth)),
    } else Rectangle{
        .x = bounds.x + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .y = bounds.y + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        .width = (bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - @as(f32, @floatFromInt(verticalScrollBarWidth)),
        .height = (bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - @as(f32, @floatFromInt(horizontalScrollBarWidth)),
    };
    if (view.*.width > content.width) {
        view.*.width = content.width;
    }
    if (view.*.height > content.height) {
        view.*.height = content.height;
    }
    var horizontalMin: f32 = if (@as(c_int, @intFromBool(hasHorizontalScrollBar)) != 0) (if (GuiGetStyle(LISTVIEW, SCROLLBAR_SIDE) == @as(c_int, 0)) @as(f32, @floatFromInt(-verticalScrollBarWidth)) else @as(f32, @floatFromInt(@as(c_int, 0)))) - @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))) else (if (@as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, SCROLLBAR_SIDE))) == @as(f32, @floatFromInt(@as(c_int, 0)))) @as(f32, @floatFromInt(-verticalScrollBarWidth)) else @as(f32, @floatFromInt(@as(c_int, 0)))) - @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH)));
    _ = &horizontalMin;
    var horizontalMax: f32 = if (@as(c_int, @intFromBool(hasHorizontalScrollBar)) != 0) (((content.width - bounds.width) + @as(f32, @floatFromInt(verticalScrollBarWidth))) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - (if (@as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, SCROLLBAR_SIDE))) == @as(f32, @floatFromInt(@as(c_int, 0)))) @as(f32, @floatFromInt(verticalScrollBarWidth)) else @as(f32, @floatFromInt(@as(c_int, 0)))) else @as(f32, @floatFromInt(-GuiGetStyle(DEFAULT, BORDER_WIDTH)));
    _ = &horizontalMax;
    var verticalMin: f32 = if (@as(c_int, @intFromBool(hasVerticalScrollBar)) != 0) 0.0 else -1.0;
    _ = &verticalMin;
    var verticalMax: f32 = if (@as(c_int, @intFromBool(hasVerticalScrollBar)) != 0) ((content.height - bounds.height) + @as(f32, @floatFromInt(horizontalScrollBarWidth))) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH))) else @as(f32, @floatFromInt(-GuiGetStyle(DEFAULT, BORDER_WIDTH)));
    _ = &verticalMax;
    if ((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
            var wheelMove: f32 = GetMouseWheelMove();
            _ = &wheelMove;
            if ((@as(c_int, @intFromBool(hasHorizontalScrollBar)) != 0) and ((@as(c_int, @intFromBool(IsKeyDown(KEY_LEFT_CONTROL))) != 0) or (@as(c_int, @intFromBool(IsKeyDown(KEY_LEFT_SHIFT))) != 0))) {
                scrollPos.x += wheelMove * mouseWheelSpeed;
            } else {
                scrollPos.y += wheelMove * mouseWheelSpeed;
            }
        }
    }
    if (scrollPos.x > -horizontalMin) {
        scrollPos.x = -horizontalMin;
    }
    if (scrollPos.x < -horizontalMax) {
        scrollPos.x = -horizontalMax;
    }
    if (scrollPos.y > -verticalMin) {
        scrollPos.y = -verticalMin;
    }
    if (scrollPos.y < -verticalMax) {
        scrollPos.y = -verticalMax;
    }
    if (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = GuiStatusBar(statusBar, text);
    }
    GuiDrawRectangle(bounds, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, BACKGROUND_COLOR)))));
    const slider: c_int = GuiGetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE);
    _ = &slider;
    if (hasHorizontalScrollBar) {
        GuiSetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE, @as(c_int, @intFromFloat((((bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - @as(f32, @floatFromInt(verticalScrollBarWidth))) / @as(f32, @floatFromInt(@as(c_int, @intFromFloat(content.width))))) * @as(f32, @floatFromInt((@as(c_int, @intFromFloat(bounds.width)) - (@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH))) - verticalScrollBarWidth)))));
        scrollPos.x = @as(f32, @floatFromInt(-GuiScrollBar(horizontalScrollBar, @as(c_int, @intFromFloat(-scrollPos.x)), @as(c_int, @intFromFloat(horizontalMin)), @as(c_int, @intFromFloat(horizontalMax)))));
    } else {
        scrollPos.x = 0.0;
    }
    if (hasVerticalScrollBar) {
        GuiSetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE, @as(c_int, @intFromFloat((((bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH)))) - @as(f32, @floatFromInt(horizontalScrollBarWidth))) / @as(f32, @floatFromInt(@as(c_int, @intFromFloat(content.height))))) * @as(f32, @floatFromInt((@as(c_int, @intFromFloat(bounds.height)) - (@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH))) - horizontalScrollBarWidth)))));
        scrollPos.y = @as(f32, @floatFromInt(-GuiScrollBar(verticalScrollBar, @as(c_int, @intFromFloat(-scrollPos.y)), @as(c_int, @intFromFloat(verticalMin)), @as(c_int, @intFromFloat(verticalMax)))));
    } else {
        scrollPos.y = 0.0;
    }
    if ((@as(c_int, @intFromBool(hasHorizontalScrollBar)) != 0) and (@as(c_int, @intFromBool(hasVerticalScrollBar)) != 0)) {
        var corner: Rectangle = Rectangle{
            .x = if (GuiGetStyle(LISTVIEW, SCROLLBAR_SIDE) == @as(c_int, 0)) (bounds.x + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH)))) + @as(f32, @floatFromInt(@as(c_int, 2))) else (horizontalScrollBar.x + horizontalScrollBar.width) + @as(f32, @floatFromInt(@as(c_int, 2))),
            .y = (verticalScrollBar.y + verticalScrollBar.height) + @as(f32, @floatFromInt(@as(c_int, 2))),
            .width = @as(f32, @floatFromInt(horizontalScrollBarWidth)) - @as(f32, @floatFromInt(@as(c_int, 4))),
            .height = @as(f32, @floatFromInt(verticalScrollBarWidth)) - @as(f32, @floatFromInt(@as(c_int, 4))),
        };
        _ = &corner;
        GuiDrawRectangle(corner, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    }
    GuiDrawRectangle(bounds, GuiGetStyle(DEFAULT, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    });
    GuiSetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE, slider);
    if (scroll != @as([*c]Vector2, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        scroll.* = scrollPos;
    }
    return result;
}
pub export fn GuiLabel(arg_bounds: Rectangle, arg_text: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    GuiDrawText(text, GetTextBounds(LABEL, bounds), GuiGetStyle(LABEL, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LABEL, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    return result;
}
pub export fn GuiButton(arg_bounds: Rectangle, arg_text: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
            if (IsMouseButtonReleased(MOUSE_BUTTON_LEFT)) {
                result = 1;
            }
        }
    }
    GuiDrawRectangle(bounds, GuiGetStyle(BUTTON, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(BUTTON, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(BUTTON, @as(c_int, @bitCast(@as(c_uint, @bitCast(BASE)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    GuiDrawText(text, GetTextBounds(BUTTON, bounds), GuiGetStyle(BUTTON, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(BUTTON, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    if (state == @as(c_uint, @bitCast(STATE_FOCUSED))) {
        GuiTooltip(bounds);
    }
    return result;
}
pub export fn GuiLabelButton(arg_bounds: Rectangle, arg_text: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var state: GuiState = guiState;
    _ = &state;
    var pressed: bool = @as(c_int, 0) != 0;
    _ = &pressed;
    var textWidth: f32 = @as(f32, @floatFromInt(GetTextWidth(text)));
    _ = &textWidth;
    if (((bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(LABEL, BORDER_WIDTH)))) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(LABEL, TEXT_PADDING)))) < textWidth) {
        bounds.width = ((textWidth + @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(LABEL, BORDER_WIDTH)))) + @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(LABEL, TEXT_PADDING)))) + @as(f32, @floatFromInt(@as(c_int, 2)));
    }
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
            if (IsMouseButtonReleased(MOUSE_BUTTON_LEFT)) {
                pressed = @as(c_int, 1) != 0;
            }
        }
    }
    GuiDrawText(text, GetTextBounds(LABEL, bounds), GuiGetStyle(LABEL, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LABEL, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    return @as(c_int, @intFromBool(pressed));
}
pub export fn GuiToggle(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_active: [*c]bool) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var active = arg_active;
    _ = &active;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var temp: bool = @as(c_int, 0) != 0;
    _ = &temp;
    if (active == @as([*c]bool, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        active = &temp;
    }
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else if (IsMouseButtonReleased(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_NORMAL));
                active.* = !active.*;
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
    }
    if (state == @as(c_uint, @bitCast(STATE_NORMAL))) {
        GuiDrawRectangle(bounds, GuiGetStyle(TOGGLE, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, @as(c_int, @bitCast(if (@as(c_int, @intFromBool(active.*)) != 0) @as(c_uint, @bitCast(BORDER_COLOR_PRESSED)) else @as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, @as(c_int, @bitCast(if (@as(c_int, @intFromBool(active.*)) != 0) @as(c_uint, @bitCast(BASE_COLOR_PRESSED)) else @as(c_uint, @bitCast(BASE)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
        GuiDrawText(text, GetTextBounds(TOGGLE, bounds), GuiGetStyle(TOGGLE, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, @as(c_int, @bitCast(if (@as(c_int, @intFromBool(active.*)) != 0) @as(c_uint, @bitCast(TEXT_COLOR_PRESSED)) else @as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    } else {
        GuiDrawRectangle(bounds, GuiGetStyle(TOGGLE, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, @as(c_int, @bitCast(@as(c_uint, @bitCast(BASE)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
        GuiDrawText(text, GetTextBounds(TOGGLE, bounds), GuiGetStyle(TOGGLE, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    }
    if (state == @as(c_uint, @bitCast(STATE_FOCUSED))) {
        GuiTooltip(bounds);
    }
    return result;
}
pub export fn GuiToggleGroup(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_active: [*c]c_int) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var active = arg_active;
    _ = &active;
    var result: c_int = 0;
    _ = &result;
    var initBoundsX: f32 = bounds.x;
    _ = &initBoundsX;
    var temp: c_int = 0;
    _ = &temp;
    if (active == @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        active = &temp;
    }
    var toggle: bool = @as(c_int, 0) != 0;
    _ = &toggle;
    var rows: [32]c_int = [1]c_int{
        0,
    } ++ [1]c_int{0} ** 31;
    _ = &rows;
    var itemCount: c_int = 0;
    _ = &itemCount;
    var items: [*c][*c]const u8 = GuiTextSplit(text, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ';'))))), &itemCount, @as([*c]c_int, @ptrCast(@alignCast(&rows))));
    _ = &items;
    var prevRow: c_int = rows[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &prevRow;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < itemCount) : (i += 1) {
            if (prevRow != rows[@as(c_uint, @intCast(i))]) {
                bounds.x = initBoundsX;
                bounds.y += bounds.height + @as(f32, @floatFromInt(GuiGetStyle(TOGGLE, GROUP_PADDING)));
                prevRow = rows[@as(c_uint, @intCast(i))];
            }
            if (i == active.*) {
                toggle = @as(c_int, 1) != 0;
                _ = GuiToggle(bounds, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk items + @as(usize, @intCast(tmp)) else break :blk items - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*, &toggle);
            } else {
                toggle = @as(c_int, 0) != 0;
                _ = GuiToggle(bounds, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk items + @as(usize, @intCast(tmp)) else break :blk items - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*, &toggle);
                if (toggle) {
                    active.* = i;
                }
            }
            bounds.x += bounds.width + @as(f32, @floatFromInt(GuiGetStyle(TOGGLE, GROUP_PADDING)));
        }
    }
    return result;
}
pub export fn GuiToggleSlider(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_active: [*c]c_int) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var active = arg_active;
    _ = &active;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var temp: c_int = 0;
    _ = &temp;
    if (active == @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        active = &temp;
    }
    var itemCount: c_int = 0;
    _ = &itemCount;
    var items: [*c][*c]const u8 = GuiTextSplit(text, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ';'))))), &itemCount, null);
    _ = &items;
    var slider: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(SLIDER, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(SLIDER, SLIDER_PADDING))),
        .width = ((bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SLIDER, BORDER_WIDTH)))) - @as(f32, @floatFromInt((itemCount + @as(c_int, 1)) * GuiGetStyle(SLIDER, SLIDER_PADDING)))) / @as(f32, @floatFromInt(itemCount)),
        .height = (bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SLIDER, BORDER_WIDTH)))) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SLIDER, SLIDER_PADDING))),
    };
    _ = &slider;
    if ((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else if (IsMouseButtonReleased(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
                active.* += 1;
                result = 1;
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
        if ((active.* != 0) and (state != @as(c_uint, @bitCast(STATE_FOCUSED)))) {
            state = @as(c_uint, @bitCast(STATE_PRESSED));
        }
    }
    if (active.* >= itemCount) {
        active.* = 0;
    }
    slider.x = ((bounds.x + @as(f32, @floatFromInt(GuiGetStyle(SLIDER, BORDER_WIDTH)))) + @as(f32, @floatFromInt((active.* + @as(c_int, 1)) * GuiGetStyle(SLIDER, SLIDER_PADDING)))) + (@as(f32, @floatFromInt(active.*)) * slider.width);
    GuiDrawRectangle(bounds, GuiGetStyle(SLIDER, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, BASE_COLOR_NORMAL)))));
    if (state == @as(c_uint, @bitCast(STATE_NORMAL))) {
        GuiDrawRectangle(slider, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, BASE_COLOR_PRESSED)))));
    } else if (state == @as(c_uint, @bitCast(STATE_FOCUSED))) {
        GuiDrawRectangle(slider, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, BASE_COLOR_FOCUSED)))));
    } else if (state == @as(c_uint, @bitCast(STATE_PRESSED))) {
        GuiDrawRectangle(slider, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, BASE_COLOR_PRESSED)))));
    }
    if (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var textBounds: Rectangle = Rectangle{
            .x = @as(f32, @floatFromInt(@as(c_int, 0))),
            .y = 0,
            .width = 0,
            .height = 0,
        };
        _ = &textBounds;
        textBounds.width = @as(f32, @floatFromInt(GetTextWidth(text)));
        textBounds.height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
        textBounds.x = (slider.x + (slider.width / @as(f32, @floatFromInt(@as(c_int, 2))))) - (textBounds.width / @as(f32, @floatFromInt(@as(c_int, 2))));
        textBounds.y = (bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2))));
        GuiDrawText((blk: {
            const tmp = active.*;
            if (tmp >= 0) break :blk items + @as(usize, @intCast(tmp)) else break :blk items - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*, textBounds, GuiGetStyle(TOGGLE, TEXT_ALIGNMENT), Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(TOGGLE, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), guiAlpha));
    }
    return result;
}
pub export fn GuiCheckBox(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_checked: [*c]bool) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var checked = arg_checked;
    _ = &checked;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var temp: bool = @as(c_int, 0) != 0;
    _ = &temp;
    if (checked == @as([*c]bool, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        checked = &temp;
    }
    var textBounds: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &textBounds;
    if (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        textBounds.width = @as(f32, @floatFromInt(GetTextWidth(text))) + @as(f32, @floatFromInt(@as(c_int, 2)));
        textBounds.height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
        textBounds.x = (bounds.x + bounds.width) + @as(f32, @floatFromInt(GuiGetStyle(CHECKBOX, TEXT_PADDING)));
        textBounds.y = (bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2))));
        if (GuiGetStyle(CHECKBOX, TEXT_ALIGNMENT) == TEXT_ALIGN_LEFT) {
            textBounds.x = (bounds.x - textBounds.width) - @as(f32, @floatFromInt(GuiGetStyle(CHECKBOX, TEXT_PADDING)));
        }
    }
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        var totalBounds: Rectangle = Rectangle{
            .x = if (GuiGetStyle(CHECKBOX, TEXT_ALIGNMENT) == TEXT_ALIGN_LEFT) textBounds.x else bounds.x,
            .y = bounds.y,
            .width = (bounds.width + textBounds.width) + @as(f32, @floatFromInt(GuiGetStyle(CHECKBOX, TEXT_PADDING))),
            .height = bounds.height,
        };
        _ = &totalBounds;
        if (CheckCollisionPointRec(mousePoint, totalBounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
            if (IsMouseButtonReleased(MOUSE_BUTTON_LEFT)) {
                checked.* = !checked.*;
            }
        }
    }
    GuiDrawRectangle(bounds, GuiGetStyle(CHECKBOX, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(CHECKBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    });
    if (checked.*) {
        var check: Rectangle = Rectangle{
            .x = (bounds.x + @as(f32, @floatFromInt(GuiGetStyle(CHECKBOX, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(CHECKBOX, CHECK_PADDING))),
            .y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(CHECKBOX, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(CHECKBOX, CHECK_PADDING))),
            .width = bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * (GuiGetStyle(CHECKBOX, BORDER_WIDTH) + GuiGetStyle(CHECKBOX, CHECK_PADDING)))),
            .height = bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * (GuiGetStyle(CHECKBOX, BORDER_WIDTH) + GuiGetStyle(CHECKBOX, CHECK_PADDING)))),
        };
        _ = &check;
        GuiDrawRectangle(check, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(CHECKBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    }
    GuiDrawText(text, textBounds, if (GuiGetStyle(CHECKBOX, TEXT_ALIGNMENT) == TEXT_ALIGN_RIGHT) TEXT_ALIGN_LEFT else TEXT_ALIGN_RIGHT, GetColor(@as(c_uint, @bitCast(GuiGetStyle(LABEL, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    return result;
}
pub export fn GuiComboBox(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_active: [*c]c_int) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var active = arg_active;
    _ = &active;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var temp: c_int = 0;
    _ = &temp;
    if (active == @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        active = &temp;
    }
    bounds.width -= @as(f32, @floatFromInt(GuiGetStyle(COMBOBOX, COMBO_BUTTON_WIDTH) + GuiGetStyle(COMBOBOX, COMBO_BUTTON_SPACING)));
    var selector: Rectangle = Rectangle{
        .x = (bounds.x + bounds.width) + @as(f32, @floatFromInt(GuiGetStyle(COMBOBOX, COMBO_BUTTON_SPACING))),
        .y = bounds.y,
        .width = @as(f32, @floatFromInt(GuiGetStyle(COMBOBOX, COMBO_BUTTON_WIDTH))),
        .height = bounds.height,
    };
    _ = &selector;
    var itemCount: c_int = 0;
    _ = &itemCount;
    var items: [*c][*c]const u8 = GuiTextSplit(text, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ';'))))), &itemCount, null);
    _ = &items;
    if (active.* < @as(c_int, 0)) {
        active.* = 0;
    } else if (active.* > (itemCount - @as(c_int, 1))) {
        active.* = itemCount - @as(c_int, 1);
    }
    if ((((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and (itemCount > @as(c_int, 1))) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if ((@as(c_int, @intFromBool(CheckCollisionPointRec(mousePoint, bounds))) != 0) or (@as(c_int, @intFromBool(CheckCollisionPointRec(mousePoint, selector))) != 0)) {
            if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT)) {
                active.* += @as(c_int, 1);
                if (active.* >= itemCount) {
                    active.* = 0;
                }
            }
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
    }
    GuiDrawRectangle(bounds, GuiGetStyle(COMBOBOX, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(COMBOBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(COMBOBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(BASE)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    GuiDrawText((blk: {
        const tmp = active.*;
        if (tmp >= 0) break :blk items + @as(usize, @intCast(tmp)) else break :blk items - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*, GetTextBounds(COMBOBOX, bounds), GuiGetStyle(COMBOBOX, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(COMBOBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    var tempBorderWidth: c_int = GuiGetStyle(BUTTON, BORDER_WIDTH);
    _ = &tempBorderWidth;
    var tempTextAlign: c_int = GuiGetStyle(BUTTON, TEXT_ALIGNMENT);
    _ = &tempTextAlign;
    GuiSetStyle(BUTTON, BORDER_WIDTH, @as(c_int, 1));
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
    _ = GuiButton(selector, TextFormat("%i/%i", active.* + @as(c_int, 1), itemCount));
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, tempTextAlign);
    GuiSetStyle(BUTTON, BORDER_WIDTH, tempBorderWidth);
    return result;
}
pub export fn GuiDropdownBox(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_active: [*c]c_int, arg_editMode: bool) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var active = arg_active;
    _ = &active;
    var editMode = arg_editMode;
    _ = &editMode;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var itemSelected: c_int = active.*;
    _ = &itemSelected;
    var itemFocused: c_int = -@as(c_int, 1);
    _ = &itemFocused;
    var itemCount: c_int = 0;
    _ = &itemCount;
    var items: [*c][*c]const u8 = GuiTextSplit(text, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ';'))))), &itemCount, null);
    _ = &items;
    var boundsOpen: Rectangle = bounds;
    _ = &boundsOpen;
    boundsOpen.height = @as(f32, @floatFromInt(itemCount + @as(c_int, 1))) * (bounds.height + @as(f32, @floatFromInt(GuiGetStyle(DROPDOWNBOX, DROPDOWN_ITEMS_SPACING))));
    var itemBounds: Rectangle = bounds;
    _ = &itemBounds;
    if ((((state != @as(c_uint, @bitCast(STATE_DISABLED))) and ((@as(c_int, @intFromBool(editMode)) != 0) or !guiLocked)) and (itemCount > @as(c_int, 1))) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (editMode) {
            state = @as(c_uint, @bitCast(STATE_PRESSED));
            if (!CheckCollisionPointRec(mousePoint, boundsOpen)) {
                if ((@as(c_int, @intFromBool(IsMouseButtonPressed(MOUSE_BUTTON_LEFT))) != 0) or (@as(c_int, @intFromBool(IsMouseButtonReleased(MOUSE_BUTTON_LEFT))) != 0)) {
                    result = 1;
                }
            }
            if ((@as(c_int, @intFromBool(CheckCollisionPointRec(mousePoint, bounds))) != 0) and (@as(c_int, @intFromBool(IsMouseButtonPressed(MOUSE_BUTTON_LEFT))) != 0)) {
                result = 1;
            }
            {
                var i: c_int = 0;
                _ = &i;
                while (i < itemCount) : (i += 1) {
                    itemBounds.y += bounds.height + @as(f32, @floatFromInt(GuiGetStyle(DROPDOWNBOX, DROPDOWN_ITEMS_SPACING)));
                    if (CheckCollisionPointRec(mousePoint, itemBounds)) {
                        itemFocused = i;
                        if (IsMouseButtonReleased(MOUSE_BUTTON_LEFT)) {
                            itemSelected = i;
                            result = 1;
                        }
                        break;
                    }
                }
            }
            itemBounds = bounds;
        } else {
            if (CheckCollisionPointRec(mousePoint, bounds)) {
                if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT)) {
                    result = 1;
                    state = @as(c_uint, @bitCast(STATE_PRESSED));
                } else {
                    state = @as(c_uint, @bitCast(STATE_FOCUSED));
                }
            }
        }
    }
    if (editMode) {
        _ = GuiPanel(boundsOpen, null);
    }
    GuiDrawRectangle(bounds, GuiGetStyle(DROPDOWNBOX, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(BASE)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    GuiDrawText((blk: {
        const tmp = itemSelected;
        if (tmp >= 0) break :blk items + @as(usize, @intCast(tmp)) else break :blk items - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*, GetTextBounds(DROPDOWNBOX, bounds), GuiGetStyle(DROPDOWNBOX, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    if (editMode) {
        {
            var i: c_int = 0;
            _ = &i;
            while (i < itemCount) : (i += 1) {
                itemBounds.y += bounds.height + @as(f32, @floatFromInt(GuiGetStyle(DROPDOWNBOX, DROPDOWN_ITEMS_SPACING)));
                if (i == itemSelected) {
                    GuiDrawRectangle(itemBounds, GuiGetStyle(DROPDOWNBOX, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, BORDER_COLOR_PRESSED)))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, BASE_COLOR_PRESSED)))));
                    GuiDrawText((blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk items + @as(usize, @intCast(tmp)) else break :blk items - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, GetTextBounds(DROPDOWNBOX, itemBounds), GuiGetStyle(DROPDOWNBOX, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, TEXT_COLOR_PRESSED)))));
                } else if (i == itemFocused) {
                    GuiDrawRectangle(itemBounds, GuiGetStyle(DROPDOWNBOX, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, BORDER_COLOR_FOCUSED)))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, BASE_COLOR_FOCUSED)))));
                    GuiDrawText((blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk items + @as(usize, @intCast(tmp)) else break :blk items - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, GetTextBounds(DROPDOWNBOX, itemBounds), GuiGetStyle(DROPDOWNBOX, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, TEXT_COLOR_FOCUSED)))));
                } else {
                    GuiDrawText((blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk items + @as(usize, @intCast(tmp)) else break :blk items - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, GetTextBounds(DROPDOWNBOX, itemBounds), GuiGetStyle(DROPDOWNBOX, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, TEXT_COLOR_NORMAL)))));
                }
            }
        }
    }
    GuiDrawText("#120#", Rectangle{
        .x = (bounds.x + bounds.width) - @as(f32, @floatFromInt(GuiGetStyle(DROPDOWNBOX, ARROW_PADDING))),
        .y = (bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@as(c_int, 6))),
        .width = @as(f32, @floatFromInt(@as(c_int, 10))),
        .height = @as(f32, @floatFromInt(@as(c_int, 10))),
    }, TEXT_ALIGN_CENTER, GetColor(@as(c_uint, @bitCast(GuiGetStyle(DROPDOWNBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    active.* = itemSelected;
    return result;
}
pub export fn GuiSpinner(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_value: [*c]c_int, arg_minValue: c_int, arg_maxValue: c_int, arg_editMode: bool) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var value = arg_value;
    _ = &value;
    var minValue = arg_minValue;
    _ = &minValue;
    var maxValue = arg_maxValue;
    _ = &maxValue;
    var editMode = arg_editMode;
    _ = &editMode;
    var result: c_int = 1;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var tempValue: c_int = value.*;
    _ = &tempValue;
    var spinner: Rectangle = Rectangle{
        .x = (bounds.x + @as(f32, @floatFromInt(GuiGetStyle(SPINNER, SPIN_BUTTON_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(SPINNER, SPIN_BUTTON_SPACING))),
        .y = bounds.y,
        .width = bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * (GuiGetStyle(SPINNER, SPIN_BUTTON_WIDTH) + GuiGetStyle(SPINNER, SPIN_BUTTON_SPACING)))),
        .height = bounds.height,
    };
    _ = &spinner;
    var leftButtonBound: Rectangle = Rectangle{
        .x = bounds.x,
        .y = bounds.y,
        .width = @as(f32, @floatFromInt(GuiGetStyle(SPINNER, SPIN_BUTTON_WIDTH))),
        .height = bounds.height,
    };
    _ = &leftButtonBound;
    var rightButtonBound: Rectangle = Rectangle{
        .x = (bounds.x + bounds.width) - @as(f32, @floatFromInt(GuiGetStyle(SPINNER, SPIN_BUTTON_WIDTH))),
        .y = bounds.y,
        .width = @as(f32, @floatFromInt(GuiGetStyle(SPINNER, SPIN_BUTTON_WIDTH))),
        .height = bounds.height,
    };
    _ = &rightButtonBound;
    var textBounds: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &textBounds;
    if (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        textBounds.width = @as(f32, @floatFromInt(GetTextWidth(text))) + @as(f32, @floatFromInt(@as(c_int, 2)));
        textBounds.height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
        textBounds.x = (bounds.x + bounds.width) + @as(f32, @floatFromInt(GuiGetStyle(SPINNER, TEXT_PADDING)));
        textBounds.y = (bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2))));
        if (GuiGetStyle(SPINNER, TEXT_ALIGNMENT) == TEXT_ALIGN_LEFT) {
            textBounds.x = (bounds.x - textBounds.width) - @as(f32, @floatFromInt(GuiGetStyle(SPINNER, TEXT_PADDING)));
        }
    }
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
    }
    if (GuiButton(leftButtonBound, GuiIconText(ICON_ARROW_LEFT_FILL, null)) != 0) {
        tempValue -= 1;
    }
    if (GuiButton(rightButtonBound, GuiIconText(ICON_ARROW_RIGHT_FILL, null)) != 0) {
        tempValue += 1;
    }
    if (!editMode) {
        if (tempValue < minValue) {
            tempValue = minValue;
        }
        if (tempValue > maxValue) {
            tempValue = maxValue;
        }
    }
    result = GuiValueBox(spinner, null, &tempValue, minValue, maxValue, editMode);
    var tempBorderWidth: c_int = GuiGetStyle(BUTTON, BORDER_WIDTH);
    _ = &tempBorderWidth;
    var tempTextAlign: c_int = GuiGetStyle(BUTTON, TEXT_ALIGNMENT);
    _ = &tempTextAlign;
    GuiSetStyle(BUTTON, BORDER_WIDTH, GuiGetStyle(SPINNER, BORDER_WIDTH));
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, tempTextAlign);
    GuiSetStyle(BUTTON, BORDER_WIDTH, tempBorderWidth);
    GuiDrawText(text, textBounds, if (GuiGetStyle(SPINNER, TEXT_ALIGNMENT) == TEXT_ALIGN_RIGHT) TEXT_ALIGN_LEFT else TEXT_ALIGN_RIGHT, GetColor(@as(c_uint, @bitCast(GuiGetStyle(LABEL, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    value.* = tempValue;
    return result;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_stdio.h:47:3: warning: TODO implement function '__builtin___sprintf_chk' in std.zig.c_builtins

// libs/raylib/include/raygui.h:2822:5: warning: unable to translate function, demoted to extern
pub extern fn GuiValueBox(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_value: [*c]c_int, arg_minValue: c_int, arg_maxValue: c_int, arg_editMode: bool) c_int;
pub export fn GuiTextBox(arg_bounds: Rectangle, arg_text: [*c]u8, arg_bufferSize: c_int, arg_editMode: bool) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var bufferSize = arg_bufferSize;
    _ = &bufferSize;
    var editMode = arg_editMode;
    _ = &editMode;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var multiline: bool = @as(c_int, 0) != 0;
    _ = &multiline;
    var wrapMode: c_int = GuiGetStyle(DEFAULT, TEXT_WRAP_MODE);
    _ = &wrapMode;
    var textBounds: Rectangle = GetTextBounds(TEXTBOX, bounds);
    _ = &textBounds;
    var textWidth: c_int = GetTextWidth(text) - GetTextWidth(text + @as(usize, @bitCast(@as(isize, @intCast(textBoxCursorIndex)))));
    _ = &textWidth;
    var textIndexOffset: c_int = 0;
    _ = &textIndexOffset;
    var cursor: Rectangle = Rectangle{
        .x = (textBounds.x + @as(f32, @floatFromInt(textWidth))) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SPACING))),
        .y = (textBounds.y + (textBounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))),
        .width = @as(f32, @floatFromInt(@as(c_int, 2))),
        .height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))) * @as(f32, @floatFromInt(@as(c_int, 2))),
    };
    _ = &cursor;
    if (cursor.height >= bounds.height) {
        cursor.height = bounds.height - @as(f32, @floatFromInt(GuiGetStyle(TEXTBOX, BORDER_WIDTH) * @as(c_int, 2)));
    }
    if (cursor.y < (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(TEXTBOX, BORDER_WIDTH))))) {
        cursor.y = bounds.y + @as(f32, @floatFromInt(GuiGetStyle(TEXTBOX, BORDER_WIDTH)));
    }
    var mouseCursor: Rectangle = cursor;
    _ = &mouseCursor;
    mouseCursor.x = @as(f32, @floatFromInt(-@as(c_int, 1)));
    mouseCursor.width = 1;
    if ((((((@as(c_int, @intFromBool(IsKeyDown(KEY_LEFT))) != 0) or (@as(c_int, @intFromBool(IsKeyDown(KEY_RIGHT))) != 0)) or (@as(c_int, @intFromBool(IsKeyDown(KEY_UP))) != 0)) or (@as(c_int, @intFromBool(IsKeyDown(KEY_DOWN))) != 0)) or (@as(c_int, @intFromBool(IsKeyDown(KEY_BACKSPACE))) != 0)) or (@as(c_int, @intFromBool(IsKeyDown(KEY_DELETE))) != 0)) {
        autoCursorCooldownCounter += 1;
    } else {
        autoCursorCooldownCounter = 0;
        autoCursorDelayCounter = 0;
    }
    if (((((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !(GuiGetStyle(TEXTBOX, TEXT_READONLY) != 0)) and !guiLocked) and !guiSliderDragging) and (wrapMode == TEXT_WRAP_NONE)) {
        var mousePosition: Vector2 = GetMousePosition();
        _ = &mousePosition;
        if (editMode) {
            state = @as(c_uint, @bitCast(STATE_PRESSED));
            while (@as(f32, @floatFromInt(textWidth)) >= textBounds.width) {
                var nextCodepointSize: c_int = 0;
                _ = &nextCodepointSize;
                _ = GetCodepointNext(text + @as(usize, @bitCast(@as(isize, @intCast(textIndexOffset)))), &nextCodepointSize);
                textIndexOffset += nextCodepointSize;
                textWidth = GetTextWidth(text + @as(usize, @bitCast(@as(isize, @intCast(textIndexOffset))))) - GetTextWidth(text + @as(usize, @bitCast(@as(isize, @intCast(textBoxCursorIndex)))));
            }
            var textLength: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(strlen(text)))));
            _ = &textLength;
            var codepoint: c_int = GetCharPressed();
            _ = &codepoint;
            if ((@as(c_int, @intFromBool(multiline)) != 0) and (@as(c_int, @intFromBool(IsKeyPressed(KEY_ENTER))) != 0)) {
                codepoint = @as(c_int, '\n');
            }
            if (textBoxCursorIndex > textLength) {
                textBoxCursorIndex = textLength;
            }
            var codepointSize: c_int = 0;
            _ = &codepointSize;
            var charEncoded: [*c]const u8 = CodepointToUTF8(codepoint, &codepointSize);
            _ = &charEncoded;
            if ((((@as(c_int, @intFromBool(multiline)) != 0) and (codepoint == @as(c_int, '\n'))) or (codepoint >= @as(c_int, 32))) and ((textLength + codepointSize) < bufferSize)) {
                {
                    var i: c_int = textLength + codepointSize;
                    _ = &i;
                    while (i > textBoxCursorIndex) : (i -= 1) {
                        (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = i - codepointSize;
                            if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*;
                    }
                }
                {
                    var i: c_int = 0;
                    _ = &i;
                    while (i < codepointSize) : (i += 1) {
                        (blk: {
                            const tmp = textBoxCursorIndex + i;
                            if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk charEncoded + @as(usize, @intCast(tmp)) else break :blk charEncoded - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*;
                    }
                }
                textBoxCursorIndex += codepointSize;
                textLength += codepointSize;
                (blk: {
                    const tmp = textLength;
                    if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).* = '\x00';
            }
            if ((textLength > @as(c_int, 0)) and (@as(c_int, @intFromBool(IsKeyPressed(KEY_HOME))) != 0)) {
                textBoxCursorIndex = 0;
            }
            if ((textLength > textBoxCursorIndex) and (@as(c_int, @intFromBool(IsKeyPressed(KEY_END))) != 0)) {
                textBoxCursorIndex = textLength;
            }
            if ((textLength > textBoxCursorIndex) and ((@as(c_int, @intFromBool(IsKeyPressed(KEY_DELETE))) != 0) or ((@as(c_int, @intFromBool(IsKeyDown(KEY_DELETE))) != 0) and (autoCursorCooldownCounter >= @as(c_int, 40))))) {
                autoCursorDelayCounter += 1;
                if ((@as(c_int, @intFromBool(IsKeyPressed(KEY_DELETE))) != 0) or (@import("std").zig.c_translation.signedRemainder(autoCursorDelayCounter, @as(c_int, 1)) == @as(c_int, 0))) {
                    var nextCodepointSize: c_int = 0;
                    _ = &nextCodepointSize;
                    _ = GetCodepointNext(text + @as(usize, @bitCast(@as(isize, @intCast(textBoxCursorIndex)))), &nextCodepointSize);
                    {
                        var i: c_int = textBoxCursorIndex;
                        _ = &i;
                        while (i < textLength) : (i += 1) {
                            (blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).* = (blk: {
                                const tmp = i + nextCodepointSize;
                                if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*;
                        }
                    }
                    textLength -= codepointSize;
                    (blk: {
                        const tmp = textLength;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* = '\x00';
                }
            }
            if ((textLength > @as(c_int, 0)) and ((@as(c_int, @intFromBool(IsKeyPressed(KEY_BACKSPACE))) != 0) or ((@as(c_int, @intFromBool(IsKeyDown(KEY_BACKSPACE))) != 0) and (autoCursorCooldownCounter >= @as(c_int, 40))))) {
                autoCursorDelayCounter += 1;
                if ((@as(c_int, @intFromBool(IsKeyPressed(KEY_BACKSPACE))) != 0) or (@import("std").zig.c_translation.signedRemainder(autoCursorDelayCounter, @as(c_int, 1)) == @as(c_int, 0))) {
                    var prevCodepointSize: c_int = 0;
                    _ = &prevCodepointSize;
                    _ = GetCodepointPrevious(text + @as(usize, @bitCast(@as(isize, @intCast(textBoxCursorIndex)))), &prevCodepointSize);
                    {
                        var i: c_int = textBoxCursorIndex - prevCodepointSize;
                        _ = &i;
                        while (i < textLength) : (i += 1) {
                            (blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).* = (blk: {
                                const tmp = i + prevCodepointSize;
                                if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*;
                        }
                    }
                    if (textBoxCursorIndex > @as(c_int, 0)) {
                        textBoxCursorIndex -= codepointSize;
                        textLength -= codepointSize;
                    }
                    (blk: {
                        const tmp = textLength;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* = '\x00';
                }
            }
            if ((@as(c_int, @intFromBool(IsKeyPressed(KEY_LEFT))) != 0) or ((@as(c_int, @intFromBool(IsKeyDown(KEY_LEFT))) != 0) and (autoCursorCooldownCounter > @as(c_int, 40)))) {
                autoCursorDelayCounter += 1;
                if ((@as(c_int, @intFromBool(IsKeyPressed(KEY_LEFT))) != 0) or (@import("std").zig.c_translation.signedRemainder(autoCursorDelayCounter, @as(c_int, 1)) == @as(c_int, 0))) {
                    var prevCodepointSize: c_int = 0;
                    _ = &prevCodepointSize;
                    _ = GetCodepointPrevious(text + @as(usize, @bitCast(@as(isize, @intCast(textBoxCursorIndex)))), &prevCodepointSize);
                    if (textBoxCursorIndex >= prevCodepointSize) {
                        textBoxCursorIndex -= prevCodepointSize;
                    }
                }
            } else if ((@as(c_int, @intFromBool(IsKeyPressed(KEY_RIGHT))) != 0) or ((@as(c_int, @intFromBool(IsKeyDown(KEY_RIGHT))) != 0) and (autoCursorCooldownCounter > @as(c_int, 40)))) {
                autoCursorDelayCounter += 1;
                if ((@as(c_int, @intFromBool(IsKeyPressed(KEY_RIGHT))) != 0) or (@import("std").zig.c_translation.signedRemainder(autoCursorDelayCounter, @as(c_int, 1)) == @as(c_int, 0))) {
                    var nextCodepointSize: c_int = 0;
                    _ = &nextCodepointSize;
                    _ = GetCodepointNext(text + @as(usize, @bitCast(@as(isize, @intCast(textBoxCursorIndex)))), &nextCodepointSize);
                    if ((textBoxCursorIndex + nextCodepointSize) <= textLength) {
                        textBoxCursorIndex += nextCodepointSize;
                    }
                }
            }
            if (CheckCollisionPointRec(mousePosition, textBounds)) {
                var scaleFactor: f32 = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))) / @as(f32, @floatFromInt(guiFont.baseSize));
                _ = &scaleFactor;
                var codepoint_1: c_int = 0;
                _ = &codepoint_1;
                var codepointSize_2: c_int = 0;
                _ = &codepointSize_2;
                var codepointIndex: c_int = 0;
                _ = &codepointIndex;
                var glyphWidth: f32 = 0.0;
                _ = &glyphWidth;
                var widthToMouseX: f32 = 0;
                _ = &widthToMouseX;
                var mouseCursorIndex: c_int = 0;
                _ = &mouseCursorIndex;
                {
                    var i: c_int = textIndexOffset;
                    _ = &i;
                    while (i < textLength) : (i += 1) {
                        codepoint_1 = GetCodepointNext(&(blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*, &codepointSize_2);
                        codepointIndex = GetGlyphIndex(guiFont, codepoint_1);
                        if ((blk: {
                            const tmp = codepointIndex;
                            if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*.advanceX == @as(c_int, 0)) {
                            glyphWidth = (blk: {
                                const tmp = codepointIndex;
                                if (tmp >= 0) break :blk guiFont.recs + @as(usize, @intCast(tmp)) else break :blk guiFont.recs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.width * scaleFactor;
                        } else {
                            glyphWidth = @as(f32, @floatFromInt((blk: {
                                const tmp = codepointIndex;
                                if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.advanceX)) * scaleFactor;
                        }
                        if (mousePosition.x <= (textBounds.x + (widthToMouseX + (glyphWidth / @as(f32, @floatFromInt(@as(c_int, 2))))))) {
                            mouseCursor.x = textBounds.x + widthToMouseX;
                            mouseCursorIndex = i;
                            break;
                        }
                        widthToMouseX += glyphWidth + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SPACING)));
                    }
                }
                var textEndWidth: c_int = GetTextWidth(text + @as(usize, @bitCast(@as(isize, @intCast(textIndexOffset)))));
                _ = &textEndWidth;
                if (GetMousePosition().x >= ((textBounds.x + @as(f32, @floatFromInt(textEndWidth))) - (glyphWidth / @as(f32, @floatFromInt(@as(c_int, 2)))))) {
                    mouseCursor.x = textBounds.x + @as(f32, @floatFromInt(textEndWidth));
                    mouseCursorIndex = @as(c_int, @bitCast(@as(c_uint, @truncate(strlen(text)))));
                }
                if ((mouseCursor.x >= @as(f32, @floatFromInt(@as(c_int, 0)))) and (@as(c_int, @intFromBool(IsMouseButtonPressed(MOUSE_BUTTON_LEFT))) != 0)) {
                    cursor.x = mouseCursor.x;
                    textBoxCursorIndex = mouseCursorIndex;
                }
            } else {
                mouseCursor.x = @as(f32, @floatFromInt(-@as(c_int, 1)));
            }
            cursor.x = (((bounds.x + @as(f32, @floatFromInt(GuiGetStyle(TEXTBOX, TEXT_PADDING)))) + @as(f32, @floatFromInt(GetTextWidth(text + @as(usize, @bitCast(@as(isize, @intCast(textIndexOffset)))))))) - @as(f32, @floatFromInt(GetTextWidth(text + @as(usize, @bitCast(@as(isize, @intCast(textBoxCursorIndex)))))))) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SPACING)));
            if ((!multiline and (@as(c_int, @intFromBool(IsKeyPressed(KEY_ENTER))) != 0)) or (!CheckCollisionPointRec(mousePosition, bounds) and (@as(c_int, @intFromBool(IsMouseButtonPressed(MOUSE_BUTTON_LEFT))) != 0))) {
                textBoxCursorIndex = 0;
                result = 1;
            }
        } else {
            if (CheckCollisionPointRec(mousePosition, bounds)) {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
                if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT)) {
                    textBoxCursorIndex = @as(c_int, @bitCast(@as(c_uint, @truncate(strlen(text)))));
                    result = 1;
                }
            }
        }
    }
    if (state == @as(c_uint, @bitCast(STATE_PRESSED))) {
        GuiDrawRectangle(bounds, GuiGetStyle(TEXTBOX, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TEXTBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TEXTBOX, BASE_COLOR_PRESSED)))));
    } else if (state == @as(c_uint, @bitCast(STATE_DISABLED))) {
        GuiDrawRectangle(bounds, GuiGetStyle(TEXTBOX, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TEXTBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TEXTBOX, BASE_COLOR_DISABLED)))));
    } else {
        GuiDrawRectangle(bounds, GuiGetStyle(TEXTBOX, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TEXTBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        });
    }
    GuiDrawText(text + @as(usize, @bitCast(@as(isize, @intCast(textIndexOffset)))), textBounds, GuiGetStyle(TEXTBOX, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(TEXTBOX, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    if ((@as(c_int, @intFromBool(editMode)) != 0) and !(GuiGetStyle(TEXTBOX, TEXT_READONLY) != 0)) {
        GuiDrawRectangle(cursor, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(TEXTBOX, BORDER_COLOR_PRESSED)))));
        if (mouseCursor.x >= @as(f32, @floatFromInt(@as(c_int, 0)))) {
            GuiDrawRectangle(mouseCursor, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(TEXTBOX, BORDER_COLOR_PRESSED)))));
        }
    } else if (state == @as(c_uint, @bitCast(STATE_FOCUSED))) {
        GuiTooltip(bounds);
    }
    return result;
}
pub export fn GuiSlider(arg_bounds: Rectangle, arg_textLeft: [*c]const u8, arg_textRight: [*c]const u8, arg_value: [*c]f32, arg_minValue: f32, arg_maxValue: f32) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var textLeft = arg_textLeft;
    _ = &textLeft;
    var textRight = arg_textRight;
    _ = &textRight;
    var value = arg_value;
    _ = &value;
    var minValue = arg_minValue;
    _ = &minValue;
    var maxValue = arg_maxValue;
    _ = &maxValue;
    return GuiSliderPro(bounds, textLeft, textRight, value, minValue, maxValue, GuiGetStyle(SLIDER, SLIDER_WIDTH));
}
pub export fn GuiSliderBar(arg_bounds: Rectangle, arg_textLeft: [*c]const u8, arg_textRight: [*c]const u8, arg_value: [*c]f32, arg_minValue: f32, arg_maxValue: f32) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var textLeft = arg_textLeft;
    _ = &textLeft;
    var textRight = arg_textRight;
    _ = &textRight;
    var value = arg_value;
    _ = &value;
    var minValue = arg_minValue;
    _ = &minValue;
    var maxValue = arg_maxValue;
    _ = &maxValue;
    return GuiSliderPro(bounds, textLeft, textRight, value, minValue, maxValue, @as(c_int, 0));
}
pub export fn GuiProgressBar(arg_bounds: Rectangle, arg_textLeft: [*c]const u8, arg_textRight: [*c]const u8, arg_value: [*c]f32, arg_minValue: f32, arg_maxValue: f32) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var textLeft = arg_textLeft;
    _ = &textLeft;
    var textRight = arg_textRight;
    _ = &textRight;
    var value = arg_value;
    _ = &value;
    var minValue = arg_minValue;
    _ = &minValue;
    var maxValue = arg_maxValue;
    _ = &maxValue;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var temp: f32 = (maxValue - minValue) / 2.0;
    _ = &temp;
    if (value == @as([*c]f32, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        value = &temp;
    }
    var progress: Rectangle = Rectangle{
        .x = bounds.x + @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
        .y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, PROGRESS_PADDING))),
        .width = @as(f32, @floatFromInt(@as(c_int, 0))),
        .height = (bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(PROGRESSBAR, BORDER_WIDTH)))) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(PROGRESSBAR, PROGRESS_PADDING))),
    };
    _ = &progress;
    if (value.* > maxValue) {
        value.* = maxValue;
    }
    if (state != @as(c_uint, @bitCast(STATE_DISABLED))) {
        progress.width = ((value.* / (maxValue - minValue)) * bounds.width) - (if (value.* >= maxValue) @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))) else 0.0);
    }
    if (state == @as(c_uint, @bitCast(STATE_DISABLED))) {
        GuiDrawRectangle(bounds, GuiGetStyle(PROGRESSBAR, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        });
    } else {
        if (value.* > minValue) {
            GuiDrawRectangle(Rectangle{
                .x = bounds.x,
                .y = bounds.y,
                .width = @as(f32, @floatFromInt(@as(c_int, @intFromFloat(progress.width)))) + @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
                .height = @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
            }, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BORDER_COLOR_FOCUSED)))));
            GuiDrawRectangle(Rectangle{
                .x = bounds.x,
                .y = bounds.y + @as(f32, @floatFromInt(@as(c_int, 1))),
                .width = @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
                .height = bounds.height - @as(f32, @floatFromInt(@as(c_int, 2))),
            }, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BORDER_COLOR_FOCUSED)))));
            GuiDrawRectangle(Rectangle{
                .x = bounds.x,
                .y = (bounds.y + bounds.height) - @as(f32, @floatFromInt(@as(c_int, 1))),
                .width = @as(f32, @floatFromInt(@as(c_int, @intFromFloat(progress.width)))) + @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
                .height = @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
            }, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BORDER_COLOR_FOCUSED)))));
        } else {
            GuiDrawRectangle(Rectangle{
                .x = bounds.x,
                .y = bounds.y,
                .width = @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
                .height = bounds.height,
            }, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BORDER_COLOR_NORMAL)))));
        }
        if (value.* >= maxValue) {
            GuiDrawRectangle(Rectangle{
                .x = (bounds.x + progress.width) + @as(f32, @floatFromInt(@as(c_int, 1))),
                .y = bounds.y,
                .width = @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
                .height = bounds.height,
            }, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BORDER_COLOR_FOCUSED)))));
        } else {
            GuiDrawRectangle(Rectangle{
                .x = (bounds.x + @as(f32, @floatFromInt(@as(c_int, @intFromFloat(progress.width))))) + @as(f32, @floatFromInt(@as(c_int, 1))),
                .y = bounds.y,
                .width = (bounds.width - @as(f32, @floatFromInt(@as(c_int, @intFromFloat(progress.width))))) - @as(f32, @floatFromInt(@as(c_int, 1))),
                .height = @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
            }, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BORDER_COLOR_NORMAL)))));
            GuiDrawRectangle(Rectangle{
                .x = (bounds.x + @as(f32, @floatFromInt(@as(c_int, @intFromFloat(progress.width))))) + @as(f32, @floatFromInt(@as(c_int, 1))),
                .y = (bounds.y + bounds.height) - @as(f32, @floatFromInt(@as(c_int, 1))),
                .width = (bounds.width - @as(f32, @floatFromInt(@as(c_int, @intFromFloat(progress.width))))) - @as(f32, @floatFromInt(@as(c_int, 1))),
                .height = @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
            }, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BORDER_COLOR_NORMAL)))));
            GuiDrawRectangle(Rectangle{
                .x = (bounds.x + bounds.width) - @as(f32, @floatFromInt(@as(c_int, 1))),
                .y = bounds.y + @as(f32, @floatFromInt(@as(c_int, 1))),
                .width = @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, BORDER_WIDTH))),
                .height = bounds.height - @as(f32, @floatFromInt(@as(c_int, 2))),
            }, @as(c_int, 0), Color{
                .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BORDER_COLOR_NORMAL)))));
        }
        GuiDrawRectangle(progress, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, BASE_COLOR_PRESSED)))));
    }
    if (textLeft != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var textBounds: Rectangle = Rectangle{
            .x = @as(f32, @floatFromInt(@as(c_int, 0))),
            .y = 0,
            .width = 0,
            .height = 0,
        };
        _ = &textBounds;
        textBounds.width = @as(f32, @floatFromInt(GetTextWidth(textLeft)));
        textBounds.height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
        textBounds.x = (bounds.x - textBounds.width) - @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, TEXT_PADDING)));
        textBounds.y = (bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2))));
        GuiDrawText(textLeft, textBounds, TEXT_ALIGN_RIGHT, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    }
    if (textRight != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var textBounds: Rectangle = Rectangle{
            .x = @as(f32, @floatFromInt(@as(c_int, 0))),
            .y = 0,
            .width = 0,
            .height = 0,
        };
        _ = &textBounds;
        textBounds.width = @as(f32, @floatFromInt(GetTextWidth(textRight)));
        textBounds.height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
        textBounds.x = (bounds.x + bounds.width) + @as(f32, @floatFromInt(GuiGetStyle(PROGRESSBAR, TEXT_PADDING)));
        textBounds.y = (bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2))));
        GuiDrawText(textRight, textBounds, TEXT_ALIGN_LEFT, GetColor(@as(c_uint, @bitCast(GuiGetStyle(PROGRESSBAR, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    }
    return result;
}
pub export fn GuiStatusBar(arg_bounds: Rectangle, arg_text: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    GuiDrawRectangle(bounds, GuiGetStyle(STATUSBAR, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(STATUSBAR, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(STATUSBAR, @as(c_int, @bitCast(@as(c_uint, @bitCast(BASE)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    GuiDrawText(text, GetTextBounds(STATUSBAR, bounds), GuiGetStyle(STATUSBAR, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(STATUSBAR, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    return result;
}
pub export fn GuiDummyRec(arg_bounds: Rectangle, arg_text: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
    }
    GuiDrawRectangle(bounds, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, if (state != @as(c_uint, @bitCast(STATE_DISABLED))) BASE_COLOR_NORMAL else BASE_COLOR_DISABLED)))));
    GuiDrawText(text, GetTextBounds(DEFAULT, bounds), TEXT_ALIGN_CENTER, GetColor(@as(c_uint, @bitCast(GuiGetStyle(BUTTON, if (state != @as(c_uint, @bitCast(STATE_DISABLED))) TEXT_COLOR_NORMAL else TEXT_COLOR_DISABLED)))));
    return result;
}
pub export fn GuiGrid(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_spacing: f32, arg_subdivs: c_int, arg_mouseCell: [*c]Vector2) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var spacing = arg_spacing;
    _ = &spacing;
    var subdivs = arg_subdivs;
    _ = &subdivs;
    var mouseCell = arg_mouseCell;
    _ = &mouseCell;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var mousePoint: Vector2 = GetMousePosition();
    _ = &mousePoint;
    var currentMouseCell: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    _ = &currentMouseCell;
    var spaceWidth: f32 = spacing / @as(f32, @floatFromInt(subdivs));
    _ = &spaceWidth;
    var linesV: c_int = @as(c_int, @intFromFloat(bounds.width / spaceWidth)) + @as(c_int, 1);
    _ = &linesV;
    var linesH: c_int = @as(c_int, @intFromFloat(bounds.height / spaceWidth)) + @as(c_int, 1);
    _ = &linesH;
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            currentMouseCell.x = floorf((mousePoint.x - bounds.x) / spacing);
            currentMouseCell.y = floorf((mousePoint.y - bounds.y) / spacing);
        }
    }
    while (true) {
        switch (state) {
            @as(c_uint, @bitCast(@as(c_int, 0))) => {
                {
                    if (subdivs > @as(c_int, 0)) {
                        {
                            var i: c_int = 0;
                            _ = &i;
                            while (i < linesV) : (i += 1) {
                                var lineV: Rectangle = Rectangle{
                                    .x = bounds.x + ((spacing * @as(f32, @floatFromInt(i))) / @as(f32, @floatFromInt(subdivs))),
                                    .y = bounds.y,
                                    .width = @as(f32, @floatFromInt(@as(c_int, 1))),
                                    .height = bounds.height,
                                };
                                _ = &lineV;
                                GuiDrawRectangle(lineV, @as(c_int, 0), Color{
                                    .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                                    .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                                    .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                                    .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                                }, if (@import("std").zig.c_translation.signedRemainder(i, subdivs) == @as(c_int, 0)) GuiFade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, LINE_COLOR)))), 0.15000000596046448 * @as(f32, @floatFromInt(@as(c_int, 4)))) else GuiFade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, LINE_COLOR)))), 0.15000000596046448));
                            }
                        }
                        {
                            var i: c_int = 0;
                            _ = &i;
                            while (i < linesH) : (i += 1) {
                                var lineH: Rectangle = Rectangle{
                                    .x = bounds.x,
                                    .y = bounds.y + ((spacing * @as(f32, @floatFromInt(i))) / @as(f32, @floatFromInt(subdivs))),
                                    .width = bounds.width,
                                    .height = @as(f32, @floatFromInt(@as(c_int, 1))),
                                };
                                _ = &lineH;
                                GuiDrawRectangle(lineH, @as(c_int, 0), Color{
                                    .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                                    .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                                    .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                                    .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                                }, if (@import("std").zig.c_translation.signedRemainder(i, subdivs) == @as(c_int, 0)) GuiFade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, LINE_COLOR)))), 0.15000000596046448 * @as(f32, @floatFromInt(@as(c_int, 4)))) else GuiFade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, LINE_COLOR)))), 0.15000000596046448));
                            }
                        }
                    }
                }
                break;
            },
            else => break,
        }
        break;
    }
    if (mouseCell != @as([*c]Vector2, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        mouseCell.* = currentMouseCell;
    }
    return result;
}
pub export fn GuiListView(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_scrollIndex: [*c]c_int, arg_active: [*c]c_int) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var scrollIndex = arg_scrollIndex;
    _ = &scrollIndex;
    var active = arg_active;
    _ = &active;
    var result: c_int = 0;
    _ = &result;
    var itemCount: c_int = 0;
    _ = &itemCount;
    var items: [*c][*c]const u8 = null;
    _ = &items;
    if (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        items = GuiTextSplit(text, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ';'))))), &itemCount, null);
    }
    result = GuiListViewEx(bounds, items, itemCount, scrollIndex, active, null);
    return result;
}
pub export fn GuiListViewEx(arg_bounds: Rectangle, arg_text: [*c][*c]const u8, arg_count: c_int, arg_scrollIndex: [*c]c_int, arg_active: [*c]c_int, arg_focus: [*c]c_int) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var count = arg_count;
    _ = &count;
    var scrollIndex = arg_scrollIndex;
    _ = &scrollIndex;
    var active = arg_active;
    _ = &active;
    var focus = arg_focus;
    _ = &focus;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var itemFocused: c_int = if (focus == @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) -@as(c_int, 1) else focus.*;
    _ = &itemFocused;
    var itemSelected: c_int = if (active == @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) -@as(c_int, 1) else active.*;
    _ = &itemSelected;
    var useScrollBar: bool = @as(c_int, 0) != 0;
    _ = &useScrollBar;
    if (@as(f32, @floatFromInt((GuiGetStyle(LISTVIEW, LIST_ITEMS_HEIGHT) + GuiGetStyle(LISTVIEW, LIST_ITEMS_SPACING)) * count)) > bounds.height) {
        useScrollBar = @as(c_int, 1) != 0;
    }
    var itemBounds: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &itemBounds;
    itemBounds.x = bounds.x + @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, LIST_ITEMS_SPACING)));
    itemBounds.y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, LIST_ITEMS_SPACING)))) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH)));
    itemBounds.width = (bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(LISTVIEW, LIST_ITEMS_SPACING)))) - @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH)));
    itemBounds.height = @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, LIST_ITEMS_HEIGHT)));
    if (useScrollBar) {
        itemBounds.width -= @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, SCROLLBAR_WIDTH)));
    }
    var visibleItems: c_int = @divTrunc(@as(c_int, @intFromFloat(bounds.height)), GuiGetStyle(LISTVIEW, LIST_ITEMS_HEIGHT) + GuiGetStyle(LISTVIEW, LIST_ITEMS_SPACING));
    _ = &visibleItems;
    if (visibleItems > count) {
        visibleItems = count;
    }
    var startIndex: c_int = if (scrollIndex == @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) @as(c_int, 0) else scrollIndex.*;
    _ = &startIndex;
    if ((startIndex < @as(c_int, 0)) or (startIndex > (count - visibleItems))) {
        startIndex = 0;
    }
    var endIndex: c_int = startIndex + visibleItems;
    _ = &endIndex;
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            state = @as(c_uint, @bitCast(STATE_FOCUSED));
            {
                var i: c_int = 0;
                _ = &i;
                while (i < visibleItems) : (i += 1) {
                    if (CheckCollisionPointRec(mousePoint, itemBounds)) {
                        itemFocused = startIndex + i;
                        if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT)) {
                            if (itemSelected == (startIndex + i)) {
                                itemSelected = -@as(c_int, 1);
                            } else {
                                itemSelected = startIndex + i;
                            }
                        }
                        break;
                    }
                    itemBounds.y += @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, LIST_ITEMS_HEIGHT) + GuiGetStyle(LISTVIEW, LIST_ITEMS_SPACING)));
                }
            }
            if (useScrollBar) {
                var wheelMove: c_int = @as(c_int, @intFromFloat(GetMouseWheelMove()));
                _ = &wheelMove;
                startIndex -= wheelMove;
                if (startIndex < @as(c_int, 0)) {
                    startIndex = 0;
                } else if (startIndex > (count - visibleItems)) {
                    startIndex = count - visibleItems;
                }
                endIndex = startIndex + visibleItems;
                if (endIndex > count) {
                    endIndex = count;
                }
            }
        } else {
            itemFocused = -@as(c_int, 1);
        }
        itemBounds.y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, LIST_ITEMS_SPACING)))) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, BORDER_WIDTH)));
    }
    GuiDrawRectangle(bounds, GuiGetStyle(DEFAULT, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, BACKGROUND_COLOR)))));
    {
        var i: c_int = 0;
        _ = &i;
        while ((i < visibleItems) and (text != @as([*c][*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) : (i += 1) {
            if (state == @as(c_uint, @bitCast(STATE_DISABLED))) {
                if ((startIndex + i) == itemSelected) {
                    GuiDrawRectangle(itemBounds, GuiGetStyle(LISTVIEW, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, BORDER_COLOR_DISABLED)))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, BASE_COLOR_DISABLED)))));
                }
                GuiDrawText((blk: {
                    const tmp = startIndex + i;
                    if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*, GetTextBounds(DEFAULT, itemBounds), GuiGetStyle(LISTVIEW, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, TEXT_COLOR_DISABLED)))));
            } else {
                if (((startIndex + i) == itemSelected) and (active != @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
                    GuiDrawRectangle(itemBounds, GuiGetStyle(LISTVIEW, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, BORDER_COLOR_PRESSED)))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, BASE_COLOR_PRESSED)))));
                    GuiDrawText((blk: {
                        const tmp = startIndex + i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, GetTextBounds(DEFAULT, itemBounds), GuiGetStyle(LISTVIEW, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, TEXT_COLOR_PRESSED)))));
                } else if ((startIndex + i) == itemFocused) {
                    GuiDrawRectangle(itemBounds, GuiGetStyle(LISTVIEW, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, BORDER_COLOR_FOCUSED)))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, BASE_COLOR_FOCUSED)))));
                    GuiDrawText((blk: {
                        const tmp = startIndex + i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, GetTextBounds(DEFAULT, itemBounds), GuiGetStyle(LISTVIEW, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, TEXT_COLOR_FOCUSED)))));
                } else {
                    GuiDrawText((blk: {
                        const tmp = startIndex + i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, GetTextBounds(DEFAULT, itemBounds), GuiGetStyle(LISTVIEW, TEXT_ALIGNMENT), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, TEXT_COLOR_NORMAL)))));
                }
            }
            itemBounds.y += @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, LIST_ITEMS_HEIGHT) + GuiGetStyle(LISTVIEW, LIST_ITEMS_SPACING)));
        }
    }
    if (useScrollBar) {
        var scrollBarBounds: Rectangle = Rectangle{
            .x = ((bounds.x + bounds.width) - @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, BORDER_WIDTH)))) - @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, SCROLLBAR_WIDTH))),
            .y = bounds.y + @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, BORDER_WIDTH))),
            .width = @as(f32, @floatFromInt(GuiGetStyle(LISTVIEW, SCROLLBAR_WIDTH))),
            .height = bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(DEFAULT, BORDER_WIDTH))),
        };
        _ = &scrollBarBounds;
        var percentVisible: f32 = @as(f32, @floatFromInt(endIndex - startIndex)) / @as(f32, @floatFromInt(count));
        _ = &percentVisible;
        var sliderSize: f32 = bounds.height * percentVisible;
        _ = &sliderSize;
        var prevSliderSize: c_int = GuiGetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE);
        _ = &prevSliderSize;
        var prevScrollSpeed: c_int = GuiGetStyle(SCROLLBAR, SCROLL_SPEED);
        _ = &prevScrollSpeed;
        GuiSetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE, @as(c_int, @intFromFloat(sliderSize)));
        GuiSetStyle(SCROLLBAR, SCROLL_SPEED, count - visibleItems);
        startIndex = GuiScrollBar(scrollBarBounds, startIndex, @as(c_int, 0), count - visibleItems);
        GuiSetStyle(SCROLLBAR, SCROLL_SPEED, prevScrollSpeed);
        GuiSetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE, prevSliderSize);
    }
    if (active != @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        active.* = itemSelected;
    }
    if (focus != @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        focus.* = itemFocused;
    }
    if (scrollIndex != @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        scrollIndex.* = startIndex;
    }
    return result;
}
pub export fn GuiMessageBox(arg_bounds: Rectangle, arg_title: [*c]const u8, arg_message: [*c]const u8, arg_buttons: [*c]const u8) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var title = arg_title;
    _ = &title;
    var message = arg_message;
    _ = &message;
    var buttons = arg_buttons;
    _ = &buttons;
    var result: c_int = -@as(c_int, 1);
    _ = &result;
    var buttonCount: c_int = 0;
    _ = &buttonCount;
    var buttonsText: [*c][*c]const u8 = GuiTextSplit(buttons, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ';'))))), &buttonCount, null);
    _ = &buttonsText;
    var buttonBounds: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &buttonBounds;
    buttonBounds.x = bounds.x + @as(f32, @floatFromInt(@as(c_int, 12)));
    buttonBounds.y = ((bounds.y + bounds.height) - @as(f32, @floatFromInt(@as(c_int, 24)))) - @as(f32, @floatFromInt(@as(c_int, 12)));
    buttonBounds.width = (bounds.width - @as(f32, @floatFromInt(@as(c_int, 12) * (buttonCount + @as(c_int, 1))))) / @as(f32, @floatFromInt(buttonCount));
    buttonBounds.height = 24;
    var textWidth: c_int = GetTextWidth(message) + @as(c_int, 2);
    _ = &textWidth;
    var textBounds: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &textBounds;
    textBounds.x = (bounds.x + (bounds.width / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(textWidth, @as(c_int, 2))));
    textBounds.y = (bounds.y + @as(f32, @floatFromInt(@as(c_int, 24)))) + @as(f32, @floatFromInt(@as(c_int, 12)));
    textBounds.width = @as(f32, @floatFromInt(textWidth));
    textBounds.height = ((bounds.height - @as(f32, @floatFromInt(@as(c_int, 24)))) - @as(f32, @floatFromInt(@as(c_int, 3) * @as(c_int, 12)))) - @as(f32, @floatFromInt(@as(c_int, 24)));
    if (GuiWindowBox(bounds, title) != 0) {
        result = 0;
    }
    var prevTextAlignment: c_int = GuiGetStyle(LABEL, TEXT_ALIGNMENT);
    _ = &prevTextAlignment;
    GuiSetStyle(LABEL, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
    _ = GuiLabel(textBounds, message);
    GuiSetStyle(LABEL, TEXT_ALIGNMENT, prevTextAlignment);
    prevTextAlignment = GuiGetStyle(BUTTON, TEXT_ALIGNMENT);
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
    {
        var i: c_int = 0;
        _ = &i;
        while (i < buttonCount) : (i += 1) {
            if (GuiButton(buttonBounds, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk buttonsText + @as(usize, @intCast(tmp)) else break :blk buttonsText - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*) != 0) {
                result = i + @as(c_int, 1);
            }
            buttonBounds.x += buttonBounds.width + @as(f32, @floatFromInt(@as(c_int, 12)));
        }
    }
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, prevTextAlignment);
    return result;
}
pub export fn GuiTextInputBox(arg_bounds: Rectangle, arg_title: [*c]const u8, arg_message: [*c]const u8, arg_buttons: [*c]const u8, arg_text: [*c]u8, arg_textMaxSize: c_int, arg_secretViewActive: [*c]bool) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var title = arg_title;
    _ = &title;
    var message = arg_message;
    _ = &message;
    var buttons = arg_buttons;
    _ = &buttons;
    var text = arg_text;
    _ = &text;
    var textMaxSize = arg_textMaxSize;
    _ = &textMaxSize;
    var secretViewActive = arg_secretViewActive;
    _ = &secretViewActive;
    const textEditMode = struct {
        var static: bool = @as(c_int, 0) != 0;
    };
    _ = &textEditMode;
    var result: c_int = -@as(c_int, 1);
    _ = &result;
    var buttonCount: c_int = 0;
    _ = &buttonCount;
    var buttonsText: [*c][*c]const u8 = GuiTextSplit(buttons, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ';'))))), &buttonCount, null);
    _ = &buttonsText;
    var buttonBounds: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &buttonBounds;
    buttonBounds.x = bounds.x + @as(f32, @floatFromInt(@as(c_int, 12)));
    buttonBounds.y = ((bounds.y + bounds.height) - @as(f32, @floatFromInt(@as(c_int, 24)))) - @as(f32, @floatFromInt(@as(c_int, 12)));
    buttonBounds.width = (bounds.width - @as(f32, @floatFromInt(@as(c_int, 12) * (buttonCount + @as(c_int, 1))))) / @as(f32, @floatFromInt(buttonCount));
    buttonBounds.height = 24;
    var messageInputHeight: c_int = (((@as(c_int, @intFromFloat(bounds.height)) - @as(c_int, 24)) - GuiGetStyle(STATUSBAR, BORDER_WIDTH)) - @as(c_int, 24)) - (@as(c_int, 2) * @as(c_int, 12));
    _ = &messageInputHeight;
    var textBounds: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &textBounds;
    if (message != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var textSize: c_int = GetTextWidth(message) + @as(c_int, 2);
        _ = &textSize;
        textBounds.x = (bounds.x + (bounds.width / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(textSize, @as(c_int, 2))));
        textBounds.y = ((bounds.y + @as(f32, @floatFromInt(@as(c_int, 24)))) + @as(f32, @floatFromInt(@divTrunc(messageInputHeight, @as(c_int, 4))))) - (@as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))) / @as(f32, @floatFromInt(@as(c_int, 2))));
        textBounds.width = @as(f32, @floatFromInt(textSize));
        textBounds.height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
    }
    var textBoxBounds: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &textBoxBounds;
    textBoxBounds.x = bounds.x + @as(f32, @floatFromInt(@as(c_int, 12)));
    textBoxBounds.y = (bounds.y + @as(f32, @floatFromInt(@as(c_int, 24)))) - @as(f32, @floatFromInt(@divTrunc(@as(c_int, 26), @as(c_int, 2))));
    if (message == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        textBoxBounds.y = (bounds.y + @as(f32, @floatFromInt(@as(c_int, 24)))) + @as(f32, @floatFromInt(@as(c_int, 12)));
    } else {
        textBoxBounds.y += @as(f32, @floatFromInt(@divTrunc(messageInputHeight, @as(c_int, 2)) + @divTrunc(messageInputHeight, @as(c_int, 4))));
    }
    textBoxBounds.width = bounds.width - @as(f32, @floatFromInt(@as(c_int, 12) * @as(c_int, 2)));
    textBoxBounds.height = 26;
    if (GuiWindowBox(bounds, title) != 0) {
        result = 0;
    }
    if (message != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var prevTextAlignment: c_int = GuiGetStyle(LABEL, TEXT_ALIGNMENT);
        _ = &prevTextAlignment;
        GuiSetStyle(LABEL, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
        _ = GuiLabel(textBounds, message);
        GuiSetStyle(LABEL, TEXT_ALIGNMENT, prevTextAlignment);
    }
    if (secretViewActive != @as([*c]bool, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        const stars = struct {
            var static: [16:0]u8 = "****************".*;
        };
        _ = &stars;
        if (GuiTextBox(Rectangle{
            .x = textBoxBounds.x,
            .y = textBoxBounds.y,
            .width = (textBoxBounds.width - @as(f32, @floatFromInt(@as(c_int, 4)))) - @as(f32, @floatFromInt(@as(c_int, 26))),
            .height = textBoxBounds.height,
        }, if ((@as(c_int, @intFromBool(secretViewActive.*)) == @as(c_int, 1)) or (@as(c_int, @intFromBool(textEditMode.static)) != 0)) text else @as([*c]u8, @ptrCast(@alignCast(&stars.static))), textMaxSize, textEditMode.static) != 0) {
            textEditMode.static = !textEditMode.static;
        }
        _ = GuiToggle(Rectangle{
            .x = (textBoxBounds.x + textBoxBounds.width) - @as(f32, @floatFromInt(@as(c_int, 26))),
            .y = textBoxBounds.y,
            .width = @as(f32, @floatFromInt(@as(c_int, 26))),
            .height = @as(f32, @floatFromInt(@as(c_int, 26))),
        }, if (@as(c_int, @intFromBool(secretViewActive.*)) == @as(c_int, 1)) "#44#" else "#45#", secretViewActive);
    } else {
        if (GuiTextBox(textBoxBounds, text, textMaxSize, textEditMode.static) != 0) {
            textEditMode.static = !textEditMode.static;
        }
    }
    var prevBtnTextAlignment: c_int = GuiGetStyle(BUTTON, TEXT_ALIGNMENT);
    _ = &prevBtnTextAlignment;
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
    {
        var i: c_int = 0;
        _ = &i;
        while (i < buttonCount) : (i += 1) {
            if (GuiButton(buttonBounds, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk buttonsText + @as(usize, @intCast(tmp)) else break :blk buttonsText - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*) != 0) {
                result = i + @as(c_int, 1);
            }
            buttonBounds.x += buttonBounds.width + @as(f32, @floatFromInt(@as(c_int, 12)));
        }
    }
    if (result >= @as(c_int, 0)) {
        textEditMode.static = @as(c_int, 0) != 0;
    }
    GuiSetStyle(BUTTON, TEXT_ALIGNMENT, prevBtnTextAlignment);
    return result;
}
pub export fn GuiColorPicker(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_color: [*c]Color) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var color = arg_color;
    _ = &color;
    var result: c_int = 0;
    _ = &result;
    var temp: Color = Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 200))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
    };
    _ = &temp;
    if (color == @as([*c]Color, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        color = &temp;
    }
    _ = GuiColorPanel(bounds, null, color);
    var boundsHue: Rectangle = Rectangle{
        .x = (bounds.x + bounds.width) + @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_PADDING))),
        .y = bounds.y,
        .width = @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_WIDTH))),
        .height = bounds.height,
    };
    _ = &boundsHue;
    var hsv: Vector3 = ConvertRGBtoHSV(Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, @bitCast(@as(c_uint, color.*.r))))) / 255.0,
        .y = @as(f32, @floatFromInt(@as(c_int, @bitCast(@as(c_uint, color.*.g))))) / 255.0,
        .z = @as(f32, @floatFromInt(@as(c_int, @bitCast(@as(c_uint, color.*.b))))) / 255.0,
    });
    _ = &hsv;
    _ = GuiColorBarHue(boundsHue, null, &hsv.x);
    var rgb: Vector3 = ConvertHSVtoRGB(hsv);
    _ = &rgb;
    color.* = Color{
        .r = @as(u8, @intFromFloat(roundf(rgb.x * 255.0))),
        .g = @as(u8, @intFromFloat(roundf(rgb.y * 255.0))),
        .b = @as(u8, @intFromFloat(roundf(rgb.z * 255.0))),
        .a = color.*.a,
    };
    return result;
}
pub export fn GuiColorPanel(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_color: [*c]Color) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var color = arg_color;
    _ = &color;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var pickerSelector: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    _ = &pickerSelector;
    const colWhite: Color = Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
    };
    _ = &colWhite;
    const colBlack: Color = Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
    };
    _ = &colBlack;
    var vcolor: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(color.*.r)) / 255.0,
        .y = @as(f32, @floatFromInt(color.*.g)) / 255.0,
        .z = @as(f32, @floatFromInt(color.*.b)) / 255.0,
    };
    _ = &vcolor;
    var hsv: Vector3 = ConvertRGBtoHSV(vcolor);
    _ = &hsv;
    pickerSelector.x = bounds.x + (hsv.y * bounds.width);
    pickerSelector.y = bounds.y + ((1.0 - hsv.z) * bounds.height);
    var hue: f32 = -1.0;
    _ = &hue;
    var maxHue: Vector3 = Vector3{
        .x = if (hue >= 0.0) hue else hsv.x,
        .y = 1.0,
        .z = 1.0,
    };
    _ = &maxHue;
    var rgbHue: Vector3 = ConvertHSVtoRGB(maxHue);
    _ = &rgbHue;
    var maxHueCol: Color = Color{
        .r = @as(u8, @intFromFloat(255.0 * rgbHue.x)),
        .g = @as(u8, @intFromFloat(255.0 * rgbHue.y)),
        .b = @as(u8, @intFromFloat(255.0 * rgbHue.z)),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
    };
    _ = &maxHueCol;
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
                pickerSelector = mousePoint;
                var colorPick: Vector2 = Vector2{
                    .x = pickerSelector.x - bounds.x,
                    .y = pickerSelector.y - bounds.y,
                };
                _ = &colorPick;
                colorPick.x /= bounds.width;
                colorPick.y /= bounds.height;
                hsv.y = colorPick.x;
                hsv.z = 1.0 - colorPick.y;
                var rgb: Vector3 = ConvertHSVtoRGB(hsv);
                _ = &rgb;
                color.* = Color{
                    .r = @as(u8, @intFromFloat(255.0 * rgb.x)),
                    .g = @as(u8, @intFromFloat(255.0 * rgb.y)),
                    .b = @as(u8, @intFromFloat(255.0 * rgb.z)),
                    .a = @as(u8, @intFromFloat((255.0 * @as(f32, @floatFromInt(color.*.a))) / 255.0)),
                };
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
    }
    if (state != @as(c_uint, @bitCast(STATE_DISABLED))) {
        DrawRectangleGradientEx(bounds, Fade(colWhite, guiAlpha), Fade(colWhite, guiAlpha), Fade(maxHueCol, guiAlpha), Fade(maxHueCol, guiAlpha));
        DrawRectangleGradientEx(bounds, Fade(colBlack, @as(f32, @floatFromInt(@as(c_int, 0)))), Fade(colBlack, guiAlpha), Fade(colBlack, guiAlpha), Fade(colBlack, @as(f32, @floatFromInt(@as(c_int, 0)))));
        var selector: Rectangle = Rectangle{
            .x = pickerSelector.x - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(COLORPICKER, COLOR_SELECTOR_SIZE), @as(c_int, 2)))),
            .y = pickerSelector.y - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(COLORPICKER, COLOR_SELECTOR_SIZE), @as(c_int, 2)))),
            .width = @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, COLOR_SELECTOR_SIZE))),
            .height = @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, COLOR_SELECTOR_SIZE))),
        };
        _ = &selector;
        GuiDrawRectangle(selector, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, colWhite);
    } else {
        DrawRectangleGradientEx(bounds, Fade(Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BASE_COLOR_DISABLED)))), 0.10000000149011612), guiAlpha), Fade(Fade(colBlack, 0.6000000238418579), guiAlpha), Fade(Fade(colBlack, 0.6000000238418579), guiAlpha), Fade(Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BORDER_COLOR_DISABLED)))), 0.6000000238418579), guiAlpha));
    }
    GuiDrawRectangle(bounds, GuiGetStyle(COLORPICKER, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    });
    return result;
}
pub export fn GuiColorBarAlpha(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_alpha: [*c]f32) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var alpha = arg_alpha;
    _ = &alpha;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var selector: Rectangle = Rectangle{
        .x = (bounds.x + (alpha.* * bounds.width)) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(COLORPICKER, HUEBAR_SELECTOR_HEIGHT), @as(c_int, 2)))),
        .y = bounds.y - @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_SELECTOR_OVERFLOW))),
        .width = @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_SELECTOR_HEIGHT))),
        .height = bounds.height + @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_SELECTOR_OVERFLOW) * @as(c_int, 2))),
    };
    _ = &selector;
    if ((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (guiSliderDragging) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                if ((((bounds.x == guiSliderActive.x) and (bounds.y == guiSliderActive.y)) and (bounds.width == guiSliderActive.width)) and (bounds.height == guiSliderActive.height)) {
                    state = @as(c_uint, @bitCast(STATE_PRESSED));
                    alpha.* = (mousePoint.x - bounds.x) / bounds.width;
                    if (alpha.* <= 0.0) {
                        alpha.* = 0.0;
                    }
                    if (alpha.* >= 1.0) {
                        alpha.* = 1.0;
                    }
                }
            } else {
                guiSliderDragging = @as(c_int, 0) != 0;
                guiSliderActive = Rectangle{
                    .x = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .y = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .width = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .height = @as(f32, @floatFromInt(@as(c_int, 0))),
                };
            }
        } else if ((@as(c_int, @intFromBool(CheckCollisionPointRec(mousePoint, bounds))) != 0) or (@as(c_int, @intFromBool(CheckCollisionPointRec(mousePoint, selector))) != 0)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
                guiSliderDragging = @as(c_int, 1) != 0;
                guiSliderActive = bounds;
                alpha.* = (mousePoint.x - bounds.x) / bounds.width;
                if (alpha.* <= 0.0) {
                    alpha.* = 0.0;
                }
                if (alpha.* >= 1.0) {
                    alpha.* = 1.0;
                }
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
    }
    if (state != @as(c_uint, @bitCast(STATE_DISABLED))) {
        var checksX: c_int = @divTrunc(@as(c_int, @intFromFloat(bounds.width)), @as(c_int, 10));
        _ = &checksX;
        var checksY: c_int = @divTrunc(@as(c_int, @intFromFloat(bounds.height)), @as(c_int, 10));
        _ = &checksY;
        {
            var x: c_int = 0;
            _ = &x;
            while (x < checksX) : (x += 1) {
                {
                    var y: c_int = 0;
                    _ = &y;
                    while (y < checksY) : (y += 1) {
                        var check: Rectangle = Rectangle{
                            .x = bounds.x + @as(f32, @floatFromInt(x * @as(c_int, 10))),
                            .y = bounds.y + @as(f32, @floatFromInt(y * @as(c_int, 10))),
                            .width = @as(f32, @floatFromInt(@as(c_int, 10))),
                            .height = @as(f32, @floatFromInt(@as(c_int, 10))),
                        };
                        _ = &check;
                        GuiDrawRectangle(check, @as(c_int, 0), Color{
                            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
                        }, if (@import("std").zig.c_translation.signedRemainder(x + y, @as(c_int, 2)) != 0) Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BORDER_COLOR_DISABLED)))), 0.4000000059604645) else Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BASE_COLOR_DISABLED)))), 0.4000000059604645));
                    }
                }
            }
        }
        DrawRectangleGradientEx(bounds, Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha));
    } else {
        DrawRectangleGradientEx(bounds, Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BASE_COLOR_DISABLED)))), 0.10000000149011612), Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BASE_COLOR_DISABLED)))), 0.10000000149011612), Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BORDER_COLOR_DISABLED)))), guiAlpha), Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BORDER_COLOR_DISABLED)))), guiAlpha));
    }
    GuiDrawRectangle(bounds, GuiGetStyle(COLORPICKER, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    });
    GuiDrawRectangle(selector, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    return result;
}
pub export fn GuiColorBarHue(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_hue: [*c]f32) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var hue = arg_hue;
    _ = &hue;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var selector: Rectangle = Rectangle{
        .x = bounds.x - @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_SELECTOR_OVERFLOW))),
        .y = (bounds.y + ((hue.* / 360.0) * bounds.height)) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(COLORPICKER, HUEBAR_SELECTOR_HEIGHT), @as(c_int, 2)))),
        .width = bounds.width + @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_SELECTOR_OVERFLOW) * @as(c_int, 2))),
        .height = @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_SELECTOR_HEIGHT))),
    };
    _ = &selector;
    if ((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (guiSliderDragging) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                if ((((bounds.x == guiSliderActive.x) and (bounds.y == guiSliderActive.y)) and (bounds.width == guiSliderActive.width)) and (bounds.height == guiSliderActive.height)) {
                    state = @as(c_uint, @bitCast(STATE_PRESSED));
                    hue.* = ((mousePoint.y - bounds.y) * @as(f32, @floatFromInt(@as(c_int, 360)))) / bounds.height;
                    if (hue.* <= 0.0) {
                        hue.* = 0.0;
                    }
                    if (hue.* >= 359.0) {
                        hue.* = 359.0;
                    }
                }
            } else {
                guiSliderDragging = @as(c_int, 0) != 0;
                guiSliderActive = Rectangle{
                    .x = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .y = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .width = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .height = @as(f32, @floatFromInt(@as(c_int, 0))),
                };
            }
        } else if ((@as(c_int, @intFromBool(CheckCollisionPointRec(mousePoint, bounds))) != 0) or (@as(c_int, @intFromBool(CheckCollisionPointRec(mousePoint, selector))) != 0)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
                guiSliderDragging = @as(c_int, 1) != 0;
                guiSliderActive = bounds;
                hue.* = ((mousePoint.y - bounds.y) * @as(f32, @floatFromInt(@as(c_int, 360)))) / bounds.height;
                if (hue.* <= 0.0) {
                    hue.* = 0.0;
                }
                if (hue.* >= 359.0) {
                    hue.* = 359.0;
                }
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
    }
    if (state != @as(c_uint, @bitCast(STATE_DISABLED))) {
        DrawRectangleGradientV(@as(c_int, @intFromFloat(bounds.x)), @as(c_int, @intFromFloat(bounds.y)), @as(c_int, @intFromFloat(bounds.width)), @as(c_int, @intFromFloat(ceilf(bounds.height / @as(f32, @floatFromInt(@as(c_int, 6)))))), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha));
        DrawRectangleGradientV(@as(c_int, @intFromFloat(bounds.x)), @as(c_int, @intFromFloat(bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 6)))))), @as(c_int, @intFromFloat(bounds.width)), @as(c_int, @intFromFloat(ceilf(bounds.height / @as(f32, @floatFromInt(@as(c_int, 6)))))), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha));
        DrawRectangleGradientV(@as(c_int, @intFromFloat(bounds.x)), @as(c_int, @intFromFloat(bounds.y + (@as(f32, @floatFromInt(@as(c_int, 2))) * (bounds.height / @as(f32, @floatFromInt(@as(c_int, 6))))))), @as(c_int, @intFromFloat(bounds.width)), @as(c_int, @intFromFloat(ceilf(bounds.height / @as(f32, @floatFromInt(@as(c_int, 6)))))), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha));
        DrawRectangleGradientV(@as(c_int, @intFromFloat(bounds.x)), @as(c_int, @intFromFloat(bounds.y + (@as(f32, @floatFromInt(@as(c_int, 3))) * (bounds.height / @as(f32, @floatFromInt(@as(c_int, 6))))))), @as(c_int, @intFromFloat(bounds.width)), @as(c_int, @intFromFloat(ceilf(bounds.height / @as(f32, @floatFromInt(@as(c_int, 6)))))), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha));
        DrawRectangleGradientV(@as(c_int, @intFromFloat(bounds.x)), @as(c_int, @intFromFloat(bounds.y + (@as(f32, @floatFromInt(@as(c_int, 4))) * (bounds.height / @as(f32, @floatFromInt(@as(c_int, 6))))))), @as(c_int, @intFromFloat(bounds.width)), @as(c_int, @intFromFloat(ceilf(bounds.height / @as(f32, @floatFromInt(@as(c_int, 6)))))), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha));
        DrawRectangleGradientV(@as(c_int, @intFromFloat(bounds.x)), @as(c_int, @intFromFloat(bounds.y + (@as(f32, @floatFromInt(@as(c_int, 5))) * (bounds.height / @as(f32, @floatFromInt(@as(c_int, 6))))))), @as(c_int, @intFromFloat(bounds.width)), @as(c_int, @intFromFloat(bounds.height / @as(f32, @floatFromInt(@as(c_int, 6))))), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha), Fade(Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        }, guiAlpha));
    } else {
        DrawRectangleGradientV(@as(c_int, @intFromFloat(bounds.x)), @as(c_int, @intFromFloat(bounds.y)), @as(c_int, @intFromFloat(bounds.width)), @as(c_int, @intFromFloat(bounds.height)), Fade(Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BASE_COLOR_DISABLED)))), 0.10000000149011612), guiAlpha), Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BORDER_COLOR_DISABLED)))), guiAlpha));
    }
    GuiDrawRectangle(bounds, GuiGetStyle(COLORPICKER, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    });
    GuiDrawRectangle(selector, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    return result;
}
pub export fn GuiColorPickerHSV(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_colorHsv: [*c]Vector3) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var colorHsv = arg_colorHsv;
    _ = &colorHsv;
    var result: c_int = 0;
    _ = &result;
    var tempHsv: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    _ = &tempHsv;
    if (colorHsv == @as([*c]Vector3, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        const tempColor: Vector3 = Vector3{
            .x = 200.0 / 255.0,
            .y = 0.0,
            .z = 0.0,
        };
        _ = &tempColor;
        tempHsv = ConvertRGBtoHSV(tempColor);
        colorHsv = &tempHsv;
    }
    _ = GuiColorPanelHSV(bounds, null, colorHsv);
    const boundsHue: Rectangle = Rectangle{
        .x = (bounds.x + bounds.width) + @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_PADDING))),
        .y = bounds.y,
        .width = @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, HUEBAR_WIDTH))),
        .height = bounds.height,
    };
    _ = &boundsHue;
    _ = GuiColorBarHue(boundsHue, null, &colorHsv.*.x);
    return result;
}
pub export fn GuiColorPanelHSV(arg_bounds: Rectangle, arg_text: [*c]const u8, arg_colorHsv: [*c]Vector3) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var text = arg_text;
    _ = &text;
    var colorHsv = arg_colorHsv;
    _ = &colorHsv;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var pickerSelector: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    _ = &pickerSelector;
    const colWhite: Color = Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
    };
    _ = &colWhite;
    const colBlack: Color = Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
    };
    _ = &colBlack;
    pickerSelector.x = bounds.x + (colorHsv.*.y * bounds.width);
    pickerSelector.y = bounds.y + ((1.0 - colorHsv.*.z) * bounds.height);
    var hue: f32 = -1.0;
    _ = &hue;
    var maxHue: Vector3 = Vector3{
        .x = if (hue >= 0.0) hue else colorHsv.*.x,
        .y = 1.0,
        .z = 1.0,
    };
    _ = &maxHue;
    var rgbHue: Vector3 = ConvertHSVtoRGB(maxHue);
    _ = &rgbHue;
    var maxHueCol: Color = Color{
        .r = @as(u8, @intFromFloat(255.0 * rgbHue.x)),
        .g = @as(u8, @intFromFloat(255.0 * rgbHue.y)),
        .b = @as(u8, @intFromFloat(255.0 * rgbHue.z)),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 255))))),
    };
    _ = &maxHueCol;
    if (((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) and !guiSliderDragging) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
                pickerSelector = mousePoint;
                var colorPick: Vector2 = Vector2{
                    .x = pickerSelector.x - bounds.x,
                    .y = pickerSelector.y - bounds.y,
                };
                _ = &colorPick;
                colorPick.x /= bounds.width;
                colorPick.y /= bounds.height;
                colorHsv.*.y = colorPick.x;
                colorHsv.*.z = 1.0 - colorPick.y;
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
    }
    if (state != @as(c_uint, @bitCast(STATE_DISABLED))) {
        DrawRectangleGradientEx(bounds, Fade(colWhite, guiAlpha), Fade(colWhite, guiAlpha), Fade(maxHueCol, guiAlpha), Fade(maxHueCol, guiAlpha));
        DrawRectangleGradientEx(bounds, Fade(colBlack, @as(f32, @floatFromInt(@as(c_int, 0)))), Fade(colBlack, guiAlpha), Fade(colBlack, guiAlpha), Fade(colBlack, @as(f32, @floatFromInt(@as(c_int, 0)))));
        var selector: Rectangle = Rectangle{
            .x = pickerSelector.x - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(COLORPICKER, COLOR_SELECTOR_SIZE), @as(c_int, 2)))),
            .y = pickerSelector.y - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(COLORPICKER, COLOR_SELECTOR_SIZE), @as(c_int, 2)))),
            .width = @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, COLOR_SELECTOR_SIZE))),
            .height = @as(f32, @floatFromInt(GuiGetStyle(COLORPICKER, COLOR_SELECTOR_SIZE))),
        };
        _ = &selector;
        GuiDrawRectangle(selector, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, colWhite);
    } else {
        DrawRectangleGradientEx(bounds, Fade(Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BASE_COLOR_DISABLED)))), 0.10000000149011612), guiAlpha), Fade(Fade(colBlack, 0.6000000238418579), guiAlpha), Fade(Fade(colBlack, 0.6000000238418579), guiAlpha), Fade(Fade(GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, BORDER_COLOR_DISABLED)))), 0.6000000238418579), guiAlpha));
    }
    GuiDrawRectangle(bounds, GuiGetStyle(COLORPICKER, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(COLORPICKER, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    });
    return result;
}
pub const ICON_NONE: c_int = 0;
pub const ICON_FOLDER_FILE_OPEN: c_int = 1;
pub const ICON_FILE_SAVE_CLASSIC: c_int = 2;
pub const ICON_FOLDER_OPEN: c_int = 3;
pub const ICON_FOLDER_SAVE: c_int = 4;
pub const ICON_FILE_OPEN: c_int = 5;
pub const ICON_FILE_SAVE: c_int = 6;
pub const ICON_FILE_EXPORT: c_int = 7;
pub const ICON_FILE_ADD: c_int = 8;
pub const ICON_FILE_DELETE: c_int = 9;
pub const ICON_FILETYPE_TEXT: c_int = 10;
pub const ICON_FILETYPE_AUDIO: c_int = 11;
pub const ICON_FILETYPE_IMAGE: c_int = 12;
pub const ICON_FILETYPE_PLAY: c_int = 13;
pub const ICON_FILETYPE_VIDEO: c_int = 14;
pub const ICON_FILETYPE_INFO: c_int = 15;
pub const ICON_FILE_COPY: c_int = 16;
pub const ICON_FILE_CUT: c_int = 17;
pub const ICON_FILE_PASTE: c_int = 18;
pub const ICON_CURSOR_HAND: c_int = 19;
pub const ICON_CURSOR_POINTER: c_int = 20;
pub const ICON_CURSOR_CLASSIC: c_int = 21;
pub const ICON_PENCIL: c_int = 22;
pub const ICON_PENCIL_BIG: c_int = 23;
pub const ICON_BRUSH_CLASSIC: c_int = 24;
pub const ICON_BRUSH_PAINTER: c_int = 25;
pub const ICON_WATER_DROP: c_int = 26;
pub const ICON_COLOR_PICKER: c_int = 27;
pub const ICON_RUBBER: c_int = 28;
pub const ICON_COLOR_BUCKET: c_int = 29;
pub const ICON_TEXT_T: c_int = 30;
pub const ICON_TEXT_A: c_int = 31;
pub const ICON_SCALE: c_int = 32;
pub const ICON_RESIZE: c_int = 33;
pub const ICON_FILTER_POINT: c_int = 34;
pub const ICON_FILTER_BILINEAR: c_int = 35;
pub const ICON_CROP: c_int = 36;
pub const ICON_CROP_ALPHA: c_int = 37;
pub const ICON_SQUARE_TOGGLE: c_int = 38;
pub const ICON_SYMMETRY: c_int = 39;
pub const ICON_SYMMETRY_HORIZONTAL: c_int = 40;
pub const ICON_SYMMETRY_VERTICAL: c_int = 41;
pub const ICON_LENS: c_int = 42;
pub const ICON_LENS_BIG: c_int = 43;
pub const ICON_EYE_ON: c_int = 44;
pub const ICON_EYE_OFF: c_int = 45;
pub const ICON_FILTER_TOP: c_int = 46;
pub const ICON_FILTER: c_int = 47;
pub const ICON_TARGET_POINT: c_int = 48;
pub const ICON_TARGET_SMALL: c_int = 49;
pub const ICON_TARGET_BIG: c_int = 50;
pub const ICON_TARGET_MOVE: c_int = 51;
pub const ICON_CURSOR_MOVE: c_int = 52;
pub const ICON_CURSOR_SCALE: c_int = 53;
pub const ICON_CURSOR_SCALE_RIGHT: c_int = 54;
pub const ICON_CURSOR_SCALE_LEFT: c_int = 55;
pub const ICON_UNDO: c_int = 56;
pub const ICON_REDO: c_int = 57;
pub const ICON_REREDO: c_int = 58;
pub const ICON_MUTATE: c_int = 59;
pub const ICON_ROTATE: c_int = 60;
pub const ICON_REPEAT: c_int = 61;
pub const ICON_SHUFFLE: c_int = 62;
pub const ICON_EMPTYBOX: c_int = 63;
pub const ICON_TARGET: c_int = 64;
pub const ICON_TARGET_SMALL_FILL: c_int = 65;
pub const ICON_TARGET_BIG_FILL: c_int = 66;
pub const ICON_TARGET_MOVE_FILL: c_int = 67;
pub const ICON_CURSOR_MOVE_FILL: c_int = 68;
pub const ICON_CURSOR_SCALE_FILL: c_int = 69;
pub const ICON_CURSOR_SCALE_RIGHT_FILL: c_int = 70;
pub const ICON_CURSOR_SCALE_LEFT_FILL: c_int = 71;
pub const ICON_UNDO_FILL: c_int = 72;
pub const ICON_REDO_FILL: c_int = 73;
pub const ICON_REREDO_FILL: c_int = 74;
pub const ICON_MUTATE_FILL: c_int = 75;
pub const ICON_ROTATE_FILL: c_int = 76;
pub const ICON_REPEAT_FILL: c_int = 77;
pub const ICON_SHUFFLE_FILL: c_int = 78;
pub const ICON_EMPTYBOX_SMALL: c_int = 79;
pub const ICON_BOX: c_int = 80;
pub const ICON_BOX_TOP: c_int = 81;
pub const ICON_BOX_TOP_RIGHT: c_int = 82;
pub const ICON_BOX_RIGHT: c_int = 83;
pub const ICON_BOX_BOTTOM_RIGHT: c_int = 84;
pub const ICON_BOX_BOTTOM: c_int = 85;
pub const ICON_BOX_BOTTOM_LEFT: c_int = 86;
pub const ICON_BOX_LEFT: c_int = 87;
pub const ICON_BOX_TOP_LEFT: c_int = 88;
pub const ICON_BOX_CENTER: c_int = 89;
pub const ICON_BOX_CIRCLE_MASK: c_int = 90;
pub const ICON_POT: c_int = 91;
pub const ICON_ALPHA_MULTIPLY: c_int = 92;
pub const ICON_ALPHA_CLEAR: c_int = 93;
pub const ICON_DITHERING: c_int = 94;
pub const ICON_MIPMAPS: c_int = 95;
pub const ICON_BOX_GRID: c_int = 96;
pub const ICON_GRID: c_int = 97;
pub const ICON_BOX_CORNERS_SMALL: c_int = 98;
pub const ICON_BOX_CORNERS_BIG: c_int = 99;
pub const ICON_FOUR_BOXES: c_int = 100;
pub const ICON_GRID_FILL: c_int = 101;
pub const ICON_BOX_MULTISIZE: c_int = 102;
pub const ICON_ZOOM_SMALL: c_int = 103;
pub const ICON_ZOOM_MEDIUM: c_int = 104;
pub const ICON_ZOOM_BIG: c_int = 105;
pub const ICON_ZOOM_ALL: c_int = 106;
pub const ICON_ZOOM_CENTER: c_int = 107;
pub const ICON_BOX_DOTS_SMALL: c_int = 108;
pub const ICON_BOX_DOTS_BIG: c_int = 109;
pub const ICON_BOX_CONCENTRIC: c_int = 110;
pub const ICON_BOX_GRID_BIG: c_int = 111;
pub const ICON_OK_TICK: c_int = 112;
pub const ICON_CROSS: c_int = 113;
pub const ICON_ARROW_LEFT: c_int = 114;
pub const ICON_ARROW_RIGHT: c_int = 115;
pub const ICON_ARROW_DOWN: c_int = 116;
pub const ICON_ARROW_UP: c_int = 117;
pub const ICON_ARROW_LEFT_FILL: c_int = 118;
pub const ICON_ARROW_RIGHT_FILL: c_int = 119;
pub const ICON_ARROW_DOWN_FILL: c_int = 120;
pub const ICON_ARROW_UP_FILL: c_int = 121;
pub const ICON_AUDIO: c_int = 122;
pub const ICON_FX: c_int = 123;
pub const ICON_WAVE: c_int = 124;
pub const ICON_WAVE_SINUS: c_int = 125;
pub const ICON_WAVE_SQUARE: c_int = 126;
pub const ICON_WAVE_TRIANGULAR: c_int = 127;
pub const ICON_CROSS_SMALL: c_int = 128;
pub const ICON_PLAYER_PREVIOUS: c_int = 129;
pub const ICON_PLAYER_PLAY_BACK: c_int = 130;
pub const ICON_PLAYER_PLAY: c_int = 131;
pub const ICON_PLAYER_PAUSE: c_int = 132;
pub const ICON_PLAYER_STOP: c_int = 133;
pub const ICON_PLAYER_NEXT: c_int = 134;
pub const ICON_PLAYER_RECORD: c_int = 135;
pub const ICON_MAGNET: c_int = 136;
pub const ICON_LOCK_CLOSE: c_int = 137;
pub const ICON_LOCK_OPEN: c_int = 138;
pub const ICON_CLOCK: c_int = 139;
pub const ICON_TOOLS: c_int = 140;
pub const ICON_GEAR: c_int = 141;
pub const ICON_GEAR_BIG: c_int = 142;
pub const ICON_BIN: c_int = 143;
pub const ICON_HAND_POINTER: c_int = 144;
pub const ICON_LASER: c_int = 145;
pub const ICON_COIN: c_int = 146;
pub const ICON_EXPLOSION: c_int = 147;
pub const ICON_1UP: c_int = 148;
pub const ICON_PLAYER: c_int = 149;
pub const ICON_PLAYER_JUMP: c_int = 150;
pub const ICON_KEY: c_int = 151;
pub const ICON_DEMON: c_int = 152;
pub const ICON_TEXT_POPUP: c_int = 153;
pub const ICON_GEAR_EX: c_int = 154;
pub const ICON_CRACK: c_int = 155;
pub const ICON_CRACK_POINTS: c_int = 156;
pub const ICON_STAR: c_int = 157;
pub const ICON_DOOR: c_int = 158;
pub const ICON_EXIT: c_int = 159;
pub const ICON_MODE_2D: c_int = 160;
pub const ICON_MODE_3D: c_int = 161;
pub const ICON_CUBE: c_int = 162;
pub const ICON_CUBE_FACE_TOP: c_int = 163;
pub const ICON_CUBE_FACE_LEFT: c_int = 164;
pub const ICON_CUBE_FACE_FRONT: c_int = 165;
pub const ICON_CUBE_FACE_BOTTOM: c_int = 166;
pub const ICON_CUBE_FACE_RIGHT: c_int = 167;
pub const ICON_CUBE_FACE_BACK: c_int = 168;
pub const ICON_CAMERA: c_int = 169;
pub const ICON_SPECIAL: c_int = 170;
pub const ICON_LINK_NET: c_int = 171;
pub const ICON_LINK_BOXES: c_int = 172;
pub const ICON_LINK_MULTI: c_int = 173;
pub const ICON_LINK: c_int = 174;
pub const ICON_LINK_BROKE: c_int = 175;
pub const ICON_TEXT_NOTES: c_int = 176;
pub const ICON_NOTEBOOK: c_int = 177;
pub const ICON_SUITCASE: c_int = 178;
pub const ICON_SUITCASE_ZIP: c_int = 179;
pub const ICON_MAILBOX: c_int = 180;
pub const ICON_MONITOR: c_int = 181;
pub const ICON_PRINTER: c_int = 182;
pub const ICON_PHOTO_CAMERA: c_int = 183;
pub const ICON_PHOTO_CAMERA_FLASH: c_int = 184;
pub const ICON_HOUSE: c_int = 185;
pub const ICON_HEART: c_int = 186;
pub const ICON_CORNER: c_int = 187;
pub const ICON_VERTICAL_BARS: c_int = 188;
pub const ICON_VERTICAL_BARS_FILL: c_int = 189;
pub const ICON_LIFE_BARS: c_int = 190;
pub const ICON_INFO: c_int = 191;
pub const ICON_CROSSLINE: c_int = 192;
pub const ICON_HELP: c_int = 193;
pub const ICON_FILETYPE_ALPHA: c_int = 194;
pub const ICON_FILETYPE_HOME: c_int = 195;
pub const ICON_LAYERS_VISIBLE: c_int = 196;
pub const ICON_LAYERS: c_int = 197;
pub const ICON_WINDOW: c_int = 198;
pub const ICON_HIDPI: c_int = 199;
pub const ICON_FILETYPE_BINARY: c_int = 200;
pub const ICON_HEX: c_int = 201;
pub const ICON_SHIELD: c_int = 202;
pub const ICON_FILE_NEW: c_int = 203;
pub const ICON_FOLDER_ADD: c_int = 204;
pub const ICON_ALARM: c_int = 205;
pub const ICON_CPU: c_int = 206;
pub const ICON_ROM: c_int = 207;
pub const ICON_STEP_OVER: c_int = 208;
pub const ICON_STEP_INTO: c_int = 209;
pub const ICON_STEP_OUT: c_int = 210;
pub const ICON_RESTART: c_int = 211;
pub const ICON_BREAKPOINT_ON: c_int = 212;
pub const ICON_BREAKPOINT_OFF: c_int = 213;
pub const ICON_BURGER_MENU: c_int = 214;
pub const ICON_CASE_SENSITIVE: c_int = 215;
pub const ICON_REG_EXP: c_int = 216;
pub const ICON_FOLDER: c_int = 217;
pub const ICON_FILE: c_int = 218;
pub const ICON_SAND_TIMER: c_int = 219;
pub const ICON_220: c_int = 220;
pub const ICON_221: c_int = 221;
pub const ICON_222: c_int = 222;
pub const ICON_223: c_int = 223;
pub const ICON_224: c_int = 224;
pub const ICON_225: c_int = 225;
pub const ICON_226: c_int = 226;
pub const ICON_227: c_int = 227;
pub const ICON_228: c_int = 228;
pub const ICON_229: c_int = 229;
pub const ICON_230: c_int = 230;
pub const ICON_231: c_int = 231;
pub const ICON_232: c_int = 232;
pub const ICON_233: c_int = 233;
pub const ICON_234: c_int = 234;
pub const ICON_235: c_int = 235;
pub const ICON_236: c_int = 236;
pub const ICON_237: c_int = 237;
pub const ICON_238: c_int = 238;
pub const ICON_239: c_int = 239;
pub const ICON_240: c_int = 240;
pub const ICON_241: c_int = 241;
pub const ICON_242: c_int = 242;
pub const ICON_243: c_int = 243;
pub const ICON_244: c_int = 244;
pub const ICON_245: c_int = 245;
pub const ICON_246: c_int = 246;
pub const ICON_247: c_int = 247;
pub const ICON_248: c_int = 248;
pub const ICON_249: c_int = 249;
pub const ICON_250: c_int = 250;
pub const ICON_251: c_int = 251;
pub const ICON_252: c_int = 252;
pub const ICON_253: c_int = 253;
pub const ICON_254: c_int = 254;
pub const ICON_255: c_int = 255;
pub const GuiIconName = c_uint;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __uint64_t = c_ulonglong;
pub const __darwin_intptr_t = c_long;
pub const __darwin_natural_t = c_uint;
pub const __darwin_ct_rune_t = c_int;
pub const __mbstate_t = extern union {
    __mbstate8: [128]u8,
    _mbstateL: c_longlong,
};
pub const __darwin_mbstate_t = __mbstate_t;
pub const __darwin_ptrdiff_t = c_long;
pub const __darwin_size_t = c_ulong;
pub const __darwin_va_list = __builtin_va_list;
pub const __darwin_wchar_t = c_int;
pub const __darwin_rune_t = __darwin_wchar_t;
pub const __darwin_wint_t = c_int;
pub const __darwin_clock_t = c_ulong;
pub const __darwin_socklen_t = __uint32_t;
pub const __darwin_ssize_t = c_long;
pub const __darwin_time_t = c_long;
pub const __darwin_blkcnt_t = __int64_t;
pub const __darwin_blksize_t = __int32_t;
pub const __darwin_dev_t = __int32_t;
pub const __darwin_fsblkcnt_t = c_uint;
pub const __darwin_fsfilcnt_t = c_uint;
pub const __darwin_gid_t = __uint32_t;
pub const __darwin_id_t = __uint32_t;
pub const __darwin_ino64_t = __uint64_t;
pub const __darwin_ino_t = __darwin_ino64_t;
pub const __darwin_mach_port_name_t = __darwin_natural_t;
pub const __darwin_mach_port_t = __darwin_mach_port_name_t;
pub const __darwin_mode_t = __uint16_t;
pub const __darwin_pid_t = __int32_t;
pub const __darwin_sigset_t = __uint32_t;
pub const __darwin_suseconds_t = __int32_t;
pub const __darwin_uid_t = __uint32_t;
pub const __darwin_useconds_t = __uint32_t;
pub const __darwin_uuid_t = [16]u8;
pub const __darwin_uuid_string_t = [37]u8;
pub const struct___darwin_pthread_handler_rec = extern struct {
    __routine: ?*const fn (?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque) callconv(.C) void),
    __arg: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __next: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
};
pub const struct__opaque_pthread_attr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_cond_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [40]u8 = @import("std").mem.zeroes([40]u8),
};
pub const struct__opaque_pthread_condattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_mutex_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [56]u8 = @import("std").mem.zeroes([56]u8),
};
pub const struct__opaque_pthread_mutexattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_once_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [8]u8 = @import("std").mem.zeroes([8]u8),
};
pub const struct__opaque_pthread_rwlock_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [192]u8 = @import("std").mem.zeroes([192]u8),
};
pub const struct__opaque_pthread_rwlockattr_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __opaque: [16]u8 = @import("std").mem.zeroes([16]u8),
};
pub const struct__opaque_pthread_t = extern struct {
    __sig: c_long = @import("std").mem.zeroes(c_long),
    __cleanup_stack: [*c]struct___darwin_pthread_handler_rec = @import("std").mem.zeroes([*c]struct___darwin_pthread_handler_rec),
    __opaque: [8176]u8 = @import("std").mem.zeroes([8176]u8),
};
pub const __darwin_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const __darwin_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const __darwin_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const __darwin_pthread_key_t = c_ulong;
pub const __darwin_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const __darwin_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const __darwin_pthread_once_t = struct__opaque_pthread_once_t;
pub const __darwin_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const __darwin_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const __darwin_pthread_t = [*c]struct__opaque_pthread_t;
pub const __darwin_nl_item = c_int;
pub const __darwin_wctrans_t = c_int;
pub const __darwin_wctype_t = __uint32_t;
pub const u_int8_t = u8;
pub const u_int16_t = c_ushort;
pub const u_int32_t = c_uint;
pub const u_int64_t = c_ulonglong;
pub const register_t = i64;
pub const user_addr_t = u_int64_t;
pub const user_size_t = u_int64_t;
pub const user_ssize_t = i64;
pub const user_long_t = i64;
pub const user_ulong_t = u_int64_t;
pub const user_time_t = i64;
pub const user_off_t = i64;
pub const syscall_arg_t = u_int64_t;
pub extern fn renameat(c_int, [*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn renamex_np([*c]const u8, [*c]const u8, c_uint) c_int;
pub extern fn renameatx_np(c_int, [*c]const u8, c_int, [*c]const u8, c_uint) c_int;
pub extern var __stdinp: [*c]FILE;
pub extern var __stdoutp: [*c]FILE;
pub extern var __stderrp: [*c]FILE;
pub extern fn clearerr([*c]FILE) void;
pub extern fn fclose([*c]FILE) c_int;
pub extern fn feof([*c]FILE) c_int;
pub extern fn ferror([*c]FILE) c_int;
pub extern fn fflush([*c]FILE) c_int;
pub extern fn fgetc([*c]FILE) c_int;
pub extern fn fgetpos(noalias [*c]FILE, [*c]fpos_t) c_int;
pub extern fn fgets(noalias [*c]u8, c_int, [*c]FILE) [*c]u8;
pub extern fn fopen(__filename: [*c]const u8, __mode: [*c]const u8) [*c]FILE;
pub extern fn fprintf([*c]FILE, [*c]const u8, ...) c_int;
pub extern fn fputc(c_int, [*c]FILE) c_int;
pub extern fn fputs(noalias [*c]const u8, noalias [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn freopen(noalias [*c]const u8, noalias [*c]const u8, noalias [*c]FILE) [*c]FILE;
pub extern fn fscanf(noalias [*c]FILE, noalias [*c]const u8, ...) c_int;
pub extern fn fseek([*c]FILE, c_long, c_int) c_int;
pub extern fn fsetpos([*c]FILE, [*c]const fpos_t) c_int;
pub extern fn ftell([*c]FILE) c_long;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __nitems: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn getc([*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn gets([*c]u8) [*c]u8;
pub extern fn perror([*c]const u8) void;
pub extern fn printf([*c]const u8, ...) c_int;
pub extern fn putc(c_int, [*c]FILE) c_int;
pub extern fn putchar(c_int) c_int;
pub extern fn puts([*c]const u8) c_int;
pub extern fn remove([*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn rewind([*c]FILE) void;
pub extern fn scanf(noalias [*c]const u8, ...) c_int;
pub extern fn setbuf(noalias [*c]FILE, noalias [*c]u8) void;
pub extern fn setvbuf(noalias [*c]FILE, noalias [*c]u8, c_int, usize) c_int;
pub extern fn sprintf([*c]u8, [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias [*c]const u8, noalias [*c]const u8, ...) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn ungetc(c_int, [*c]FILE) c_int;
pub extern fn vfprintf([*c]FILE, [*c]const u8, __builtin_va_list) c_int;
pub extern fn vprintf([*c]const u8, __builtin_va_list) c_int;
pub extern fn vsprintf([*c]u8, [*c]const u8, __builtin_va_list) c_int;
pub extern fn ctermid([*c]u8) [*c]u8;
pub extern fn fdopen(c_int, [*c]const u8) [*c]FILE;
pub extern fn fileno([*c]FILE) c_int;
pub extern fn pclose([*c]FILE) c_int;
pub extern fn popen([*c]const u8, [*c]const u8) [*c]FILE;
pub extern fn __srget([*c]FILE) c_int;
pub extern fn __svfscanf([*c]FILE, [*c]const u8, va_list) c_int;
pub extern fn __swbuf(c_int, [*c]FILE) c_int;
pub inline fn __sputc(arg__c: c_int, arg__p: [*c]FILE) c_int {
    var _c = arg__c;
    _ = &_c;
    var _p = arg__p;
    _ = &_p;
    if (((blk: {
        const ref = &_p.*._w;
        ref.* -= 1;
        break :blk ref.*;
    }) >= @as(c_int, 0)) or ((_p.*._w >= _p.*._lbfsize) and (@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(_c))))))) != @as(c_int, '\n')))) return @as(c_int, @bitCast(@as(c_uint, blk: {
        const tmp = @as(u8, @bitCast(@as(i8, @truncate(_c))));
        (blk_1: {
            const ref = &_p.*._p;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        }).* = tmp;
        break :blk tmp;
    }))) else return __swbuf(_c, _p);
    return 0;
}
pub extern fn flockfile([*c]FILE) void;
pub extern fn ftrylockfile([*c]FILE) c_int;
pub extern fn funlockfile([*c]FILE) void;
pub extern fn getc_unlocked([*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn putc_unlocked(c_int, [*c]FILE) c_int;
pub extern fn putchar_unlocked(c_int) c_int;
pub extern fn getw([*c]FILE) c_int;
pub extern fn putw(c_int, [*c]FILE) c_int;
pub extern fn tempnam(__dir: [*c]const u8, __prefix: [*c]const u8) [*c]u8;
pub const off_t = __darwin_off_t;
pub extern fn fseeko(__stream: [*c]FILE, __offset: off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) off_t;
pub extern fn snprintf(__str: [*c]u8, __size: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, __builtin_va_list) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __builtin_va_list) c_int;
pub extern fn vsnprintf(__str: [*c]u8, __size: c_ulong, __format: [*c]const u8, __builtin_va_list) c_int;
pub extern fn vsscanf(noalias __str: [*c]const u8, noalias __format: [*c]const u8, __builtin_va_list) c_int;
pub extern fn dprintf(c_int, noalias [*c]const u8, ...) c_int;
pub extern fn vdprintf(c_int, noalias [*c]const u8, va_list) c_int;
pub extern fn getdelim(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) isize;
pub extern fn getline(noalias __linep: [*c][*c]u8, noalias __linecapp: [*c]usize, noalias __stream: [*c]FILE) isize;
pub extern fn fmemopen(noalias __buf: ?*anyopaque, __size: usize, noalias __mode: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufp: [*c][*c]u8, __sizep: [*c]usize) [*c]FILE;
pub extern const sys_nerr: c_int;
pub const sys_errlist: [*c]const [*c]const u8 = @extern([*c]const [*c]const u8, .{
    .name = "sys_errlist",
});
pub extern fn asprintf(noalias [*c][*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn ctermid_r([*c]u8) [*c]u8;
pub extern fn fgetln([*c]FILE, [*c]usize) [*c]u8;
pub extern fn fmtcheck([*c]const u8, [*c]const u8) [*c]const u8;
pub extern fn fpurge([*c]FILE) c_int;
pub extern fn setbuffer([*c]FILE, [*c]u8, c_int) void;
pub extern fn setlinebuf([*c]FILE) c_int;
pub extern fn vasprintf(noalias [*c][*c]u8, noalias [*c]const u8, va_list) c_int;
pub extern fn funopen(?*const anyopaque, ?*const fn (?*anyopaque, [*c]u8, c_int) callconv(.C) c_int, ?*const fn (?*anyopaque, [*c]const u8, c_int) callconv(.C) c_int, ?*const fn (?*anyopaque, fpos_t, c_int) callconv(.C) fpos_t, ?*const fn (?*anyopaque) callconv(.C) c_int) [*c]FILE;
pub extern fn __sprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __snprintf_chk(noalias [*c]u8, usize, c_int, usize, noalias [*c]const u8, ...) c_int;
pub extern fn __vsprintf_chk(noalias [*c]u8, c_int, usize, noalias [*c]const u8, va_list) c_int;
pub extern fn __vsnprintf_chk(noalias [*c]u8, usize, c_int, usize, noalias [*c]const u8, va_list) c_int;
pub const P_ALL: c_int = 0;
pub const P_PID: c_int = 1;
pub const P_PGID: c_int = 2;
pub const idtype_t = c_uint;
pub const pid_t = __darwin_pid_t;
pub const id_t = __darwin_id_t;
pub const sig_atomic_t = c_int;
pub const struct___darwin_arm_exception_state = extern struct {
    __exception: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __fsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __far: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_exception_state64 = extern struct {
    __far: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __esr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __exception: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_thread_state = extern struct {
    __r: [13]__uint32_t = @import("std").mem.zeroes([13]__uint32_t),
    __sp: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __lr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __pc: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __cpsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_thread_state64 = extern struct {
    __x: [29]__uint64_t = @import("std").mem.zeroes([29]__uint64_t),
    __fp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __lr: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __sp: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __pc: __uint64_t = @import("std").mem.zeroes(__uint64_t),
    __cpsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __pad: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_vfp_state = extern struct {
    __r: [64]__uint32_t = @import("std").mem.zeroes([64]__uint32_t),
    __fpscr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const __uint128_t = u128;
pub const struct___darwin_arm_neon_state64 = extern struct {
    __v: [32]__uint128_t = @import("std").mem.zeroes([32]__uint128_t),
    __fpsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __fpcr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___darwin_arm_neon_state = extern struct {
    __v: [16]__uint128_t = @import("std").mem.zeroes([16]__uint128_t),
    __fpsr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
    __fpcr: __uint32_t = @import("std").mem.zeroes(__uint32_t),
};
pub const struct___arm_pagein_state = extern struct {
    __pagein_error: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct___arm_legacy_debug_state = extern struct {
    __bvr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __bcr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __wvr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __wcr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
};
pub const struct___darwin_arm_debug_state32 = extern struct {
    __bvr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __bcr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __wvr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __wcr: [16]__uint32_t = @import("std").mem.zeroes([16]__uint32_t),
    __mdscr_el1: __uint64_t = @import("std").mem.zeroes(__uint64_t),
};
pub const struct___darwin_arm_debug_state64 = extern struct {
    __bvr: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
    __bcr: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
    __wvr: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
    __wcr: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
    __mdscr_el1: __uint64_t = @import("std").mem.zeroes(__uint64_t),
};
pub const struct___darwin_arm_cpmu_state64 = extern struct {
    __ctrs: [16]__uint64_t = @import("std").mem.zeroes([16]__uint64_t),
};
pub const struct___darwin_mcontext32 = extern struct {
    __es: struct___darwin_arm_exception_state = @import("std").mem.zeroes(struct___darwin_arm_exception_state),
    __ss: struct___darwin_arm_thread_state = @import("std").mem.zeroes(struct___darwin_arm_thread_state),
    __fs: struct___darwin_arm_vfp_state = @import("std").mem.zeroes(struct___darwin_arm_vfp_state),
};
pub const struct___darwin_mcontext64 = extern struct {
    __es: struct___darwin_arm_exception_state64 = @import("std").mem.zeroes(struct___darwin_arm_exception_state64),
    __ss: struct___darwin_arm_thread_state64 = @import("std").mem.zeroes(struct___darwin_arm_thread_state64),
    __ns: struct___darwin_arm_neon_state64 = @import("std").mem.zeroes(struct___darwin_arm_neon_state64),
};
pub const mcontext_t = [*c]struct___darwin_mcontext64;
pub const pthread_attr_t = __darwin_pthread_attr_t;
pub const struct___darwin_sigaltstack = extern struct {
    ss_sp: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    ss_size: __darwin_size_t = @import("std").mem.zeroes(__darwin_size_t),
    ss_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const stack_t = struct___darwin_sigaltstack;
pub const struct___darwin_ucontext = extern struct {
    uc_onstack: c_int = @import("std").mem.zeroes(c_int),
    uc_sigmask: __darwin_sigset_t = @import("std").mem.zeroes(__darwin_sigset_t),
    uc_stack: struct___darwin_sigaltstack = @import("std").mem.zeroes(struct___darwin_sigaltstack),
    uc_link: [*c]struct___darwin_ucontext = @import("std").mem.zeroes([*c]struct___darwin_ucontext),
    uc_mcsize: __darwin_size_t = @import("std").mem.zeroes(__darwin_size_t),
    uc_mcontext: [*c]struct___darwin_mcontext64 = @import("std").mem.zeroes([*c]struct___darwin_mcontext64),
};
pub const ucontext_t = struct___darwin_ucontext;
pub const sigset_t = __darwin_sigset_t;
pub const uid_t = __darwin_uid_t;
pub const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*anyopaque,
};
pub const struct_sigevent = extern struct {
    sigev_notify: c_int = @import("std").mem.zeroes(c_int),
    sigev_signo: c_int = @import("std").mem.zeroes(c_int),
    sigev_value: union_sigval = @import("std").mem.zeroes(union_sigval),
    sigev_notify_function: ?*const fn (union_sigval) callconv(.C) void = @import("std").mem.zeroes(?*const fn (union_sigval) callconv(.C) void),
    sigev_notify_attributes: [*c]pthread_attr_t = @import("std").mem.zeroes([*c]pthread_attr_t),
};
pub const struct___siginfo = extern struct {
    si_signo: c_int = @import("std").mem.zeroes(c_int),
    si_errno: c_int = @import("std").mem.zeroes(c_int),
    si_code: c_int = @import("std").mem.zeroes(c_int),
    si_pid: pid_t = @import("std").mem.zeroes(pid_t),
    si_uid: uid_t = @import("std").mem.zeroes(uid_t),
    si_status: c_int = @import("std").mem.zeroes(c_int),
    si_addr: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    si_value: union_sigval = @import("std").mem.zeroes(union_sigval),
    si_band: c_long = @import("std").mem.zeroes(c_long),
    __pad: [7]c_ulong = @import("std").mem.zeroes([7]c_ulong),
};
pub const siginfo_t = struct___siginfo;
pub const union___sigaction_u = extern union {
    __sa_handler: ?*const fn (c_int) callconv(.C) void,
    __sa_sigaction: ?*const fn (c_int, [*c]struct___siginfo, ?*anyopaque) callconv(.C) void,
};
pub const struct___sigaction = extern struct {
    __sigaction_u: union___sigaction_u = @import("std").mem.zeroes(union___sigaction_u),
    sa_tramp: ?*const fn (?*anyopaque, c_int, c_int, [*c]siginfo_t, ?*anyopaque) callconv(.C) void = @import("std").mem.zeroes(?*const fn (?*anyopaque, c_int, c_int, [*c]siginfo_t, ?*anyopaque) callconv(.C) void),
    sa_mask: sigset_t = @import("std").mem.zeroes(sigset_t),
    sa_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_sigaction = extern struct {
    __sigaction_u: union___sigaction_u = @import("std").mem.zeroes(union___sigaction_u),
    sa_mask: sigset_t = @import("std").mem.zeroes(sigset_t),
    sa_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const sig_t = ?*const fn (c_int) callconv(.C) void;
pub const struct_sigvec = extern struct {
    sv_handler: ?*const fn (c_int) callconv(.C) void = @import("std").mem.zeroes(?*const fn (c_int) callconv(.C) void),
    sv_mask: c_int = @import("std").mem.zeroes(c_int),
    sv_flags: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_sigstack = extern struct {
    ss_sp: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    ss_onstack: c_int = @import("std").mem.zeroes(c_int),
};
pub extern fn signal(c_int, ?*const fn (c_int) callconv(.C) void) ?*const fn (c_int) callconv(.C) void;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast8_t = i8;
pub const int_fast16_t = i16;
pub const int_fast32_t = i32;
pub const int_fast64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = u16;
pub const uint_fast32_t = u32;
pub const uint_fast64_t = u64;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const struct_timeval = extern struct {
    tv_sec: __darwin_time_t = @import("std").mem.zeroes(__darwin_time_t),
    tv_usec: __darwin_suseconds_t = @import("std").mem.zeroes(__darwin_suseconds_t),
};
pub const rlim_t = __uint64_t;
pub const struct_rusage = extern struct {
    ru_utime: struct_timeval = @import("std").mem.zeroes(struct_timeval),
    ru_stime: struct_timeval = @import("std").mem.zeroes(struct_timeval),
    ru_maxrss: c_long = @import("std").mem.zeroes(c_long),
    ru_ixrss: c_long = @import("std").mem.zeroes(c_long),
    ru_idrss: c_long = @import("std").mem.zeroes(c_long),
    ru_isrss: c_long = @import("std").mem.zeroes(c_long),
    ru_minflt: c_long = @import("std").mem.zeroes(c_long),
    ru_majflt: c_long = @import("std").mem.zeroes(c_long),
    ru_nswap: c_long = @import("std").mem.zeroes(c_long),
    ru_inblock: c_long = @import("std").mem.zeroes(c_long),
    ru_oublock: c_long = @import("std").mem.zeroes(c_long),
    ru_msgsnd: c_long = @import("std").mem.zeroes(c_long),
    ru_msgrcv: c_long = @import("std").mem.zeroes(c_long),
    ru_nsignals: c_long = @import("std").mem.zeroes(c_long),
    ru_nvcsw: c_long = @import("std").mem.zeroes(c_long),
    ru_nivcsw: c_long = @import("std").mem.zeroes(c_long),
};
pub const rusage_info_t = ?*anyopaque;
pub const struct_rusage_info_v0 = extern struct {
    ri_uuid: [16]u8 = @import("std").mem.zeroes([16]u8),
    ri_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_wired_size: u64 = @import("std").mem.zeroes(u64),
    ri_resident_size: u64 = @import("std").mem.zeroes(u64),
    ri_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_proc_start_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_proc_exit_abstime: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_rusage_info_v1 = extern struct {
    ri_uuid: [16]u8 = @import("std").mem.zeroes([16]u8),
    ri_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_wired_size: u64 = @import("std").mem.zeroes(u64),
    ri_resident_size: u64 = @import("std").mem.zeroes(u64),
    ri_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_proc_start_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_proc_exit_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_child_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_child_elapsed_abstime: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_rusage_info_v2 = extern struct {
    ri_uuid: [16]u8 = @import("std").mem.zeroes([16]u8),
    ri_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_wired_size: u64 = @import("std").mem.zeroes(u64),
    ri_resident_size: u64 = @import("std").mem.zeroes(u64),
    ri_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_proc_start_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_proc_exit_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_child_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_child_elapsed_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_bytesread: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_byteswritten: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_rusage_info_v3 = extern struct {
    ri_uuid: [16]u8 = @import("std").mem.zeroes([16]u8),
    ri_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_wired_size: u64 = @import("std").mem.zeroes(u64),
    ri_resident_size: u64 = @import("std").mem.zeroes(u64),
    ri_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_proc_start_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_proc_exit_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_child_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_child_elapsed_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_bytesread: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_byteswritten: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_default: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_maintenance: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_background: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_utility: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_legacy: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_user_initiated: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_user_interactive: u64 = @import("std").mem.zeroes(u64),
    ri_billed_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_serviced_system_time: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_rusage_info_v4 = extern struct {
    ri_uuid: [16]u8 = @import("std").mem.zeroes([16]u8),
    ri_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_wired_size: u64 = @import("std").mem.zeroes(u64),
    ri_resident_size: u64 = @import("std").mem.zeroes(u64),
    ri_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_proc_start_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_proc_exit_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_child_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_child_elapsed_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_bytesread: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_byteswritten: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_default: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_maintenance: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_background: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_utility: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_legacy: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_user_initiated: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_user_interactive: u64 = @import("std").mem.zeroes(u64),
    ri_billed_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_serviced_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_logical_writes: u64 = @import("std").mem.zeroes(u64),
    ri_lifetime_max_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_instructions: u64 = @import("std").mem.zeroes(u64),
    ri_cycles: u64 = @import("std").mem.zeroes(u64),
    ri_billed_energy: u64 = @import("std").mem.zeroes(u64),
    ri_serviced_energy: u64 = @import("std").mem.zeroes(u64),
    ri_interval_max_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_runnable_time: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_rusage_info_v5 = extern struct {
    ri_uuid: [16]u8 = @import("std").mem.zeroes([16]u8),
    ri_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_wired_size: u64 = @import("std").mem.zeroes(u64),
    ri_resident_size: u64 = @import("std").mem.zeroes(u64),
    ri_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_proc_start_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_proc_exit_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_child_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_child_elapsed_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_bytesread: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_byteswritten: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_default: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_maintenance: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_background: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_utility: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_legacy: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_user_initiated: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_user_interactive: u64 = @import("std").mem.zeroes(u64),
    ri_billed_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_serviced_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_logical_writes: u64 = @import("std").mem.zeroes(u64),
    ri_lifetime_max_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_instructions: u64 = @import("std").mem.zeroes(u64),
    ri_cycles: u64 = @import("std").mem.zeroes(u64),
    ri_billed_energy: u64 = @import("std").mem.zeroes(u64),
    ri_serviced_energy: u64 = @import("std").mem.zeroes(u64),
    ri_interval_max_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_runnable_time: u64 = @import("std").mem.zeroes(u64),
    ri_flags: u64 = @import("std").mem.zeroes(u64),
};
pub const struct_rusage_info_v6 = extern struct {
    ri_uuid: [16]u8 = @import("std").mem.zeroes([16]u8),
    ri_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_wired_size: u64 = @import("std").mem.zeroes(u64),
    ri_resident_size: u64 = @import("std").mem.zeroes(u64),
    ri_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_proc_start_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_proc_exit_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_child_user_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_child_pkg_idle_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_interrupt_wkups: u64 = @import("std").mem.zeroes(u64),
    ri_child_pageins: u64 = @import("std").mem.zeroes(u64),
    ri_child_elapsed_abstime: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_bytesread: u64 = @import("std").mem.zeroes(u64),
    ri_diskio_byteswritten: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_default: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_maintenance: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_background: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_utility: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_legacy: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_user_initiated: u64 = @import("std").mem.zeroes(u64),
    ri_cpu_time_qos_user_interactive: u64 = @import("std").mem.zeroes(u64),
    ri_billed_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_serviced_system_time: u64 = @import("std").mem.zeroes(u64),
    ri_logical_writes: u64 = @import("std").mem.zeroes(u64),
    ri_lifetime_max_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_instructions: u64 = @import("std").mem.zeroes(u64),
    ri_cycles: u64 = @import("std").mem.zeroes(u64),
    ri_billed_energy: u64 = @import("std").mem.zeroes(u64),
    ri_serviced_energy: u64 = @import("std").mem.zeroes(u64),
    ri_interval_max_phys_footprint: u64 = @import("std").mem.zeroes(u64),
    ri_runnable_time: u64 = @import("std").mem.zeroes(u64),
    ri_flags: u64 = @import("std").mem.zeroes(u64),
    ri_user_ptime: u64 = @import("std").mem.zeroes(u64),
    ri_system_ptime: u64 = @import("std").mem.zeroes(u64),
    ri_pinstructions: u64 = @import("std").mem.zeroes(u64),
    ri_pcycles: u64 = @import("std").mem.zeroes(u64),
    ri_energy_nj: u64 = @import("std").mem.zeroes(u64),
    ri_penergy_nj: u64 = @import("std").mem.zeroes(u64),
    ri_secure_time_in_system: u64 = @import("std").mem.zeroes(u64),
    ri_secure_ptime_in_system: u64 = @import("std").mem.zeroes(u64),
    ri_reserved: [12]u64 = @import("std").mem.zeroes([12]u64),
};
pub const rusage_info_current = struct_rusage_info_v6;
pub const struct_rlimit = extern struct {
    rlim_cur: rlim_t = @import("std").mem.zeroes(rlim_t),
    rlim_max: rlim_t = @import("std").mem.zeroes(rlim_t),
};
pub const struct_proc_rlimit_control_wakeupmon = extern struct {
    wm_flags: u32 = @import("std").mem.zeroes(u32),
    wm_rate: i32 = @import("std").mem.zeroes(i32),
};
pub extern fn getpriority(c_int, id_t) c_int;
pub extern fn getiopolicy_np(c_int, c_int) c_int;
pub extern fn getrlimit(c_int, [*c]struct_rlimit) c_int;
pub extern fn getrusage(c_int, [*c]struct_rusage) c_int;
pub extern fn setpriority(c_int, id_t, c_int) c_int;
pub extern fn setiopolicy_np(c_int, c_int, c_int) c_int;
pub extern fn setrlimit(c_int, [*c]const struct_rlimit) c_int;
pub fn _OSSwapInt16(arg__data: u16) callconv(.C) u16 {
    var _data = arg__data;
    _ = &_data;
    return @as(u16, @bitCast(@as(c_short, @truncate((@as(c_int, @bitCast(@as(c_uint, _data))) << @intCast(8)) | (@as(c_int, @bitCast(@as(c_uint, _data))) >> @intCast(8))))));
}
pub fn _OSSwapInt32(arg__data: u32) callconv(.C) u32 {
    var _data = arg__data;
    _ = &_data;
    _data = __builtin_bswap32(_data);
    return _data;
}
pub fn _OSSwapInt64(arg__data: u64) callconv(.C) u64 {
    var _data = arg__data;
    _ = &_data;
    return __builtin_bswap64(_data);
}
pub const struct__OSUnalignedU16 = extern struct {
    __val: u16 align(1) = @import("std").mem.zeroes(u16),
};
pub const struct__OSUnalignedU32 = extern struct {
    __val: u32 align(1) = @import("std").mem.zeroes(u32),
};
pub const struct__OSUnalignedU64 = extern struct {
    __val: u64 align(1) = @import("std").mem.zeroes(u64),
};
pub fn OSReadSwapInt16(arg__base: ?*const volatile anyopaque, arg__offset: usize) callconv(.C) u16 {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    return _OSSwapInt16(@as([*c]struct__OSUnalignedU16, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val);
}
pub fn OSReadSwapInt32(arg__base: ?*const volatile anyopaque, arg__offset: usize) callconv(.C) u32 {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    return _OSSwapInt32(@as([*c]struct__OSUnalignedU32, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val);
}
pub fn OSReadSwapInt64(arg__base: ?*const volatile anyopaque, arg__offset: usize) callconv(.C) u64 {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    return _OSSwapInt64(@as([*c]struct__OSUnalignedU64, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val);
}
pub fn OSWriteSwapInt16(arg__base: ?*volatile anyopaque, arg__offset: usize, arg__data: u16) callconv(.C) void {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    var _data = arg__data;
    _ = &_data;
    @as([*c]struct__OSUnalignedU16, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val = _OSSwapInt16(_data);
}
pub fn OSWriteSwapInt32(arg__base: ?*volatile anyopaque, arg__offset: usize, arg__data: u32) callconv(.C) void {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    var _data = arg__data;
    _ = &_data;
    @as([*c]struct__OSUnalignedU32, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val = _OSSwapInt32(_data);
}
pub fn OSWriteSwapInt64(arg__base: ?*volatile anyopaque, arg__offset: usize, arg__data: u64) callconv(.C) void {
    var _base = arg__base;
    _ = &_base;
    var _offset = arg__offset;
    _ = &_offset;
    var _data = arg__data;
    _ = &_data;
    @as([*c]struct__OSUnalignedU64, @ptrFromInt(@as(usize, @intCast(@intFromPtr(_base))) +% _offset)).*.__val = _OSSwapInt64(_data);
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:201:19: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_1 = opaque {};
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:220:19: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_2 = opaque {};
pub const union_wait = extern union {
    w_status: c_int,
    w_T: struct_unnamed_1,
    w_S: struct_unnamed_2,
};
pub extern fn wait([*c]c_int) pid_t;
pub extern fn waitpid(pid_t, [*c]c_int, c_int) pid_t;
pub extern fn waitid(idtype_t, id_t, [*c]siginfo_t, c_int) c_int;
pub extern fn wait3([*c]c_int, c_int, [*c]struct_rusage) pid_t;
pub extern fn wait4(pid_t, [*c]c_int, c_int, [*c]struct_rusage) pid_t;
pub extern fn alloca(c_ulong) ?*anyopaque;
pub const ct_rune_t = __darwin_ct_rune_t;
pub const rune_t = __darwin_rune_t;
pub const wchar_t = __darwin_wchar_t;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern var __mb_cur_max: c_int;
pub const malloc_type_id_t = c_ulonglong;
pub extern fn malloc_type_malloc(size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_calloc(count: usize, size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_free(ptr: ?*anyopaque, type_id: malloc_type_id_t) void;
pub extern fn malloc_type_realloc(ptr: ?*anyopaque, size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_valloc(size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_aligned_alloc(alignment: usize, size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_posix_memalign(memptr: [*c]?*anyopaque, alignment: usize, size: usize, type_id: malloc_type_id_t) c_int;
pub const struct__malloc_zone_t = opaque {};
pub const malloc_zone_t = struct__malloc_zone_t;
pub extern fn malloc_type_zone_malloc(zone: ?*malloc_zone_t, size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_zone_calloc(zone: ?*malloc_zone_t, count: usize, size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_zone_free(zone: ?*malloc_zone_t, ptr: ?*anyopaque, type_id: malloc_type_id_t) void;
pub extern fn malloc_type_zone_realloc(zone: ?*malloc_zone_t, ptr: ?*anyopaque, size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_zone_valloc(zone: ?*malloc_zone_t, size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc_type_zone_memalign(zone: ?*malloc_zone_t, alignment: usize, size: usize, type_id: malloc_type_id_t) ?*anyopaque;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__count: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn free(?*anyopaque) void;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn reallocf(__ptr: ?*anyopaque, __size: usize) ?*anyopaque;
pub extern fn valloc(usize) ?*anyopaque;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn abort() noreturn;
pub extern fn abs(c_int) c_int;
pub extern fn atexit(?*const fn () callconv(.C) void) c_int;
pub extern fn atof([*c]const u8) f64;
pub extern fn atoi([*c]const u8) c_int;
pub extern fn atol([*c]const u8) c_long;
pub extern fn atoll([*c]const u8) c_longlong;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nel: usize, __width: usize, __compar: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) ?*anyopaque;
pub extern fn div(c_int, c_int) div_t;
pub extern fn exit(c_int) noreturn;
pub extern fn getenv([*c]const u8) [*c]u8;
pub extern fn labs(c_long) c_long;
pub extern fn ldiv(c_long, c_long) ldiv_t;
pub extern fn llabs(c_longlong) c_longlong;
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn qsort(__base: ?*anyopaque, __nel: usize, __width: usize, __compar: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn rand() c_int;
pub extern fn srand(c_uint) void;
pub extern fn strtod([*c]const u8, [*c][*c]u8) f64;
pub extern fn strtof([*c]const u8, [*c][*c]u8) f32;
pub extern fn strtol(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtold([*c]const u8, [*c][*c]u8) c_longdouble;
pub extern fn strtoll(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoul(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoull(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn system([*c]const u8) c_int;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn _Exit(c_int) noreturn;
pub extern fn a64l([*c]const u8) c_long;
pub extern fn drand48() f64;
pub extern fn ecvt(f64, c_int, noalias [*c]c_int, noalias [*c]c_int) [*c]u8;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn fcvt(f64, c_int, noalias [*c]c_int, noalias [*c]c_int) [*c]u8;
pub extern fn gcvt(f64, c_int, [*c]u8) [*c]u8;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn grantpt(c_int) c_int;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn l64a(c_long) [*c]u8;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn lrand48() c_long;
pub extern fn mktemp([*c]u8) [*c]u8;
pub extern fn mkstemp([*c]u8) c_int;
pub extern fn mrand48() c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn posix_openpt(c_int) c_int;
pub extern fn ptsname(c_int) [*c]u8;
pub extern fn ptsname_r(fildes: c_int, buffer: [*c]u8, buflen: usize) c_int;
pub extern fn putenv([*c]u8) c_int;
pub extern fn random() c_long;
pub extern fn rand_r([*c]c_uint) c_int;
pub extern fn realpath(noalias [*c]const u8, noalias [*c]u8) [*c]u8;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __overwrite: c_int) c_int;
pub extern fn setkey([*c]const u8) void;
pub extern fn setstate([*c]const u8) [*c]u8;
pub extern fn srand48(c_long) void;
pub extern fn srandom(c_uint) void;
pub extern fn unlockpt(c_int) c_int;
pub extern fn unsetenv([*c]const u8) c_int;
pub const dev_t = __darwin_dev_t;
pub const mode_t = __darwin_mode_t;
pub extern fn arc4random() u32;
pub extern fn arc4random_addrandom([*c]u8, c_int) void;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __nbytes: usize) void;
pub extern fn arc4random_stir() void;
pub extern fn arc4random_uniform(__upper_bound: u32) u32;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:273:6: warning: unsupported type: 'BlockPointer'
pub const atexit_b = @compileError("unable to resolve prototype of function");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:273:6

// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:282:7: warning: unsupported type: 'BlockPointer'
pub const bsearch_b = @compileError("unable to resolve prototype of function");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:282:7
pub extern fn cgetcap([*c]u8, [*c]const u8, c_int) [*c]u8;
pub extern fn cgetclose() c_int;
pub extern fn cgetent([*c][*c]u8, [*c][*c]u8, [*c]const u8) c_int;
pub extern fn cgetfirst([*c][*c]u8, [*c][*c]u8) c_int;
pub extern fn cgetmatch([*c]const u8, [*c]const u8) c_int;
pub extern fn cgetnext([*c][*c]u8, [*c][*c]u8) c_int;
pub extern fn cgetnum([*c]u8, [*c]const u8, [*c]c_long) c_int;
pub extern fn cgetset([*c]const u8) c_int;
pub extern fn cgetstr([*c]u8, [*c]const u8, [*c][*c]u8) c_int;
pub extern fn cgetustr([*c]u8, [*c]const u8, [*c][*c]u8) c_int;
pub extern fn daemon(c_int, c_int) c_int;
pub extern fn devname(dev_t, mode_t) [*c]u8;
pub extern fn devname_r(dev_t, mode_t, buf: [*c]u8, len: c_int) [*c]u8;
pub extern fn getbsize([*c]c_int, [*c]c_long) [*c]u8;
pub extern fn getloadavg([*c]f64, c_int) c_int;
pub extern fn getprogname() [*c]const u8;
pub extern fn setprogname([*c]const u8) void;
pub extern fn heapsort(__base: ?*anyopaque, __nel: usize, __width: usize, __compar: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) c_int;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:319:6: warning: unsupported type: 'BlockPointer'
pub const heapsort_b = @compileError("unable to resolve prototype of function");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:319:6
pub extern fn mergesort(__base: ?*anyopaque, __nel: usize, __width: usize, __compar: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) c_int;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:326:6: warning: unsupported type: 'BlockPointer'
pub const mergesort_b = @compileError("unable to resolve prototype of function");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:326:6
pub extern fn psort(__base: ?*anyopaque, __nel: usize, __width: usize, __compar: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:334:7: warning: unsupported type: 'BlockPointer'
pub const psort_b = @compileError("unable to resolve prototype of function");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:334:7
pub extern fn psort_r(__base: ?*anyopaque, __nel: usize, __width: usize, ?*anyopaque, __compar: ?*const fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:342:7: warning: unsupported type: 'BlockPointer'
pub const qsort_b = @compileError("unable to resolve prototype of function");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:342:7
pub extern fn qsort_r(__base: ?*anyopaque, __nel: usize, __width: usize, ?*anyopaque, __compar: ?*const fn (?*anyopaque, ?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn radixsort(__base: [*c][*c]const u8, __nel: c_int, __table: [*c]const u8, __endbyte: c_uint) c_int;
pub extern fn rpmatch([*c]const u8) c_int;
pub extern fn sradixsort(__base: [*c][*c]const u8, __nel: c_int, __table: [*c]const u8, __endbyte: c_uint) c_int;
pub extern fn sranddev() void;
pub extern fn srandomdev() void;
pub extern fn strtonum(__numstr: [*c]const u8, __minval: c_longlong, __maxval: c_longlong, __errstrp: [*c][*c]const u8) c_longlong;
pub extern fn strtoq(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(__str: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern var suboptarg: [*c]u8;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn memcpy(__dst: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dst: ?*anyopaque, __src: ?*const anyopaque, __len: c_ulong) ?*anyopaque;
pub extern fn memset(__b: ?*anyopaque, __c: c_int, __len: c_ulong) ?*anyopaque;
pub extern fn strcat(__s1: [*c]u8, __s2: [*c]const u8) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strcpy(__dst: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __charset: [*c]const u8) c_ulong;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strncat(__s1: [*c]u8, __s2: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strncpy(__dst: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strpbrk(__s: [*c]const u8, __charset: [*c]const u8) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strspn(__s: [*c]const u8, __charset: [*c]const u8) c_ulong;
pub extern fn strstr(__big: [*c]const u8, __little: [*c]const u8) [*c]u8;
pub extern fn strtok(__str: [*c]u8, __sep: [*c]const u8) [*c]u8;
pub extern fn strxfrm(__s1: [*c]u8, __s2: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strtok_r(__str: [*c]u8, __sep: [*c]const u8, __lasts: [*c][*c]u8) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __strerrbuf: [*c]u8, __buflen: usize) c_int;
pub extern fn strdup(__s1: [*c]const u8) [*c]u8;
pub extern fn memccpy(__dst: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn stpcpy(__dst: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn stpncpy(__dst: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strndup(__s1: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strnlen(__s1: [*c]const u8, __n: usize) usize;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub const rsize_t = __darwin_size_t;
pub const errno_t = c_int;
pub extern fn memset_s(__s: ?*anyopaque, __smax: rsize_t, __c: c_int, __n: rsize_t) errno_t;
pub extern fn memmem(__big: ?*const anyopaque, __big_len: usize, __little: ?*const anyopaque, __little_len: usize) ?*anyopaque;
pub extern fn memset_pattern4(__b: ?*anyopaque, __pattern4: ?*const anyopaque, __len: usize) void;
pub extern fn memset_pattern8(__b: ?*anyopaque, __pattern8: ?*const anyopaque, __len: usize) void;
pub extern fn memset_pattern16(__b: ?*anyopaque, __pattern16: ?*const anyopaque, __len: usize) void;
pub extern fn strcasestr(__big: [*c]const u8, __little: [*c]const u8) [*c]u8;
pub extern fn strnstr(__big: [*c]const u8, __little: [*c]const u8, __len: usize) [*c]u8;
pub extern fn strlcat(__dst: [*c]u8, __source: [*c]const u8, __size: c_ulong) c_ulong;
pub extern fn strlcpy(__dst: [*c]u8, __source: [*c]const u8, __size: c_ulong) c_ulong;
pub extern fn strmode(__mode: c_int, __bp: [*c]u8) void;
pub extern fn strsep(__stringp: [*c][*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn swab(noalias ?*const anyopaque, noalias ?*anyopaque, isize) void;
pub extern fn timingsafe_bcmp(__b1: ?*const anyopaque, __b2: ?*const anyopaque, __len: usize) c_int;
pub extern fn strsignal_r(__sig: c_int, __strsignalbuf: [*c]u8, __buflen: usize) c_int;
pub extern fn bcmp(?*const anyopaque, ?*const anyopaque, c_ulong) c_int;
pub extern fn bcopy(?*const anyopaque, ?*anyopaque, c_ulong) void;
pub extern fn bzero(?*anyopaque, c_ulong) void;
pub extern fn index([*c]const u8, c_int) [*c]u8;
pub extern fn rindex([*c]const u8, c_int) [*c]u8;
pub extern fn ffs(c_int) c_int;
pub extern fn strcasecmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strncasecmp([*c]const u8, [*c]const u8, c_ulong) c_int;
pub extern fn ffsl(c_long) c_int;
pub extern fn ffsll(c_longlong) c_int;
pub extern fn fls(c_int) c_int;
pub extern fn flsl(c_long) c_int;
pub extern fn flsll(c_longlong) c_int;
pub const float_t = f32;
pub const double_t = f64;
pub extern fn __math_errhandling() c_int;
pub extern fn __fpclassifyf(f32) c_int;
pub extern fn __fpclassifyd(f64) c_int;
pub extern fn __fpclassifyl(c_longdouble) c_int;
pub inline fn __inline_isfinitef(arg___x: f32) c_int {
    var __x = arg___x;
    _ = &__x;
    return @intFromBool((__x == __x) and (__builtin_fabsf(__x) != __builtin_inff()));
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:195:49: warning: TODO implement function '__builtin_inf' in std.zig.c_builtins

// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:194:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isfinited(arg___x: f64) c_int;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:198:26: warning: TODO implement function '__builtin_fabsl' in std.zig.c_builtins

// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:197:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isfinitel(arg___x: c_longdouble) c_int;
pub inline fn __inline_isinff(arg___x: f32) c_int {
    var __x = arg___x;
    _ = &__x;
    return @intFromBool(__builtin_fabsf(__x) == __builtin_inff());
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:204:35: warning: TODO implement function '__builtin_inf' in std.zig.c_builtins

// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:203:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isinfd(arg___x: f64) c_int;
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:207:12: warning: TODO implement function '__builtin_fabsl' in std.zig.c_builtins

// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:206:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isinfl(arg___x: c_longdouble) c_int;
pub inline fn __inline_isnanf(arg___x: f32) c_int {
    var __x = arg___x;
    _ = &__x;
    return @intFromBool(__x != __x);
}
pub inline fn __inline_isnand(arg___x: f64) c_int {
    var __x = arg___x;
    _ = &__x;
    return @intFromBool(__x != __x);
}
pub inline fn __inline_isnanl(arg___x: c_longdouble) c_int {
    var __x = arg___x;
    _ = &__x;
    return @intFromBool(__x != __x);
}
pub inline fn __inline_isnormalf(arg___x: f32) c_int {
    var __x = arg___x;
    _ = &__x;
    return @intFromBool((__inline_isfinitef(__x) != 0) and (__builtin_fabsf(__x) >= 0.000000000000000000000000000000000000011754943508222875));
}
pub inline fn __inline_isnormald(arg___x: f64) c_int {
    var __x = arg___x;
    _ = &__x;
    return @intFromBool((__inline_isfinited(__x) != 0) and (__builtin_fabs(__x) >= 0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000022250738585072014));
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:251:39: warning: TODO implement function '__builtin_fabsl' in std.zig.c_builtins

// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:250:28: warning: unable to translate function, demoted to extern
pub extern fn __inline_isnormall(arg___x: c_longdouble) c_int;
pub inline fn __inline_signbitf(arg___x: f32) c_int {
    var __x = arg___x;
    _ = &__x;
    const union_unnamed_3 = extern union {
        __f: f32,
        __u: c_uint,
    };
    _ = &union_unnamed_3;
    var __u: union_unnamed_3 = undefined;
    _ = &__u;
    __u.__f = __x;
    return @as(c_int, @bitCast(__u.__u >> @intCast(31)));
}
pub inline fn __inline_signbitd(arg___x: f64) c_int {
    var __x = arg___x;
    _ = &__x;
    const union_unnamed_4 = extern union {
        __f: f64,
        __u: c_ulonglong,
    };
    _ = &union_unnamed_4;
    var __u: union_unnamed_4 = undefined;
    _ = &__u;
    __u.__f = __x;
    return @as(c_int, @bitCast(@as(c_uint, @truncate(__u.__u >> @intCast(63)))));
}
pub inline fn __inline_signbitl(arg___x: c_longdouble) c_int {
    var __x = arg___x;
    _ = &__x;
    const union_unnamed_5 = extern union {
        __f: c_longdouble,
        __u: c_ulonglong,
    };
    _ = &union_unnamed_5;
    var __u: union_unnamed_5 = undefined;
    _ = &__u;
    __u.__f = __x;
    return @as(c_int, @bitCast(@as(c_uint, @truncate(__u.__u >> @intCast(63)))));
}
pub extern fn acosf(f32) f32;
pub extern fn acos(f64) f64;
pub extern fn acosl(c_longdouble) c_longdouble;
pub extern fn asinf(f32) f32;
pub extern fn asin(f64) f64;
pub extern fn asinl(c_longdouble) c_longdouble;
pub extern fn atanf(f32) f32;
pub extern fn atan(f64) f64;
pub extern fn atanl(c_longdouble) c_longdouble;
pub extern fn atan2f(f32, f32) f32;
pub extern fn atan2(f64, f64) f64;
pub extern fn atan2l(c_longdouble, c_longdouble) c_longdouble;
pub extern fn cosf(f32) f32;
pub extern fn cos(f64) f64;
pub extern fn cosl(c_longdouble) c_longdouble;
pub extern fn sinf(f32) f32;
pub extern fn sin(f64) f64;
pub extern fn sinl(c_longdouble) c_longdouble;
pub extern fn tanf(f32) f32;
pub extern fn tan(f64) f64;
pub extern fn tanl(c_longdouble) c_longdouble;
pub extern fn acoshf(f32) f32;
pub extern fn acosh(f64) f64;
pub extern fn acoshl(c_longdouble) c_longdouble;
pub extern fn asinhf(f32) f32;
pub extern fn asinh(f64) f64;
pub extern fn asinhl(c_longdouble) c_longdouble;
pub extern fn atanhf(f32) f32;
pub extern fn atanh(f64) f64;
pub extern fn atanhl(c_longdouble) c_longdouble;
pub extern fn coshf(f32) f32;
pub extern fn cosh(f64) f64;
pub extern fn coshl(c_longdouble) c_longdouble;
pub extern fn sinhf(f32) f32;
pub extern fn sinh(f64) f64;
pub extern fn sinhl(c_longdouble) c_longdouble;
pub extern fn tanhf(f32) f32;
pub extern fn tanh(f64) f64;
pub extern fn tanhl(c_longdouble) c_longdouble;
pub extern fn expf(f32) f32;
pub extern fn exp(f64) f64;
pub extern fn expl(c_longdouble) c_longdouble;
pub extern fn exp2f(f32) f32;
pub extern fn exp2(f64) f64;
pub extern fn exp2l(c_longdouble) c_longdouble;
pub extern fn expm1f(f32) f32;
pub extern fn expm1(f64) f64;
pub extern fn expm1l(c_longdouble) c_longdouble;
pub extern fn logf(f32) f32;
pub extern fn log(f64) f64;
pub extern fn logl(c_longdouble) c_longdouble;
pub extern fn log10f(f32) f32;
pub extern fn log10(f64) f64;
pub extern fn log10l(c_longdouble) c_longdouble;
pub extern fn log2f(f32) f32;
pub extern fn log2(f64) f64;
pub extern fn log2l(c_longdouble) c_longdouble;
pub extern fn log1pf(f32) f32;
pub extern fn log1p(f64) f64;
pub extern fn log1pl(c_longdouble) c_longdouble;
pub extern fn logbf(f32) f32;
pub extern fn logb(f64) f64;
pub extern fn logbl(c_longdouble) c_longdouble;
pub extern fn modff(f32, [*c]f32) f32;
pub extern fn modf(f64, [*c]f64) f64;
pub extern fn modfl(c_longdouble, [*c]c_longdouble) c_longdouble;
pub extern fn ldexpf(f32, c_int) f32;
pub extern fn ldexp(f64, c_int) f64;
pub extern fn ldexpl(c_longdouble, c_int) c_longdouble;
pub extern fn frexpf(f32, [*c]c_int) f32;
pub extern fn frexp(f64, [*c]c_int) f64;
pub extern fn frexpl(c_longdouble, [*c]c_int) c_longdouble;
pub extern fn ilogbf(f32) c_int;
pub extern fn ilogb(f64) c_int;
pub extern fn ilogbl(c_longdouble) c_int;
pub extern fn scalbnf(f32, c_int) f32;
pub extern fn scalbn(f64, c_int) f64;
pub extern fn scalbnl(c_longdouble, c_int) c_longdouble;
pub extern fn scalblnf(f32, c_long) f32;
pub extern fn scalbln(f64, c_long) f64;
pub extern fn scalblnl(c_longdouble, c_long) c_longdouble;
pub extern fn fabsf(f32) f32;
pub extern fn fabs(f64) f64;
pub extern fn fabsl(c_longdouble) c_longdouble;
pub extern fn cbrtf(f32) f32;
pub extern fn cbrt(f64) f64;
pub extern fn cbrtl(c_longdouble) c_longdouble;
pub extern fn hypotf(f32, f32) f32;
pub extern fn hypot(f64, f64) f64;
pub extern fn hypotl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn powf(f32, f32) f32;
pub extern fn pow(f64, f64) f64;
pub extern fn powl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn sqrtf(f32) f32;
pub extern fn sqrt(f64) f64;
pub extern fn sqrtl(c_longdouble) c_longdouble;
pub extern fn erff(f32) f32;
pub extern fn erf(f64) f64;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn erfcf(f32) f32;
pub extern fn erfc(f64) f64;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn lgammaf(f32) f32;
pub extern fn lgamma(f64) f64;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn tgammaf(f32) f32;
pub extern fn tgamma(f64) f64;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn ceilf(f32) f32;
pub extern fn ceil(f64) f64;
pub extern fn ceill(c_longdouble) c_longdouble;
pub extern fn floorf(f32) f32;
pub extern fn floor(f64) f64;
pub extern fn floorl(c_longdouble) c_longdouble;
pub extern fn nearbyintf(f32) f32;
pub extern fn nearbyint(f64) f64;
pub extern fn nearbyintl(c_longdouble) c_longdouble;
pub extern fn rintf(f32) f32;
pub extern fn rint(f64) f64;
pub extern fn rintl(c_longdouble) c_longdouble;
pub extern fn lrintf(f32) c_long;
pub extern fn lrint(f64) c_long;
pub extern fn lrintl(c_longdouble) c_long;
pub extern fn roundf(f32) f32;
pub extern fn round(f64) f64;
pub extern fn roundl(c_longdouble) c_longdouble;
pub extern fn lroundf(f32) c_long;
pub extern fn lround(f64) c_long;
pub extern fn lroundl(c_longdouble) c_long;
pub extern fn llrintf(f32) c_longlong;
pub extern fn llrint(f64) c_longlong;
pub extern fn llrintl(c_longdouble) c_longlong;
pub extern fn llroundf(f32) c_longlong;
pub extern fn llround(f64) c_longlong;
pub extern fn llroundl(c_longdouble) c_longlong;
pub extern fn truncf(f32) f32;
pub extern fn trunc(f64) f64;
pub extern fn truncl(c_longdouble) c_longdouble;
pub extern fn fmodf(f32, f32) f32;
pub extern fn fmod(f64, f64) f64;
pub extern fn fmodl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remainderf(f32, f32) f32;
pub extern fn remainder(f64, f64) f64;
pub extern fn remainderl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remquof(f32, f32, [*c]c_int) f32;
pub extern fn remquo(f64, f64, [*c]c_int) f64;
pub extern fn remquol(c_longdouble, c_longdouble, [*c]c_int) c_longdouble;
pub extern fn copysignf(f32, f32) f32;
pub extern fn copysign(f64, f64) f64;
pub extern fn copysignl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nanf([*c]const u8) f32;
pub extern fn nan([*c]const u8) f64;
pub extern fn nanl([*c]const u8) c_longdouble;
pub extern fn nextafterf(f32, f32) f32;
pub extern fn nextafter(f64, f64) f64;
pub extern fn nextafterl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nexttoward(f64, c_longdouble) f64;
pub extern fn nexttowardf(f32, c_longdouble) f32;
pub extern fn nexttowardl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fdimf(f32, f32) f32;
pub extern fn fdim(f64, f64) f64;
pub extern fn fdiml(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmaxf(f32, f32) f32;
pub extern fn fmax(f64, f64) f64;
pub extern fn fmaxl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fminf(f32, f32) f32;
pub extern fn fmin(f64, f64) f64;
pub extern fn fminl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmaf(f32, f32, f32) f32;
pub extern fn fma(f64, f64, f64) f64;
pub extern fn fmal(c_longdouble, c_longdouble, c_longdouble) c_longdouble;
pub extern fn __exp10f(f32) f32;
pub extern fn __exp10(f64) f64;
pub const struct___float2 = extern struct {
    __sinval: f32 = @import("std").mem.zeroes(f32),
    __cosval: f32 = @import("std").mem.zeroes(f32),
};
pub inline fn __sincosf(arg___x: f32, arg___sinp: [*c]f32, arg___cosp: [*c]f32) void {
    var __x = arg___x;
    _ = &__x;
    var __sinp = arg___sinp;
    _ = &__sinp;
    var __cosp = arg___cosp;
    _ = &__cosp;
    const __stret: struct___float2 = __sincosf_stret(__x);
    _ = &__stret;
    __sinp.* = __stret.__sinval;
    __cosp.* = __stret.__cosval;
}
pub const struct___double2 = extern struct {
    __sinval: f64 = @import("std").mem.zeroes(f64),
    __cosval: f64 = @import("std").mem.zeroes(f64),
};
pub inline fn __sincos(arg___x: f64, arg___sinp: [*c]f64, arg___cosp: [*c]f64) void {
    var __x = arg___x;
    _ = &__x;
    var __sinp = arg___sinp;
    _ = &__sinp;
    var __cosp = arg___cosp;
    _ = &__cosp;
    const __stret: struct___double2 = __sincos_stret(__x);
    _ = &__stret;
    __sinp.* = __stret.__sinval;
    __cosp.* = __stret.__cosval;
}
pub extern fn __cospif(f32) f32;
pub extern fn __cospi(f64) f64;
pub extern fn __sinpif(f32) f32;
pub extern fn __sinpi(f64) f64;
pub extern fn __tanpif(f32) f32;
pub extern fn __tanpi(f64) f64;
pub inline fn __sincospif(arg___x: f32, arg___sinp: [*c]f32, arg___cosp: [*c]f32) void {
    var __x = arg___x;
    _ = &__x;
    var __sinp = arg___sinp;
    _ = &__sinp;
    var __cosp = arg___cosp;
    _ = &__cosp;
    const __stret: struct___float2 = __sincospif_stret(__x);
    _ = &__stret;
    __sinp.* = __stret.__sinval;
    __cosp.* = __stret.__cosval;
}
pub inline fn __sincospi(arg___x: f64, arg___sinp: [*c]f64, arg___cosp: [*c]f64) void {
    var __x = arg___x;
    _ = &__x;
    var __sinp = arg___sinp;
    _ = &__sinp;
    var __cosp = arg___cosp;
    _ = &__cosp;
    const __stret: struct___double2 = __sincospi_stret(__x);
    _ = &__stret;
    __sinp.* = __stret.__sinval;
    __cosp.* = __stret.__cosval;
}
pub extern fn __sincosf_stret(f32) struct___float2;
pub extern fn __sincos_stret(f64) struct___double2;
pub extern fn __sincospif_stret(f32) struct___float2;
pub extern fn __sincospi_stret(f64) struct___double2;
pub extern fn j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn scalb(f64, f64) f64;
pub extern var signgam: c_int;
pub const struct_exception = extern struct {
    type: c_int = @import("std").mem.zeroes(c_int),
    name: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    arg1: f64 = @import("std").mem.zeroes(f64),
    arg2: f64 = @import("std").mem.zeroes(f64),
    retval: f64 = @import("std").mem.zeroes(f64),
};
pub var guiIcons: [2048]c_uint = [2048]c_uint{
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073217536))),
    @as(c_uint, @bitCast(@as(c_int, 789061640))),
    @as(c_uint, @bitCast(@as(c_int, 541204606))),
    @as(c_uint, @bitCast(@as(c_int, 1073905602))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    @as(c_uint, @bitCast(@as(c_int, 1073610752))),
    @as(c_uint, @bitCast(@as(c_int, 1143104546))),
    @as(c_uint, @bitCast(@as(c_int, 1073891298))),
    @as(c_uint, @bitCast(@as(c_int, 1610235906))),
    @as(c_uint, @bitCast(@as(c_int, 1474973706))),
    @as(c_uint, @bitCast(@as(c_int, 1342853130))),
    @as(c_uint, @bitCast(@as(c_int, 1073897466))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 4325502))),
    @as(c_uint, @bitCast(@as(c_int, 1073905602))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1090666498))),
    @as(c_uint, @bitCast(@as(c_int, 1145193090))),
    @as(c_uint, @bitCast(@as(c_int, 2034123010))),
    @as(c_uint, @bitCast(@as(c_int, 256))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 4325502))),
    @as(c_uint, @bitCast(@as(c_int, 1073905602))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1090666754))),
    @as(c_uint, @bitCast(@as(c_int, 1145192706))),
    @as(c_uint, @bitCast(@as(c_int, 2034123394))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 553918468))),
    @as(c_uint, @bitCast(@as(c_int, 608445060))),
    @as(c_uint, @bitCast(@as(c_int, 553918724))),
    @as(c_uint, @bitCast(@as(c_int, 537141508))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 553918468))),
    @as(c_uint, @bitCast(@as(c_int, 553918724))),
    @as(c_uint, @bitCast(@as(c_int, 579085380))),
    @as(c_uint, @bitCast(@as(c_int, 537141508))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 270340))),
    @as(c_uint, @bitCast(@as(c_int, 537137156))),
    @as(c_uint, @bitCast(@as(c_int, 545539972))),
    @as(c_uint, @bitCast(@as(c_int, 8655748))),
    @as(c_uint, @bitCast(@as(c_int, 537143172))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 570696196))),
    @as(c_uint, @bitCast(@as(c_int, 570699652))),
    @as(c_uint, @bitCast(@as(c_int, 537141764))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 621029508))),
    @as(c_uint, @bitCast(@as(c_int, 621027844))),
    @as(c_uint, @bitCast(@as(c_int, 537143428))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537145332))),
    @as(c_uint, @bitCast(@as(c_int, 537145332))),
    @as(c_uint, @bitCast(@as(c_int, 537145332))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 654581764))),
    @as(c_uint, @bitCast(@as(c_int, 608445636))),
    @as(c_uint, @bitCast(@as(c_int, 641999940))),
    @as(c_uint, @bitCast(@as(c_int, 543434340))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 637806084))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 893659268))),
    @as(c_uint, @bitCast(@as(c_int, 605299244))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 549724164))),
    @as(c_uint, @bitCast(@as(c_int, 574890308))),
    @as(c_uint, @bitCast(@as(c_int, 574891076))),
    @as(c_uint, @bitCast(@as(c_int, 549724484))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 1073491952))),
    @as(c_uint, @bitCast(@as(c_int, 1060909044))),
    @as(c_uint, @bitCast(@as(c_int, 1035742900))),
    @as(c_uint, @bitCast(@as(c_int, 1035742132))),
    @as(c_uint, @bitCast(@as(c_int, 1060908724))),
    @as(c_uint, @bitCast(@as(c_int, 1073491956))),
    @as(c_uint, @bitCast(@as(c_int, 12276))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 562307460))),
    @as(c_uint, @bitCast(@as(c_int, 562307076))),
    @as(c_uint, @bitCast(@as(c_int, 562307460))),
    @as(c_uint, @bitCast(@as(c_int, 562307460))),
    @as(c_uint, @bitCast(@as(c_int, 537141636))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 267386880))),
    @as(c_uint, @bitCast(@as(c_int, 941361168))),
    @as(c_uint, @bitCast(@as(c_int, 671361028))),
    @as(c_uint, @bitCast(@as(c_int, 671361028))),
    @as(c_uint, @bitCast(@as(c_int, 671361028))),
    @as(c_uint, @bitCast(@as(c_int, 671361028))),
    @as(c_uint, @bitCast(@as(c_int, 537931772))),
    @as(c_uint, @bitCast(@as(c_int, 16368))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1880883200))),
    @as(c_uint, @bitCast(@as(c_int, 127671828))),
    @as(c_uint, @bitCast(@as(c_int, 1436549360))),
    @as(c_uint, @bitCast(@as(c_int, 127664368))),
    @as(c_uint, @bitCast(@as(c_int, 1880890900))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 29360128))),
    @as(c_uint, @bitCast(@as(c_int, 333716460))),
    @as(c_uint, @bitCast(@as(c_int, 1065619460))),
    @as(c_uint, @bitCast(@as(c_int, 541335748))),
    @as(c_uint, @bitCast(@as(c_int, 541335620))),
    @as(c_uint, @bitCast(@as(c_int, 541335620))),
    @as(c_uint, @bitCast(@as(c_int, 545005636))),
    @as(c_uint, @bitCast(@as(c_int, 16320))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 983568352))),
    @as(c_uint, @bitCast(@as(c_int, 716974752))),
    @as(c_uint, @bitCast(@as(c_int, 715401892))),
    @as(c_uint, @bitCast(@as(c_int, 537143972))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 3932172))),
    @as(c_uint, @bitCast(@as(c_int, 50856136))),
    @as(c_uint, @bitCast(@as(c_int, 806358032))),
    @as(c_uint, @bitCast(@as(c_int, 270540832))),
    @as(c_uint, @bitCast(@as(c_int, 71305280))),
    @as(c_uint, @bitCast(@as(c_int, 25166464))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1572864))),
    @as(c_uint, @bitCast(@as(c_int, 32505976))),
    @as(c_uint, @bitCast(@as(c_int, 65013744))),
    @as(c_uint, @bitCast(@as(c_int, 130024416))),
    @as(c_uint, @bitCast(@as(c_int, 67112512))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 67108864))),
    @as(c_uint, @bitCast(@as(c_int, 285215232))),
    @as(c_uint, @bitCast(@as(c_int, 71305856))),
    @as(c_uint, @bitCast(@as(c_int, 17826336))),
    @as(c_uint, @bitCast(@as(c_int, 5767304))),
    56,
    0,
    @as(c_uint, @bitCast(@as(c_int, 67108864))),
    @as(c_uint, @bitCast(@as(c_int, 352324096))),
    @as(c_uint, @bitCast(@as(c_int, 1346381952))),
    @as(c_uint, @bitCast(@as(c_int, 336603168))),
    @as(c_uint, @bitCast(@as(c_int, 84150792))),
    @as(c_uint, @bitCast(@as(c_int, 22807180))),
    @as(c_uint, @bitCast(@as(c_int, 8126652))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 29360128))),
    @as(c_uint, @bitCast(@as(c_int, 20971840))),
    @as(c_uint, @bitCast(@as(c_int, 20971840))),
    @as(c_uint, @bitCast(@as(c_int, 267911488))),
    @as(c_uint, @bitCast(@as(c_int, 267913224))),
    @as(c_uint, @bitCast(@as(c_int, 178784264))),
    @as(c_uint, @bitCast(@as(c_int, 178784936))),
    @as(c_uint, @bitCast(@as(c_int, 4088))),
    @as(c_uint, @bitCast(@as(c_int, 536608768))),
    @as(c_uint, @bitCast(@as(c_int, 1610383358))),
    @as(c_uint, @bitCast(@as(c_int, 1073758208))),
    @as(c_uint, @bitCast(@as(c_int, 8421248))),
    @as(c_uint, @bitCast(@as(c_int, 29360576))),
    @as(c_uint, @bitCast(@as(c_int, 29360576))),
    @as(c_uint, @bitCast(@as(c_int, 29360576))),
    128,
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 29360256))),
    @as(c_uint, @bitCast(@as(c_int, 65012160))),
    @as(c_uint, @bitCast(@as(c_int, 133170144))),
    @as(c_uint, @bitCast(@as(c_int, 56624880))),
    @as(c_uint, @bitCast(@as(c_int, 448))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1040201728))),
    @as(c_uint, @bitCast(@as(c_int, 528498560))),
    @as(c_uint, @bitCast(@as(c_int, 203431488))),
    @as(c_uint, @bitCast(@as(c_int, 34081808))),
    @as(c_uint, @bitCast(@as(c_int, 8651012))),
    @as(c_uint, @bitCast(@as(c_int, 3670084))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 125829888))),
    @as(c_uint, @bitCast(@as(c_int, 534777792))),
    @as(c_uint, @bitCast(@as(c_int, 1065893840))),
    @as(c_uint, @bitCast(@as(c_int, 235020036))),
    @as(c_uint, @bitCast(@as(c_int, 33817602))),
    @as(c_uint, @bitCast(@as(c_int, 15728904))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 12582912))),
    @as(c_uint, @bitCast(@as(c_int, 41943360))),
    @as(c_uint, @bitCast(@as(c_int, 136315968))),
    @as(c_uint, @bitCast(@as(c_int, 537399312))),
    @as(c_uint, @bitCast(@as(c_int, 805187588))),
    @as(c_uint, @bitCast(@as(c_int, 66586620))),
    @as(c_uint, @bitCast(@as(c_int, 14680560))),
    64,
    0,
    @as(c_uint, @bitCast(@as(c_int, 562315260))),
    @as(c_uint, @bitCast(@as(c_int, 25166208))),
    @as(c_uint, @bitCast(@as(c_int, 25166208))),
    @as(c_uint, @bitCast(@as(c_int, 25166208))),
    @as(c_uint, @bitCast(@as(c_int, 25166208))),
    @as(c_uint, @bitCast(@as(c_int, 62914944))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 20971904))),
    @as(c_uint, @bitCast(@as(c_int, 102761280))),
    @as(c_uint, @bitCast(@as(c_int, 202376736))),
    @as(c_uint, @bitCast(@as(c_int, 536349712))),
    @as(c_uint, @bitCast(@as(c_int, 940316680))),
    @as(c_uint, @bitCast(@as(c_int, 1879470084))),
    @as(c_uint, @bitCast(@as(c_int, 63503))),
    @as(c_uint, @bitCast(@as(c_int, 2013265920))),
    @as(c_uint, @bitCast(@as(c_int, 1342193664))),
    @as(c_uint, @bitCast(@as(c_int, 18432))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 1048576))),
    @as(c_uint, @bitCast(@as(c_int, 131082))),
    14,
    @as(c_uint, @bitCast(@as(c_int, 1968570368))),
    @as(c_uint, @bitCast(@as(c_int, 1577074690))),
    @as(c_uint, @bitCast(@as(c_int, 1409290242))),
    @as(c_uint, @bitCast(@as(c_int, 1090523650))),
    @as(c_uint, @bitCast(@as(c_int, 1082261758))),
    @as(c_uint, @bitCast(@as(c_int, 1082261634))),
    @as(c_uint, @bitCast(@as(c_int, 1082261634))),
    @as(c_uint, @bitCast(@as(c_int, 27390))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1056980736))),
    @as(c_uint, @bitCast(@as(c_int, 1056980736))),
    @as(c_uint, @bitCast(@as(c_int, 1056980736))),
    @as(c_uint, @bitCast(@as(c_int, 4194432))),
    @as(c_uint, @bitCast(@as(c_int, 1835040))),
    @as(c_uint, @bitCast(@as(c_int, 1835036))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1837105152))),
    @as(c_uint, @bitCast(@as(c_int, 16512))),
    @as(c_uint, @bitCast(@as(c_int, 1082146944))),
    @as(c_uint, @bitCast(@as(c_int, 1082130432))),
    @as(c_uint, @bitCast(@as(c_int, 4222336))),
    @as(c_uint, @bitCast(@as(c_int, 1835040))),
    @as(c_uint, @bitCast(@as(c_int, 1835036))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1074266112))),
    @as(c_uint, @bitCast(@as(c_int, 536748040))),
    @as(c_uint, @bitCast(@as(c_int, 336072712))),
    @as(c_uint, @bitCast(@as(c_int, 285741576))),
    @as(c_uint, @bitCast(@as(c_int, 273158280))),
    @as(c_uint, @bitCast(@as(c_int, 268963880))),
    @as(c_uint, @bitCast(@as(c_int, 268730360))),
    @as(c_uint, @bitCast(@as(c_int, 4098))),
    @as(c_uint, @bitCast(@as(c_int, 1048576))),
    @as(c_uint, @bitCast(@as(c_int, 1073479696))),
    @as(c_uint, @bitCast(@as(c_int, 716191056))),
    @as(c_uint, @bitCast(@as(c_int, 581969232))),
    @as(c_uint, @bitCast(@as(c_int, 548413776))),
    @as(c_uint, @bitCast(@as(c_int, 540024912))),
    @as(c_uint, @bitCast(@as(c_int, 536936432))),
    @as(c_uint, @bitCast(@as(c_int, 8192))),
    @as(c_uint, @bitCast(@as(c_int, 1073741824))),
    @as(c_uint, @bitCast(@as(c_int, 536354816))),
    @as(c_uint, @bitCast(@as(c_int, 67643400))),
    @as(c_uint, @bitCast(@as(c_int, 17310216))),
    @as(c_uint, @bitCast(@as(c_int, 4726920))),
    @as(c_uint, @bitCast(@as(c_int, 1581096))),
    @as(c_uint, @bitCast(@as(c_int, 894705672))),
    2,
    0,
    @as(c_uint, @bitCast(@as(c_int, 41943680))),
    @as(c_uint, @bitCast(@as(c_int, 113247936))),
    @as(c_uint, @bitCast(@as(c_int, 245370592))),
    @as(c_uint, @bitCast(@as(c_int, 512761520))),
    @as(c_uint, @bitCast(@as(c_int, 1049116312))),
    @as(c_uint, @bitCast(@as(c_int, 2130476684))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 16777216))),
    @as(c_uint, @bitCast(@as(c_int, 90177792))),
    @as(c_uint, @bitCast(@as(c_int, 491261264))),
    @as(c_uint, @bitCast(@as(c_int, 2101493060))),
    @as(c_uint, @bitCast(@as(c_int, 1027898690))),
    @as(c_uint, @bitCast(@as(c_int, 223354184))),
    @as(c_uint, @bitCast(@as(c_int, 16778592))),
    @as(c_uint, @bitCast(@as(c_int, 256))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 69206592))),
    @as(c_uint, @bitCast(@as(c_int, 268961808))),
    @as(c_uint, @bitCast(@as(c_int, 8184))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    @as(c_uint, @bitCast(@as(c_int, 267395064))),
    @as(c_uint, @bitCast(@as(c_int, 62916576))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 17301744))),
    @as(c_uint, @bitCast(@as(c_int, 33817092))),
    @as(c_uint, @bitCast(@as(c_int, 33817092))),
    @as(c_uint, @bitCast(@as(c_int, 133169928))),
    @as(c_uint, @bitCast(@as(c_int, 469765632))),
    @as(c_uint, @bitCast(@as(c_int, 805320704))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 102237168))),
    @as(c_uint, @bitCast(@as(c_int, 136580108))),
    @as(c_uint, @bitCast(@as(c_int, 134481940))),
    @as(c_uint, @bitCast(@as(c_int, 202115076))),
    @as(c_uint, @bitCast(@as(c_int, 602936856))),
    @as(c_uint, @bitCast(@as(c_int, 402662400))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 477104064))),
    @as(c_uint, @bitCast(@as(c_int, 1670263704))),
    @as(c_uint, @bitCast(@as(c_int, 477115288))),
    @as(c_uint, @bitCast(@as(c_int, 1984))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 268443648))),
    @as(c_uint, @bitCast(@as(c_int, 74452928))),
    @as(c_uint, @bitCast(@as(c_int, 1628320280))),
    @as(c_uint, @bitCast(@as(c_int, 477114520))),
    @as(c_uint, @bitCast(@as(c_int, 1050528))),
    8,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 32764))),
    @as(c_uint, @bitCast(@as(c_int, 1074036732))),
    @as(c_uint, @bitCast(@as(c_int, 269492232))),
    @as(c_uint, @bitCast(@as(c_int, 71305248))),
    @as(c_uint, @bitCast(@as(c_int, 41943680))),
    @as(c_uint, @bitCast(@as(c_int, 41943680))),
    @as(c_uint, @bitCast(@as(c_int, 256))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073905662))),
    @as(c_uint, @bitCast(@as(c_int, 268967940))),
    @as(c_uint, @bitCast(@as(c_int, 69208080))),
    @as(c_uint, @bitCast(@as(c_int, 37749312))),
    @as(c_uint, @bitCast(@as(c_int, 37749312))),
    @as(c_uint, @bitCast(@as(c_int, 20972096))),
    192,
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    128,
    @as(c_uint, @bitCast(@as(c_int, 1016987648))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 1065222592))),
    @as(c_uint, @bitCast(@as(c_int, 8389056))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 65011840))),
    @as(c_uint, @bitCast(@as(c_int, 1044251168))),
    @as(c_uint, @bitCast(@as(c_int, 65012256))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 16777216))),
    @as(c_uint, @bitCast(@as(c_int, 71303808))),
    @as(c_uint, @bitCast(@as(c_int, 16777472))),
    @as(c_uint, @bitCast(@as(c_int, 1132732424))),
    @as(c_uint, @bitCast(@as(c_int, 1132763826))),
    @as(c_uint, @bitCast(@as(c_int, 16785416))),
    @as(c_uint, @bitCast(@as(c_int, 71303424))),
    @as(c_uint, @bitCast(@as(c_int, 16777856))),
    @as(c_uint, @bitCast(@as(c_int, 16777216))),
    @as(c_uint, @bitCast(@as(c_int, 71303808))),
    @as(c_uint, @bitCast(@as(c_int, 16777472))),
    @as(c_uint, @bitCast(@as(c_int, 1090789640))),
    @as(c_uint, @bitCast(@as(c_int, 1090822130))),
    @as(c_uint, @bitCast(@as(c_int, 16785672))),
    @as(c_uint, @bitCast(@as(c_int, 71303424))),
    @as(c_uint, @bitCast(@as(c_int, 16777856))),
    @as(c_uint, @bitCast(@as(c_int, 2015232000))),
    @as(c_uint, @bitCast(@as(c_int, 1342849026))),
    @as(c_uint, @bitCast(@as(c_int, 69224466))),
    @as(c_uint, @bitCast(@as(c_int, 576))),
    @as(c_uint, @bitCast(@as(c_int, 37748736))),
    @as(c_uint, @bitCast(@as(c_int, 1209140256))),
    @as(c_uint, @bitCast(@as(c_int, 1073893386))),
    @as(c_uint, @bitCast(@as(c_int, 30750))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 536886272))),
    @as(c_uint, @bitCast(@as(c_int, 603990016))),
    @as(c_uint, @bitCast(@as(c_int, 16777728))),
    @as(c_uint, @bitCast(@as(c_int, 4194432))),
    @as(c_uint, @bitCast(@as(c_int, 1310756))),
    @as(c_uint, @bitCast(@as(c_int, 3932164))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 262204))),
    @as(c_uint, @bitCast(@as(c_int, 2359316))),
    @as(c_uint, @bitCast(@as(c_int, 8388672))),
    @as(c_uint, @bitCast(@as(c_int, 33554688))),
    @as(c_uint, @bitCast(@as(c_int, 671097856))),
    @as(c_uint, @bitCast(@as(c_int, 1006641152))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1048608))),
    @as(c_uint, @bitCast(@as(c_int, 269492168))),
    @as(c_uint, @bitCast(@as(c_int, 268439584))),
    @as(c_uint, @bitCast(@as(c_int, 268439552))),
    @as(c_uint, @bitCast(@as(c_int, 268439552))),
    @as(c_uint, @bitCast(@as(c_int, 8128))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 134218752))),
    @as(c_uint, @bitCast(@as(c_int, 134747128))),
    @as(c_uint, @bitCast(@as(c_int, 525320))),
    @as(c_uint, @bitCast(@as(c_int, 524296))),
    @as(c_uint, @bitCast(@as(c_int, 524296))),
    @as(c_uint, @bitCast(@as(c_int, 1016))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073479680))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 536879104))),
    @as(c_uint, @bitCast(@as(c_int, 541073408))),
    @as(c_uint, @bitCast(@as(c_int, 1066410016))),
    @as(c_uint, @bitCast(@as(c_int, 4194336))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073479680))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 670834692))),
    @as(c_uint, @bitCast(@as(c_int, 538976256))),
    @as(c_uint, @bitCast(@as(c_int, 1070080016))),
    @as(c_uint, @bitCast(@as(c_int, 2097168))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 267386880))),
    @as(c_uint, @bitCast(@as(c_int, 268965912))),
    @as(c_uint, @bitCast(@as(c_int, 293605384))),
    @as(c_uint, @bitCast(@as(c_int, 268439936))),
    @as(c_uint, @bitCast(@as(c_int, 403705888))),
    @as(c_uint, @bitCast(@as(c_int, 1052616))),
    32,
    0,
    @as(c_uint, @bitCast(@as(c_int, 67109376))),
    @as(c_uint, @bitCast(@as(c_int, 604252668))),
    @as(c_uint, @bitCast(@as(c_int, 537141764))),
    @as(c_uint, @bitCast(@as(c_int, 541335556))),
    @as(c_uint, @bitCast(@as(c_int, 1066672164))),
    @as(c_uint, @bitCast(@as(c_int, 4194336))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 536875008))),
    @as(c_uint, @bitCast(@as(c_int, 571493390))),
    @as(c_uint, @bitCast(@as(c_int, 8392992))),
    @as(c_uint, @bitCast(@as(c_int, 287309888))),
    @as(c_uint, @bitCast(@as(c_int, 1275994640))),
    @as(c_uint, @bitCast(@as(c_int, 268443648))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 2147352576))),
    @as(c_uint, @bitCast(@as(c_int, 1342324738))),
    @as(c_uint, @bitCast(@as(c_int, 1141000194))),
    @as(c_uint, @bitCast(@as(c_int, 1090667010))),
    @as(c_uint, @bitCast(@as(c_int, 1078083714))),
    @as(c_uint, @bitCast(@as(c_int, 1074937890))),
    @as(c_uint, @bitCast(@as(c_int, 1073889290))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 65011840))),
    @as(c_uint, @bitCast(@as(c_int, 134743184))),
    @as(c_uint, @bitCast(@as(c_int, 1016989704))),
    @as(c_uint, @bitCast(@as(c_int, 134744072))),
    @as(c_uint, @bitCast(@as(c_int, 65012880))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 1073611200))),
    @as(c_uint, @bitCast(@as(c_int, 8389056))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 65011840))),
    @as(c_uint, @bitCast(@as(c_int, 1073611744))),
    @as(c_uint, @bitCast(@as(c_int, 65012704))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 16777216))),
    @as(c_uint, @bitCast(@as(c_int, 130024320))),
    @as(c_uint, @bitCast(@as(c_int, 16777472))),
    @as(c_uint, @bitCast(@as(c_int, 1670127624))),
    @as(c_uint, @bitCast(@as(c_int, 1670183870))),
    @as(c_uint, @bitCast(@as(c_int, 16785416))),
    @as(c_uint, @bitCast(@as(c_int, 130023680))),
    @as(c_uint, @bitCast(@as(c_int, 16778112))),
    @as(c_uint, @bitCast(@as(c_int, 16777216))),
    @as(c_uint, @bitCast(@as(c_int, 130024320))),
    @as(c_uint, @bitCast(@as(c_int, 16777472))),
    @as(c_uint, @bitCast(@as(c_int, 1628184840))),
    @as(c_uint, @bitCast(@as(c_int, 1628241918))),
    @as(c_uint, @bitCast(@as(c_int, 16785672))),
    @as(c_uint, @bitCast(@as(c_int, 130023680))),
    @as(c_uint, @bitCast(@as(c_int, 16778112))),
    @as(c_uint, @bitCast(@as(c_int, 2015232000))),
    @as(c_uint, @bitCast(@as(c_int, 1611034638))),
    @as(c_uint, @bitCast(@as(c_int, 69224466))),
    @as(c_uint, @bitCast(@as(c_int, 576))),
    @as(c_uint, @bitCast(@as(c_int, 37748736))),
    @as(c_uint, @bitCast(@as(c_int, 1209140256))),
    @as(c_uint, @bitCast(@as(c_int, 1879990278))),
    @as(c_uint, @bitCast(@as(c_int, 30750))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 939539456))),
    @as(c_uint, @bitCast(@as(c_int, 603992064))),
    @as(c_uint, @bitCast(@as(c_int, 16777728))),
    @as(c_uint, @bitCast(@as(c_int, 4194432))),
    @as(c_uint, @bitCast(@as(c_int, 786468))),
    @as(c_uint, @bitCast(@as(c_int, 3932188))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1835068))),
    @as(c_uint, @bitCast(@as(c_int, 2359308))),
    @as(c_uint, @bitCast(@as(c_int, 8388672))),
    @as(c_uint, @bitCast(@as(c_int, 33554688))),
    @as(c_uint, @bitCast(@as(c_int, 805315584))),
    @as(c_uint, @bitCast(@as(c_int, 1006647296))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 3145760))),
    @as(c_uint, @bitCast(@as(c_int, 271589368))),
    @as(c_uint, @bitCast(@as(c_int, 268439584))),
    @as(c_uint, @bitCast(@as(c_int, 268439552))),
    @as(c_uint, @bitCast(@as(c_int, 268439552))),
    @as(c_uint, @bitCast(@as(c_int, 8128))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 201327616))),
    @as(c_uint, @bitCast(@as(c_int, 201859064))),
    @as(c_uint, @bitCast(@as(c_int, 525320))),
    @as(c_uint, @bitCast(@as(c_int, 524296))),
    @as(c_uint, @bitCast(@as(c_int, 524296))),
    @as(c_uint, @bitCast(@as(c_int, 1016))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073479680))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 536879104))),
    @as(c_uint, @bitCast(@as(c_int, 541073408))),
    @as(c_uint, @bitCast(@as(c_int, 1072701536))),
    @as(c_uint, @bitCast(@as(c_int, 4194400))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073479680))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 670834692))),
    @as(c_uint, @bitCast(@as(c_int, 538976256))),
    @as(c_uint, @bitCast(@as(c_int, 1073225776))),
    @as(c_uint, @bitCast(@as(c_int, 2097200))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 267386880))),
    @as(c_uint, @bitCast(@as(c_int, 268965912))),
    @as(c_uint, @bitCast(@as(c_int, 293605384))),
    @as(c_uint, @bitCast(@as(c_int, 268439936))),
    @as(c_uint, @bitCast(@as(c_int, 405803040))),
    @as(c_uint, @bitCast(@as(c_int, 3149816))),
    32,
    0,
    @as(c_uint, @bitCast(@as(c_int, 100663808))),
    @as(c_uint, @bitCast(@as(c_int, 637808636))),
    @as(c_uint, @bitCast(@as(c_int, 537141764))),
    @as(c_uint, @bitCast(@as(c_int, 541335556))),
    @as(c_uint, @bitCast(@as(c_int, 1072963684))),
    @as(c_uint, @bitCast(@as(c_int, 4194400))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 805310464))),
    @as(c_uint, @bitCast(@as(c_int, 839941134))),
    @as(c_uint, @bitCast(@as(c_int, 8392992))),
    @as(c_uint, @bitCast(@as(c_int, 287309888))),
    @as(c_uint, @bitCast(@as(c_int, 2081305104))),
    @as(c_uint, @bitCast(@as(c_int, 268447744))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 805584892))),
    @as(c_uint, @bitCast(@as(c_int, 604252164))),
    @as(c_uint, @bitCast(@as(c_int, 553918980))),
    @as(c_uint, @bitCast(@as(c_int, 541335684))),
    @as(c_uint, @bitCast(@as(c_int, 538189860))),
    @as(c_uint, @bitCast(@as(c_int, 1073487884))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 600063996))),
    @as(c_uint, @bitCast(@as(c_int, 600056772))),
    @as(c_uint, @bitCast(@as(c_int, 537142212))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1040465916))),
    @as(c_uint, @bitCast(@as(c_int, 1040465412))),
    @as(c_uint, @bitCast(@as(c_int, 537148932))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1040465412))),
    @as(c_uint, @bitCast(@as(c_int, 1040465412))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1040457732))),
    @as(c_uint, @bitCast(@as(c_int, 1040465412))),
    @as(c_uint, @bitCast(@as(c_int, 1073495556))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 600055812))),
    @as(c_uint, @bitCast(@as(c_int, 600056772))),
    @as(c_uint, @bitCast(@as(c_int, 1073488836))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 545005572))),
    @as(c_uint, @bitCast(@as(c_int, 545005692))),
    @as(c_uint, @bitCast(@as(c_int, 1073487996))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 545005692))),
    @as(c_uint, @bitCast(@as(c_int, 545005692))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 545013756))),
    @as(c_uint, @bitCast(@as(c_int, 545005692))),
    @as(c_uint, @bitCast(@as(c_int, 537141372))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 600056772))),
    @as(c_uint, @bitCast(@as(c_int, 600056772))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 2147352576))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1206010242))),
    @as(c_uint, @bitCast(@as(c_int, 1341278178))),
    @as(c_uint, @bitCast(@as(c_int, 1206013938))),
    @as(c_uint, @bitCast(@as(c_int, 1099057122))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    @as(c_uint, @bitCast(@as(c_int, 2147418112))),
    @as(c_uint, @bitCast(@as(c_int, 1073823745))),
    @as(c_uint, @bitCast(@as(c_int, 1073823745))),
    @as(c_uint, @bitCast(@as(c_int, 1230331357))),
    @as(c_uint, @bitCast(@as(c_int, 1229277533))),
    @as(c_uint, @bitCast(@as(c_int, 1073826245))),
    @as(c_uint, @bitCast(@as(c_int, 1073823745))),
    @as(c_uint, @bitCast(@as(c_int, 32767))),
    @as(c_uint, @bitCast(@as(c_int, 2147352576))),
    @as(c_uint, @bitCast(@as(c_int, 1395815218))),
    @as(c_uint, @bitCast(@as(c_int, 1154370766))),
    @as(c_uint, @bitCast(@as(c_int, 1093813042))),
    @as(c_uint, @bitCast(@as(c_int, 1078870222))),
    @as(c_uint, @bitCast(@as(c_int, 1209160754))),
    @as(c_uint, @bitCast(@as(c_int, 1074156558))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    @as(c_uint, @bitCast(@as(c_int, 2147352576))),
    @as(c_uint, @bitCast(@as(c_int, 1395815218))),
    @as(c_uint, @bitCast(@as(c_int, 1154370766))),
    @as(c_uint, @bitCast(@as(c_int, 1093813042))),
    @as(c_uint, @bitCast(@as(c_int, 1548632270))),
    @as(c_uint, @bitCast(@as(c_int, 1142047794))),
    @as(c_uint, @bitCast(@as(c_int, 1074158606))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    @as(c_uint, @bitCast(@as(c_int, 2147352576))),
    @as(c_uint, @bitCast(@as(c_int, 1123959166))),
    @as(c_uint, @bitCast(@as(c_int, 1123959166))),
    @as(c_uint, @bitCast(@as(c_int, 1123959166))),
    @as(c_uint, @bitCast(@as(c_int, 1123959166))),
    @as(c_uint, @bitCast(@as(c_int, 1123959166))),
    @as(c_uint, @bitCast(@as(c_int, 1123959166))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    @as(c_uint, @bitCast(@as(c_int, 134086656))),
    @as(c_uint, @bitCast(@as(c_int, 536477698))),
    @as(c_uint, @bitCast(@as(c_int, 2146041866))),
    @as(c_uint, @bitCast(@as(c_int, 1076510762))),
    @as(c_uint, @bitCast(@as(c_int, 1529499946))),
    @as(c_uint, @bitCast(@as(c_int, 1361597738))),
    @as(c_uint, @bitCast(@as(c_int, 1075859752))),
    @as(c_uint, @bitCast(@as(c_int, 32736))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 536346624))),
    @as(c_uint, @bitCast(@as(c_int, 306713160))),
    @as(c_uint, @bitCast(@as(c_int, 306716664))),
    @as(c_uint, @bitCast(@as(c_int, 536351304))),
    @as(c_uint, @bitCast(@as(c_int, 306713160))),
    @as(c_uint, @bitCast(@as(c_int, 8184))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 306708480))),
    @as(c_uint, @bitCast(@as(c_int, 2147357256))),
    @as(c_uint, @bitCast(@as(c_int, 306713160))),
    @as(c_uint, @bitCast(@as(c_int, 306741246))),
    @as(c_uint, @bitCast(@as(c_int, 2147357256))),
    @as(c_uint, @bitCast(@as(c_int, 306713160))),
    @as(c_uint, @bitCast(@as(c_int, 306741246))),
    @as(c_uint, @bitCast(@as(c_int, 4680))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 473432064))),
    @as(c_uint, @bitCast(@as(c_int, 473438184))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 401087544))),
    @as(c_uint, @bitCast(@as(c_int, 7224))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1879965696))),
    @as(c_uint, @bitCast(@as(c_int, 1879990266))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 1610248206))),
    @as(c_uint, @bitCast(@as(c_int, 28686))),
    @as(c_uint, @bitCast(@as(c_int, 1065222144))),
    @as(c_uint, @bitCast(@as(c_int, 557982018))),
    @as(c_uint, @bitCast(@as(c_int, 557982018))),
    @as(c_uint, @bitCast(@as(c_int, 16254))),
    @as(c_uint, @bitCast(@as(c_int, 557989758))),
    @as(c_uint, @bitCast(@as(c_int, 557982018))),
    @as(c_uint, @bitCast(@as(c_int, 1065230658))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1001914368))),
    @as(c_uint, @bitCast(@as(c_int, 1001929656))),
    @as(c_uint, @bitCast(@as(c_int, 1001914368))),
    @as(c_uint, @bitCast(@as(c_int, 1001929656))),
    @as(c_uint, @bitCast(@as(c_int, 1001914368))),
    @as(c_uint, @bitCast(@as(c_int, 1001929656))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 2147352576))),
    @as(c_uint, @bitCast(@as(c_int, 2147385342))),
    @as(c_uint, @bitCast(@as(c_int, 2013163520))),
    @as(c_uint, @bitCast(@as(c_int, 2013165566))),
    @as(c_uint, @bitCast(@as(c_int, 2004776704))),
    @as(c_uint, @bitCast(@as(c_int, 2004776830))),
    @as(c_uint, @bitCast(@as(c_int, 2004776830))),
    @as(c_uint, @bitCast(@as(c_int, 30590))),
    @as(c_uint, @bitCast(@as(c_int, 2015232000))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 16386))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    @as(c_uint, @bitCast(@as(c_int, 1073872896))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 30750))),
    @as(c_uint, @bitCast(@as(c_int, 2015232000))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 16386))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 1073872896))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 30750))),
    @as(c_uint, @bitCast(@as(c_int, 2015232000))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 132136962))),
    @as(c_uint, @bitCast(@as(c_int, 132122592))),
    @as(c_uint, @bitCast(@as(c_int, 132122592))),
    @as(c_uint, @bitCast(@as(c_int, 1073874912))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 30750))),
    @as(c_uint, @bitCast(@as(c_int, 2015232000))),
    @as(c_uint, @bitCast(@as(c_int, 1610235906))),
    @as(c_uint, @bitCast(@as(c_int, 536371194))),
    @as(c_uint, @bitCast(@as(c_int, 536354808))),
    @as(c_uint, @bitCast(@as(c_int, 536354808))),
    @as(c_uint, @bitCast(@as(c_int, 1610227704))),
    @as(c_uint, @bitCast(@as(c_int, 1073897466))),
    @as(c_uint, @bitCast(@as(c_int, 30750))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 537147420))),
    @as(c_uint, @bitCast(@as(c_int, 8196))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537133056))),
    @as(c_uint, @bitCast(@as(c_int, 941367300))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 498597888))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 268959744))),
    @as(c_uint, @bitCast(@as(c_int, 4104))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 7608))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 894828544))),
    @as(c_uint, @bitCast(@as(c_int, 8194))),
    @as(c_uint, @bitCast(@as(c_int, 8194))),
    @as(c_uint, @bitCast(@as(c_int, 8194))),
    @as(c_uint, @bitCast(@as(c_int, 8194))),
    @as(c_uint, @bitCast(@as(c_int, 8194))),
    @as(c_uint, @bitCast(@as(c_int, 894836738))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 2147352576))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1209159666))),
    @as(c_uint, @bitCast(@as(c_int, 1234323474))),
    @as(c_uint, @bitCast(@as(c_int, 1209158034))),
    @as(c_uint, @bitCast(@as(c_int, 1341278226))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 277094396))),
    @as(c_uint, @bitCast(@as(c_int, 277090436))),
    @as(c_uint, @bitCast(@as(c_int, 536612996))),
    @as(c_uint, @bitCast(@as(c_int, 277090436))),
    @as(c_uint, @bitCast(@as(c_int, 277090436))),
    @as(c_uint, @bitCast(@as(c_int, 8188))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 268435456))),
    @as(c_uint, @bitCast(@as(c_int, 67110912))),
    @as(c_uint, @bitCast(@as(c_int, 17039872))),
    @as(c_uint, @bitCast(@as(c_int, 5243016))),
    32,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 268959744))),
    @as(c_uint, @bitCast(@as(c_int, 69208080))),
    @as(c_uint, @bitCast(@as(c_int, 25166400))),
    @as(c_uint, @bitCast(@as(c_int, 37749120))),
    @as(c_uint, @bitCast(@as(c_int, 135267360))),
    @as(c_uint, @bitCast(@as(c_int, 4104))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 33554432))),
    @as(c_uint, @bitCast(@as(c_int, 8388864))),
    @as(c_uint, @bitCast(@as(c_int, 2097216))),
    @as(c_uint, @bitCast(@as(c_int, 2097168))),
    @as(c_uint, @bitCast(@as(c_int, 8388672))),
    @as(c_uint, @bitCast(@as(c_int, 33554688))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 4194304))),
    @as(c_uint, @bitCast(@as(c_int, 16777344))),
    @as(c_uint, @bitCast(@as(c_int, 67109376))),
    @as(c_uint, @bitCast(@as(c_int, 67110912))),
    @as(c_uint, @bitCast(@as(c_int, 16777728))),
    @as(c_uint, @bitCast(@as(c_int, 4194432))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 134746116))),
    @as(c_uint, @bitCast(@as(c_int, 35652624))),
    @as(c_uint, @bitCast(@as(c_int, 8388928))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 20971648))),
    @as(c_uint, @bitCast(@as(c_int, 68157984))),
    @as(c_uint, @bitCast(@as(c_int, 268699656))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 33554432))),
    @as(c_uint, @bitCast(@as(c_int, 58721024))),
    @as(c_uint, @bitCast(@as(c_int, 65012672))),
    @as(c_uint, @bitCast(@as(c_int, 65012720))),
    @as(c_uint, @bitCast(@as(c_int, 58721216))),
    @as(c_uint, @bitCast(@as(c_int, 33555200))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 4194304))),
    @as(c_uint, @bitCast(@as(c_int, 29360320))),
    @as(c_uint, @bitCast(@as(c_int, 130024384))),
    @as(c_uint, @bitCast(@as(c_int, 130027456))),
    @as(c_uint, @bitCast(@as(c_int, 29361088))),
    @as(c_uint, @bitCast(@as(c_int, 4194496))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 267919356))),
    @as(c_uint, @bitCast(@as(c_int, 65013744))),
    @as(c_uint, @bitCast(@as(c_int, 8389056))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 29360256))),
    @as(c_uint, @bitCast(@as(c_int, 133170144))),
    @as(c_uint, @bitCast(@as(c_int, 536612856))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 413141184))),
    @as(c_uint, @bitCast(@as(c_int, 847778448))),
    @as(c_uint, @bitCast(@as(c_int, 612509318))),
    @as(c_uint, @bitCast(@as(c_int, 646325378))),
    @as(c_uint, @bitCast(@as(c_int, 311440008))),
    @as(c_uint, @bitCast(@as(c_int, 146806944))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 75499392))),
    @as(c_uint, @bitCast(@as(c_int, 4194496))),
    @as(c_uint, @bitCast(@as(c_int, 1713373424))),
    @as(c_uint, @bitCast(@as(c_int, 135281712))),
    @as(c_uint, @bitCast(@as(c_int, 319426072))),
    @as(c_uint, @bitCast(@as(c_int, 12686))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388608))),
    @as(c_uint, @bitCast(@as(c_int, 143132808))),
    @as(c_uint, @bitCast(@as(c_int, 715786890))),
    @as(c_uint, @bitCast(@as(c_int, 176827050))),
    @as(c_uint, @bitCast(@as(c_int, 143132808))),
    128,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 6291456))),
    @as(c_uint, @bitCast(@as(c_int, 17301648))),
    @as(c_uint, @bitCast(@as(c_int, 33816840))),
    @as(c_uint, @bitCast(@as(c_int, 1107575300))),
    @as(c_uint, @bitCast(@as(c_int, 604120066))),
    @as(c_uint, @bitCast(@as(c_int, 6144))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 133693440))),
    @as(c_uint, @bitCast(@as(c_int, 67634184))),
    @as(c_uint, @bitCast(@as(c_int, 67634184))),
    @as(c_uint, @bitCast(@as(c_int, 67634184))),
    @as(c_uint, @bitCast(@as(c_int, 2081293320))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 10485824))),
    @as(c_uint, @bitCast(@as(c_int, 570966288))),
    @as(c_uint, @bitCast(@as(c_int, 134353924))),
    0,
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 69206016))),
    @as(c_uint, @bitCast(@as(c_int, 25166400))),
    @as(c_uint, @bitCast(@as(c_int, 37749120))),
    @as(c_uint, @bitCast(@as(c_int, 1056))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 406323200))),
    @as(c_uint, @bitCast(@as(c_int, 304616488))),
    @as(c_uint, @bitCast(@as(c_int, 279449896))),
    @as(c_uint, @bitCast(@as(c_int, 287838376))),
    @as(c_uint, @bitCast(@as(c_int, 338170408))),
    @as(c_uint, @bitCast(@as(c_int, 6200))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 402653184))),
    @as(c_uint, @bitCast(@as(c_int, 293606912))),
    @as(c_uint, @bitCast(@as(c_int, 270012512))),
    @as(c_uint, @bitCast(@as(c_int, 274731032))),
    @as(c_uint, @bitCast(@as(c_int, 369103232))),
    @as(c_uint, @bitCast(@as(c_int, 6144))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1572864))),
    @as(c_uint, @bitCast(@as(c_int, 25690216))),
    @as(c_uint, @bitCast(@as(c_int, 403179016))),
    @as(c_uint, @bitCast(@as(c_int, 101193736))),
    @as(c_uint, @bitCast(@as(c_int, 6816136))),
    24,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 511180800))),
    @as(c_uint, @bitCast(@as(c_int, 306713160))),
    @as(c_uint, @bitCast(@as(c_int, 306713160))),
    @as(c_uint, @bitCast(@as(c_int, 306713160))),
    @as(c_uint, @bitCast(@as(c_int, 306713160))),
    @as(c_uint, @bitCast(@as(c_int, 7800))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 536346624))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 8184))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 471334912))),
    @as(c_uint, @bitCast(@as(c_int, 340268072))),
    @as(c_uint, @bitCast(@as(c_int, 352851080))),
    @as(c_uint, @bitCast(@as(c_int, 344462600))),
    @as(c_uint, @bitCast(@as(c_int, 338170952))),
    @as(c_uint, @bitCast(@as(c_int, 7192))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 62914560))),
    @as(c_uint, @bitCast(@as(c_int, 135267360))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 69208080))),
    @as(c_uint, @bitCast(@as(c_int, 960))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 204474336))),
    @as(c_uint, @bitCast(@as(c_int, 331880472))),
    @as(c_uint, @bitCast(@as(c_int, 338171496))),
    @as(c_uint, @bitCast(@as(c_int, 338170920))),
    @as(c_uint, @bitCast(@as(c_int, 473439288))),
    @as(c_uint, @bitCast(@as(c_int, 135275076))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 130023424))),
    @as(c_uint, @bitCast(@as(c_int, 136316960))),
    @as(c_uint, @bitCast(@as(c_int, 1073219616))),
    @as(c_uint, @bitCast(@as(c_int, 596123656))),
    @as(c_uint, @bitCast(@as(c_int, 554181512))),
    @as(c_uint, @bitCast(@as(c_int, 537403656))),
    @as(c_uint, @bitCast(@as(c_int, 535830536))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 130023424))),
    @as(c_uint, @bitCast(@as(c_int, 134219776))),
    @as(c_uint, @bitCast(@as(c_int, 1073219584))),
    @as(c_uint, @bitCast(@as(c_int, 596123656))),
    @as(c_uint, @bitCast(@as(c_int, 554181512))),
    @as(c_uint, @bitCast(@as(c_int, 537403656))),
    @as(c_uint, @bitCast(@as(c_int, 535830536))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 29360128))),
    @as(c_uint, @bitCast(@as(c_int, 202901360))),
    @as(c_uint, @bitCast(@as(c_int, 814094476))),
    @as(c_uint, @bitCast(@as(c_int, 1619206274))),
    @as(c_uint, @bitCast(@as(c_int, 1610827649))),
    @as(c_uint, @bitCast(@as(c_int, 805707778))),
    @as(c_uint, @bitCast(@as(c_int, 202905612))),
    @as(c_uint, @bitCast(@as(c_int, 29362032))),
    @as(c_uint, @bitCast(@as(c_int, 169869312))),
    @as(c_uint, @bitCast(@as(c_int, 455088928))),
    @as(c_uint, @bitCast(@as(c_int, 69209632))),
    @as(c_uint, @bitCast(@as(c_int, 69207072))),
    @as(c_uint, @bitCast(@as(c_int, 74449952))),
    @as(c_uint, @bitCast(@as(c_int, 242224752))),
    @as(c_uint, @bitCast(@as(c_int, 242224752))),
    @as(c_uint, @bitCast(@as(c_int, 69209712))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 1004286348))),
    @as(c_uint, @bitCast(@as(c_int, 267395064))),
    @as(c_uint, @bitCast(@as(c_int, 2084445816))),
    @as(c_uint, @bitCast(@as(c_int, 511212606))),
    @as(c_uint, @bitCast(@as(c_int, 536350704))),
    @as(c_uint, @bitCast(@as(c_int, 831273948))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 1073492364))),
    @as(c_uint, @bitCast(@as(c_int, 473440248))),
    @as(c_uint, @bitCast(@as(c_int, 2015238168))),
    @as(c_uint, @bitCast(@as(c_int, 404256798))),
    @as(c_uint, @bitCast(@as(c_int, 536353848))),
    @as(c_uint, @bitCast(@as(c_int, 831275004))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 134746104))),
    @as(c_uint, @bitCast(@as(c_int, 134750204))),
    @as(c_uint, @bitCast(@as(c_int, 178784936))),
    @as(c_uint, @bitCast(@as(c_int, 178784936))),
    @as(c_uint, @bitCast(@as(c_int, 178784936))),
    @as(c_uint, @bitCast(@as(c_int, 134744744))),
    @as(c_uint, @bitCast(@as(c_int, 4088))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 134496132))),
    @as(c_uint, @bitCast(@as(c_int, 67374980))),
    @as(c_uint, @bitCast(@as(c_int, 67372932))),
    @as(c_uint, @bitCast(@as(c_int, 2044))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 608175104))),
    @as(c_uint, @bitCast(@as(c_int, 5248))),
    @as(c_uint, @bitCast(@as(c_int, 1862143488))),
    @as(c_uint, @bitCast(@as(c_int, 3584))),
    @as(c_uint, @bitCast(@as(c_int, 608179328))),
    @as(c_uint, @bitCast(@as(c_int, 1024))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 62914560))),
    @as(c_uint, @bitCast(@as(c_int, 137364576))),
    @as(c_uint, @bitCast(@as(c_int, 286789912))),
    @as(c_uint, @bitCast(@as(c_int, 286789912))),
    @as(c_uint, @bitCast(@as(c_int, 73402416))),
    @as(c_uint, @bitCast(@as(c_int, 960))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 277348480))),
    @as(c_uint, @bitCast(@as(c_int, 113248272))),
    @as(c_uint, @bitCast(@as(c_int, 913049568))),
    @as(c_uint, @bitCast(@as(c_int, 132121152))),
    @as(c_uint, @bitCast(@as(c_int, 5992))),
    @as(c_uint, @bitCast(@as(c_int, 69206592))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1026031616))),
    @as(c_uint, @bitCast(@as(c_int, 623387948))),
    @as(c_uint, @bitCast(@as(c_int, 1026041128))),
    @as(c_uint, @bitCast(@as(c_int, 86508840))),
    @as(c_uint, @bitCast(@as(c_int, 99091752))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 25166784))),
    @as(c_uint, @bitCast(@as(c_int, 267388896))),
    @as(c_uint, @bitCast(@as(c_int, 198183888))),
    @as(c_uint, @bitCast(@as(c_int, 173018064))),
    @as(c_uint, @bitCast(@as(c_int, 37749312))),
    @as(c_uint, @bitCast(@as(c_int, 37749312))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 293606336))),
    @as(c_uint, @bitCast(@as(c_int, 63447032))),
    @as(c_uint, @bitCast(@as(c_int, 130024392))),
    @as(c_uint, @bitCast(@as(c_int, 71304256))),
    @as(c_uint, @bitCast(@as(c_int, 201852024))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073217536))),
    @as(c_uint, @bitCast(@as(c_int, 806895608))),
    @as(c_uint, @bitCast(@as(c_int, 806891544))),
    @as(c_uint, @bitCast(@as(c_int, 1073233912))),
    @as(c_uint, @bitCast(@as(c_int, 50332416))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 65012480))),
    @as(c_uint, @bitCast(@as(c_int, 992))),
    @as(c_uint, @bitCast(@as(c_int, 1073217536))),
    @as(c_uint, @bitCast(@as(c_int, 1073233912))),
    @as(c_uint, @bitCast(@as(c_int, 865615864))),
    @as(c_uint, @bitCast(@as(c_int, 1073230744))),
    @as(c_uint, @bitCast(@as(c_int, 1073233912))),
    @as(c_uint, @bitCast(@as(c_int, 1344))),
    @as(c_uint, @bitCast(@as(c_int, 266341024))),
    @as(c_uint, @bitCast(@as(c_int, 4064))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 267386880))),
    @as(c_uint, @bitCast(@as(c_int, 537137160))),
    @as(c_uint, @bitCast(@as(c_int, 625221636))),
    @as(c_uint, @bitCast(@as(c_int, 268967940))),
    @as(c_uint, @bitCast(@as(c_int, 100666352))),
    @as(c_uint, @bitCast(@as(c_int, 768))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 289669120))),
    @as(c_uint, @bitCast(@as(c_int, 133172200))),
    @as(c_uint, @bitCast(@as(c_int, 471600696))),
    @as(c_uint, @bitCast(@as(c_int, 471600152))),
    @as(c_uint, @bitCast(@as(c_int, 133172792))),
    @as(c_uint, @bitCast(@as(c_int, 289672168))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537395200))),
    @as(c_uint, @bitCast(@as(c_int, 207622160))),
    @as(c_uint, @bitCast(@as(c_int, 130027488))),
    @as(c_uint, @bitCast(@as(c_int, 130025408))),
    @as(c_uint, @bitCast(@as(c_int, 207622112))),
    @as(c_uint, @bitCast(@as(c_int, 537399312))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537395200))),
    @as(c_uint, @bitCast(@as(c_int, 207622160))),
    @as(c_uint, @bitCast(@as(c_int, 71307232))),
    @as(c_uint, @bitCast(@as(c_int, 71325012))),
    @as(c_uint, @bitCast(@as(c_int, 207622112))),
    @as(c_uint, @bitCast(@as(c_int, 537399312))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 8388736))),
    @as(c_uint, @bitCast(@as(c_int, 29360576))),
    @as(c_uint, @bitCast(@as(c_int, 536625150))),
    @as(c_uint, @bitCast(@as(c_int, 65013744))),
    @as(c_uint, @bitCast(@as(c_int, 133170144))),
    @as(c_uint, @bitCast(@as(c_int, 202901360))),
    @as(c_uint, @bitCast(@as(c_int, 2056))),
    @as(c_uint, @bitCast(@as(c_int, 267386880))),
    @as(c_uint, @bitCast(@as(c_int, 135792656))),
    @as(c_uint, @bitCast(@as(c_int, 135268376))),
    @as(c_uint, @bitCast(@as(c_int, 168822800))),
    @as(c_uint, @bitCast(@as(c_int, 135792656))),
    @as(c_uint, @bitCast(@as(c_int, 135268376))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 8184))),
    @as(c_uint, @bitCast(@as(c_int, 267386880))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 269484048))),
    @as(c_uint, @bitCast(@as(c_int, 1334845456))),
    @as(c_uint, @bitCast(@as(c_int, 269492240))),
    @as(c_uint, @bitCast(@as(c_int, 135266320))),
    @as(c_uint, @bitCast(@as(c_int, 4080))),
    @as(c_uint, @bitCast(@as(c_int, 262144))),
    @as(c_uint, @bitCast(@as(c_int, 2031630))),
    @as(c_uint, @bitCast(@as(c_int, 250871812))),
    @as(c_uint, @bitCast(@as(c_int, 317985412))),
    @as(c_uint, @bitCast(@as(c_int, 250876436))),
    @as(c_uint, @bitCast(@as(c_int, 268697604))),
    @as(c_uint, @bitCast(@as(c_int, 2147233796))),
    @as(c_uint, @bitCast(@as(c_int, 268447744))),
    @as(c_uint, @bitCast(@as(c_int, 2013528064))),
    @as(c_uint, @bitCast(@as(c_int, 1344233486))),
    @as(c_uint, @bitCast(@as(c_int, 250888196))),
    @as(c_uint, @bitCast(@as(c_int, 317985412))),
    @as(c_uint, @bitCast(@as(c_int, 250876548))),
    @as(c_uint, @bitCast(@as(c_int, 269746180))),
    @as(c_uint, @bitCast(@as(c_int, 2147233804))),
    @as(c_uint, @bitCast(@as(c_int, 268447744))),
    @as(c_uint, @bitCast(@as(c_int, 2145386496))),
    @as(c_uint, @bitCast(@as(c_int, 1344823344))),
    @as(c_uint, @bitCast(@as(c_int, 1207846916))),
    @as(c_uint, @bitCast(@as(c_int, 1143096322))),
    @as(c_uint, @bitCast(@as(c_int, 1143096354))),
    @as(c_uint, @bitCast(@as(c_int, 605189602))),
    @as(c_uint, @bitCast(@as(c_int, 201724938))),
    @as(c_uint, @bitCast(@as(c_int, 2046))),
    @as(c_uint, @bitCast(@as(c_int, 2145386496))),
    @as(c_uint, @bitCast(@as(c_int, 1610121200))),
    @as(c_uint, @bitCast(@as(c_int, 1207848956))),
    @as(c_uint, @bitCast(@as(c_int, 1143096322))),
    @as(c_uint, @bitCast(@as(c_int, 1143096354))),
    @as(c_uint, @bitCast(@as(c_int, 605189602))),
    @as(c_uint, @bitCast(@as(c_int, 201724938))),
    @as(c_uint, @bitCast(@as(c_int, 2046))),
    @as(c_uint, @bitCast(@as(c_int, 2145386496))),
    @as(c_uint, @bitCast(@as(c_int, 1345871920))),
    @as(c_uint, @bitCast(@as(c_int, 1203914812))),
    @as(c_uint, @bitCast(@as(c_int, 1144931390))),
    @as(c_uint, @bitCast(@as(c_int, 1144931390))),
    @as(c_uint, @bitCast(@as(c_int, 605976062))),
    @as(c_uint, @bitCast(@as(c_int, 201724942))),
    @as(c_uint, @bitCast(@as(c_int, 2046))),
    @as(c_uint, @bitCast(@as(c_int, 2145386496))),
    @as(c_uint, @bitCast(@as(c_int, 1344823344))),
    @as(c_uint, @bitCast(@as(c_int, 1207846916))),
    @as(c_uint, @bitCast(@as(c_int, 1207846910))),
    @as(c_uint, @bitCast(@as(c_int, 1207846910))),
    @as(c_uint, @bitCast(@as(c_int, 670988286))),
    @as(c_uint, @bitCast(@as(c_int, 268310526))),
    @as(c_uint, @bitCast(@as(c_int, 2046))),
    @as(c_uint, @bitCast(@as(c_int, 2145386496))),
    @as(c_uint, @bitCast(@as(c_int, 1344823344))),
    @as(c_uint, @bitCast(@as(c_int, 1207846916))),
    @as(c_uint, @bitCast(@as(c_int, 1143096322))),
    @as(c_uint, @bitCast(@as(c_int, 1143096354))),
    @as(c_uint, @bitCast(@as(c_int, 1005747170))),
    @as(c_uint, @bitCast(@as(c_int, 201202682))),
    @as(c_uint, @bitCast(@as(c_int, 2046))),
    @as(c_uint, @bitCast(@as(c_int, 2145386496))),
    @as(c_uint, @bitCast(@as(c_int, 1881694256))),
    @as(c_uint, @bitCast(@as(c_int, 2147383300))),
    @as(c_uint, @bitCast(@as(c_int, 2082634754))),
    @as(c_uint, @bitCast(@as(c_int, 2082634786))),
    @as(c_uint, @bitCast(@as(c_int, 1007844834))),
    @as(c_uint, @bitCast(@as(c_int, 201726986))),
    @as(c_uint, @bitCast(@as(c_int, 2046))),
    @as(c_uint, @bitCast(@as(c_int, 2145386496))),
    @as(c_uint, @bitCast(@as(c_int, 1877499888))),
    @as(c_uint, @bitCast(@as(c_int, 2015262692))),
    @as(c_uint, @bitCast(@as(c_int, 2078440418))),
    @as(c_uint, @bitCast(@as(c_int, 2078440418))),
    @as(c_uint, @bitCast(@as(c_int, 605191138))),
    @as(c_uint, @bitCast(@as(c_int, 201724938))),
    @as(c_uint, @bitCast(@as(c_int, 2046))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 704787454))),
    @as(c_uint, @bitCast(@as(c_int, 570566146))),
    @as(c_uint, @bitCast(@as(c_int, 570565122))),
    @as(c_uint, @bitCast(@as(c_int, 704783874))),
    @as(c_uint, @bitCast(@as(c_int, 10499070))),
    @as(c_uint, @bitCast(@as(c_int, 34078992))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537673724))),
    @as(c_uint, @bitCast(@as(c_int, 786444))),
    @as(c_uint, @bitCast(@as(c_int, 1073479692))),
    @as(c_uint, @bitCast(@as(c_int, 805318656))),
    @as(c_uint, @bitCast(@as(c_int, 805318656))),
    @as(c_uint, @bitCast(@as(c_int, 1073491972))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 2228286))),
    @as(c_uint, @bitCast(@as(c_int, 19005922))),
    @as(c_uint, @bitCast(@as(c_int, 16777534))),
    @as(c_uint, @bitCast(@as(c_int, 16777472))),
    @as(c_uint, @bitCast(@as(c_int, 2030043392))),
    @as(c_uint, @bitCast(@as(c_int, 1325418752))),
    @as(c_uint, @bitCast(@as(c_int, 30720))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1140882432))),
    @as(c_uint, @bitCast(@as(c_int, 1157645824))),
    @as(c_uint, @bitCast(@as(c_int, 6454462))),
    @as(c_uint, @bitCast(@as(c_int, 6422562))),
    @as(c_uint, @bitCast(@as(c_int, 1157659838))),
    @as(c_uint, @bitCast(@as(c_int, 1140868608))),
    @as(c_uint, @bitCast(@as(c_int, 31744))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 4456572))),
    @as(c_uint, @bitCast(@as(c_int, 1048700))),
    @as(c_uint, @bitCast(@as(c_int, 1058013200))),
    @as(c_uint, @bitCast(@as(c_int, 1058021872))),
    @as(c_uint, @bitCast(@as(c_int, 1058013200))),
    @as(c_uint, @bitCast(@as(c_int, 1056973296))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 4456572))),
    @as(c_uint, @bitCast(@as(c_int, 4456516))),
    @as(c_uint, @bitCast(@as(c_int, 1048700))),
    @as(c_uint, @bitCast(@as(c_int, 1048592))),
    @as(c_uint, @bitCast(@as(c_int, 1141931024))),
    @as(c_uint, @bitCast(@as(c_int, 1140869104))),
    @as(c_uint, @bitCast(@as(c_int, 31744))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 4456572))),
    @as(c_uint, @bitCast(@as(c_int, 4456516))),
    124,
    16,
    @as(c_uint, @bitCast(@as(c_int, 1140882448))),
    @as(c_uint, @bitCast(@as(c_int, 1140868432))),
    @as(c_uint, @bitCast(@as(c_int, 31744))),
    @as(c_uint, @bitCast(@as(c_int, 44040192))),
    @as(c_uint, @bitCast(@as(c_int, 581189628))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537145332))),
    @as(c_uint, @bitCast(@as(c_int, 537145332))),
    @as(c_uint, @bitCast(@as(c_int, 537145332))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1073479680))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 610150340))),
    @as(c_uint, @bitCast(@as(c_int, 667165764))),
    @as(c_uint, @bitCast(@as(c_int, 537141278))),
    @as(c_uint, @bitCast(@as(c_int, 538845188))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 132120576))),
    @as(c_uint, @bitCast(@as(c_int, 69207072))),
    @as(c_uint, @bitCast(@as(c_int, 606355452))),
    @as(c_uint, @bitCast(@as(c_int, 606348324))),
    @as(c_uint, @bitCast(@as(c_int, 606348324))),
    @as(c_uint, @bitCast(@as(c_int, 1073488932))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 266338304))),
    @as(c_uint, @bitCast(@as(c_int, 136316960))),
    @as(c_uint, @bitCast(@as(c_int, 1074036732))),
    @as(c_uint, @bitCast(@as(c_int, 2147243348))),
    @as(c_uint, @bitCast(@as(c_int, 1074025812))),
    @as(c_uint, @bitCast(@as(c_int, 2147237892))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 537149436))),
    @as(c_uint, @bitCast(@as(c_int, 1073487876))),
    @as(c_uint, @bitCast(@as(c_int, 331878408))),
    @as(c_uint, @bitCast(@as(c_int, 268964808))),
    @as(c_uint, @bitCast(@as(c_int, 268963848))),
    @as(c_uint, @bitCast(@as(c_int, 536350728))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073905662))),
    @as(c_uint, @bitCast(@as(c_int, 1610244090))),
    @as(c_uint, @bitCast(@as(c_int, 1610244090))),
    @as(c_uint, @bitCast(@as(c_int, 1073897466))),
    @as(c_uint, @bitCast(@as(c_int, 62947326))),
    @as(c_uint, @bitCast(@as(c_int, 536354808))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 267386880))),
    @as(c_uint, @bitCast(@as(c_int, 1811841022))),
    @as(c_uint, @bitCast(@as(c_int, 2147385342))),
    @as(c_uint, @bitCast(@as(c_int, 1746305022))),
    @as(c_uint, @bitCast(@as(c_int, 135292950))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 267388944))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073217536))),
    4294844424,
    2265612290,
    2420803722,
    2420805706,
    2265614474,
    4294868994,
    0,
    @as(c_uint, @bitCast(@as(c_int, 264241152))),
    4244507864,
    2147680254,
    2218951554,
    2218951746,
    2147648386,
    4294868994,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 37749120))),
    @as(c_uint, @bitCast(@as(c_int, 135267360))),
    @as(c_uint, @bitCast(@as(c_int, 537137160))),
    @as(c_uint, @bitCast(@as(c_int, 600055812))),
    @as(c_uint, @bitCast(@as(c_int, 574890564))),
    @as(c_uint, @bitCast(@as(c_int, 1073488452))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 477102080))),
    @as(c_uint, @bitCast(@as(c_int, 1073233656))),
    @as(c_uint, @bitCast(@as(c_int, 1073233912))),
    @as(c_uint, @bitCast(@as(c_int, 266346480))),
    @as(c_uint, @bitCast(@as(c_int, 58722240))),
    @as(c_uint, @bitCast(@as(c_int, 256))),
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    2147483648,
    3758145536,
    0,
    @as(c_uint, @bitCast(@as(c_int, 335551488))),
    @as(c_uint, @bitCast(@as(c_int, 364909568))),
    @as(c_uint, @bitCast(@as(c_int, 356521280))),
    @as(c_uint, @bitCast(@as(c_int, 358356288))),
    @as(c_uint, @bitCast(@as(c_int, 357832020))),
    @as(c_uint, @bitCast(@as(c_int, 500962644))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 50332416))),
    @as(c_uint, @bitCast(@as(c_int, 452991744))),
    @as(c_uint, @bitCast(@as(c_int, 459283296))),
    @as(c_uint, @bitCast(@as(c_int, 460069728))),
    @as(c_uint, @bitCast(@as(c_int, 460069740))),
    @as(c_uint, @bitCast(@as(c_int, 460069740))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1077837822))),
    @as(c_uint, @bitCast(@as(c_int, 2147369022))),
    @as(c_uint, @bitCast(@as(c_int, 2147352576))),
    @as(c_uint, @bitCast(@as(c_int, 1140737022))),
    @as(c_uint, @bitCast(@as(c_int, 32766))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 2147221504))),
    @as(c_uint, @bitCast(@as(c_int, 1132740612))),
    @as(c_uint, @bitCast(@as(c_int, 1132741252))),
    @as(c_uint, @bitCast(@as(c_int, 1132740612))),
    @as(c_uint, @bitCast(@as(c_int, 1115964036))),
    @as(c_uint, @bitCast(@as(c_int, 1115964036))),
    @as(c_uint, @bitCast(@as(c_int, 1074021252))),
    @as(c_uint, @bitCast(@as(c_int, 32764))),
    @as(c_uint, @bitCast(@as(c_int, 1073774592))),
    @as(c_uint, @bitCast(@as(c_int, 268443648))),
    @as(c_uint, @bitCast(@as(c_int, 67110912))),
    @as(c_uint, @bitCast(@as(c_int, 16777728))),
    @as(c_uint, @bitCast(@as(c_int, 4194432))),
    @as(c_uint, @bitCast(@as(c_int, 1048608))),
    @as(c_uint, @bitCast(@as(c_int, 262152))),
    @as(c_uint, @bitCast(@as(c_int, 65538))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 535830512))),
    @as(c_uint, @bitCast(@as(c_int, 405805104))),
    @as(c_uint, @bitCast(@as(c_int, 520099888))),
    @as(c_uint, @bitCast(@as(c_int, 50339584))),
    @as(c_uint, @bitCast(@as(c_int, 768))),
    @as(c_uint, @bitCast(@as(c_int, 50332416))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 716977488))),
    @as(c_uint, @bitCast(@as(c_int, 715928916))),
    @as(c_uint, @bitCast(@as(c_int, 715928916))),
    @as(c_uint, @bitCast(@as(c_int, 715928916))),
    @as(c_uint, @bitCast(@as(c_int, 715928916))),
    @as(c_uint, @bitCast(@as(c_int, 715928916))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 574890372))),
    @as(c_uint, @bitCast(@as(c_int, 672408612))),
    @as(c_uint, @bitCast(@as(c_int, 697575444))),
    @as(c_uint, @bitCast(@as(c_int, 804530580))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 134086656))),
    @as(c_uint, @bitCast(@as(c_int, 67240962))),
    @as(c_uint, @bitCast(@as(c_int, 2145518594))),
    @as(c_uint, @bitCast(@as(c_int, 1143096354))),
    @as(c_uint, @bitCast(@as(c_int, 1143096354))),
    @as(c_uint, @bitCast(@as(c_int, 1075857406))),
    @as(c_uint, @bitCast(@as(c_int, 1075855392))),
    @as(c_uint, @bitCast(@as(c_int, 32736))),
    @as(c_uint, @bitCast(@as(c_int, 134086656))),
    @as(c_uint, @bitCast(@as(c_int, 67240962))),
    @as(c_uint, @bitCast(@as(c_int, 2080506882))),
    @as(c_uint, @bitCast(@as(c_int, 1140999170))),
    @as(c_uint, @bitCast(@as(c_int, 1140999170))),
    @as(c_uint, @bitCast(@as(c_int, 1075857406))),
    @as(c_uint, @bitCast(@as(c_int, 1075855392))),
    @as(c_uint, @bitCast(@as(c_int, 32736))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1073905662))),
    @as(c_uint, @bitCast(@as(c_int, 2147368962))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 2147368962))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 152043520))),
    @as(c_uint, @bitCast(@as(c_int, 166725904))),
    @as(c_uint, @bitCast(@as(c_int, 152045840))),
    @as(c_uint, @bitCast(@as(c_int, 2320))),
    @as(c_uint, @bitCast(@as(c_int, 614627230))),
    @as(c_uint, @bitCast(@as(c_int, 664937634))),
    @as(c_uint, @bitCast(@as(c_int, 1889411234))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 713305732))),
    @as(c_uint, @bitCast(@as(c_int, 780413572))),
    @as(c_uint, @bitCast(@as(c_int, 732176388))),
    @as(c_uint, @bitCast(@as(c_int, 715401892))),
    @as(c_uint, @bitCast(@as(c_int, 537144228))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 1179666))),
    @as(c_uint, @bitCast(@as(c_int, 1247693778))),
    @as(c_uint, @bitCast(@as(c_int, 1213346770))),
    @as(c_uint, @bitCast(@as(c_int, 19410))),
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 941360736))),
    @as(c_uint, @bitCast(@as(c_int, 600055812))),
    @as(c_uint, @bitCast(@as(c_int, 600055876))),
    @as(c_uint, @bitCast(@as(c_int, 331883012))),
    @as(c_uint, @bitCast(@as(c_int, 135270408))),
    @as(c_uint, @bitCast(@as(c_int, 37749792))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    @as(c_uint, @bitCast(@as(c_int, 8257536))),
    @as(c_uint, @bitCast(@as(c_int, 537018306))),
    @as(c_uint, @bitCast(@as(c_int, 1076002786))),
    @as(c_uint, @bitCast(@as(c_int, 1074413626))),
    @as(c_uint, @bitCast(@as(c_int, 1074413578))),
    @as(c_uint, @bitCast(@as(c_int, 1074413578))),
    @as(c_uint, @bitCast(@as(c_int, 1074282510))),
    @as(c_uint, @bitCast(@as(c_int, 32760))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 4325502))),
    @as(c_uint, @bitCast(@as(c_int, 1073905602))),
    @as(c_uint, @bitCast(@as(c_int, 1140998146))),
    @as(c_uint, @bitCast(@as(c_int, 1593984002))),
    @as(c_uint, @bitCast(@as(c_int, 1140999170))),
    @as(c_uint, @bitCast(@as(c_int, 2147368962))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1143078912))),
    @as(c_uint, @bitCast(@as(c_int, 306717252))),
    4090429440,
    @as(c_uint, @bitCast(@as(c_int, 338166816))),
    @as(c_uint, @bitCast(@as(c_int, 1209148452))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 536350728))),
    @as(c_uint, @bitCast(@as(c_int, 62915616))),
    @as(c_uint, @bitCast(@as(c_int, 178257920))),
    @as(c_uint, @bitCast(@as(c_int, 536349344))),
    @as(c_uint, @bitCast(@as(c_int, 275279886))),
    @as(c_uint, @bitCast(@as(c_int, 268988526))),
    @as(c_uint, @bitCast(@as(c_int, 268988430))),
    @as(c_uint, @bitCast(@as(c_int, 268988430))),
    @as(c_uint, @bitCast(@as(c_int, 178266104))),
    @as(c_uint, @bitCast(@as(c_int, 2720))),
    @as(c_uint, @bitCast(@as(c_int, 132120576))),
    @as(c_uint, @bitCast(@as(c_int, 69213624))),
    @as(c_uint, @bitCast(@as(c_int, 77601848))),
    @as(c_uint, @bitCast(@as(c_int, 77602104))),
    @as(c_uint, @bitCast(@as(c_int, 77602104))),
    @as(c_uint, @bitCast(@as(c_int, 77602104))),
    @as(c_uint, @bitCast(@as(c_int, 69213496))),
    @as(c_uint, @bitCast(@as(c_int, 2016))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 62914560))),
    @as(c_uint, @bitCast(@as(c_int, 1010315248))),
    @as(c_uint, @bitCast(@as(c_int, 1006909452))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 25166208))),
    @as(c_uint, @bitCast(@as(c_int, 25166208))),
    @as(c_uint, @bitCast(@as(c_int, 62916576))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 132121536))),
    @as(c_uint, @bitCast(@as(c_int, 25166208))),
    @as(c_uint, @bitCast(@as(c_int, 25166208))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    @as(c_uint, @bitCast(@as(c_int, 25165824))),
    @as(c_uint, @bitCast(@as(c_int, 62915520))),
    @as(c_uint, @bitCast(@as(c_int, 384))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 267387840))),
    @as(c_uint, @bitCast(@as(c_int, 404495412))),
    @as(c_uint, @bitCast(@as(c_int, 809250844))),
    @as(c_uint, @bitCast(@as(c_int, 805318656))),
    @as(c_uint, @bitCast(@as(c_int, 472913920))),
    @as(c_uint, @bitCast(@as(c_int, 62918640))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 132121536))),
    @as(c_uint, @bitCast(@as(c_int, 267390960))),
    @as(c_uint, @bitCast(@as(c_int, 267390960))),
    @as(c_uint, @bitCast(@as(c_int, 62916576))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 69206976))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 135268368))),
    @as(c_uint, @bitCast(@as(c_int, 62915616))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 536354808))),
    @as(c_uint, @bitCast(@as(c_int, 536346624))),
    @as(c_uint, @bitCast(@as(c_int, 8184))),
    @as(c_uint, @bitCast(@as(c_int, 536354808))),
    0,
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 8913008))),
    @as(c_uint, @bitCast(@as(c_int, 210239624))),
    @as(c_uint, @bitCast(@as(c_int, 512233720))),
    @as(c_uint, @bitCast(@as(c_int, 1049105032))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 33554432))),
    @as(c_uint, @bitCast(@as(c_int, 117443200))),
    @as(c_uint, @bitCast(@as(c_int, 117448640))),
    @as(c_uint, @bitCast(@as(c_int, 33557120))),
    @as(c_uint, @bitCast(@as(c_int, 3145776))),
    0,
    0,
    0,
    @as(c_uint, @bitCast(@as(c_int, 4325502))),
    @as(c_uint, @bitCast(@as(c_int, 1073905602))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 1073889282))),
    @as(c_uint, @bitCast(@as(c_int, 2147368962))),
    0,
    @as(c_uint, @bitCast(@as(c_int, 1072693248))),
    @as(c_uint, @bitCast(@as(c_int, 538714128))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 537141252))),
    @as(c_uint, @bitCast(@as(c_int, 16380))),
    @as(c_uint, @bitCast(@as(c_int, 535822336))),
    @as(c_uint, @bitCast(@as(c_int, 537403400))),
    @as(c_uint, @bitCast(@as(c_int, 399519720))),
    @as(c_uint, @bitCast(@as(c_int, 88083360))),
    @as(c_uint, @bitCast(@as(c_int, 153093440))),
    @as(c_uint, @bitCast(@as(c_int, 596119568))),
    @as(c_uint, @bitCast(@as(c_int, 803743688))),
    @as(c_uint, @bitCast(@as(c_int, 8176))),
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
};
pub var guiIconsPtr: [*c]c_uint = @as([*c]c_uint, @ptrCast(@alignCast(&guiIcons)));
pub const BORDER: c_int = 0;
pub const BASE: c_int = 1;
pub const TEXT: c_int = 2;
pub const OTHER: c_int = 3;
pub const GuiPropertyElement = c_uint;
pub var guiState: GuiState = @as(c_uint, @bitCast(STATE_NORMAL));
pub var guiFont: Font = Font{
    .baseSize = @as(c_int, 0),
    .glyphCount = 0,
    .glyphPadding = 0,
    .texture = @import("std").mem.zeroes(Texture2D),
    .recs = null,
    .glyphs = null,
};
pub var guiLocked: bool = @as(c_int, 0) != 0;
pub var guiAlpha: f32 = 1.0;
pub var guiIconScale: c_uint = 1;
pub var guiTooltip: bool = @as(c_int, 0) != 0;
pub var guiTooltipPtr: [*c]const u8 = null;
pub var guiSliderDragging: bool = @as(c_int, 0) != 0;
pub var guiSliderActive: Rectangle = Rectangle{
    .x = @as(f32, @floatFromInt(@as(c_int, 0))),
    .y = 0,
    .width = 0,
    .height = 0,
};
pub var textBoxCursorIndex: c_int = 0;
pub var autoCursorCooldownCounter: c_int = 0;
pub var autoCursorDelayCounter: c_int = 0;
pub var guiStyle: [384]c_uint = [1]c_uint{
    0,
} ++ [1]c_uint{0} ** 383;
pub var guiStyleLoaded: bool = @as(c_int, 0) != 0;
pub fn GuiLoadStyleFromMemory(arg_fileData: [*c]const u8, arg_dataSize: c_int) callconv(.C) void {
    var fileData = arg_fileData;
    _ = &fileData;
    var dataSize = arg_dataSize;
    _ = &dataSize;
    var fileDataPtr: [*c]u8 = @as([*c]u8, @ptrCast(@volatileCast(@constCast(fileData))));
    _ = &fileDataPtr;
    var signature: [5]u8 = [1]u8{
        0,
    } ++ [1]u8{0} ** 4;
    _ = &signature;
    var version: c_short = 0;
    _ = &version;
    var reserved: c_short = 0;
    _ = &reserved;
    var propertyCount: c_int = 0;
    _ = &propertyCount;
    _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&signature))))), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4)))), __builtin_object_size(@as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&signature))))), @as(c_int, 0)));
    _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&version)), @as(?*const anyopaque, @ptrCast(fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4))))))), @sizeOf(c_short), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&version)), @as(c_int, 0)));
    _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&reserved)), @as(?*const anyopaque, @ptrCast((fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4)))))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2))))))), @sizeOf(c_short), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&reserved)), @as(c_int, 0)));
    _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&propertyCount)), @as(?*const anyopaque, @ptrCast(((fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4)))))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&propertyCount)), @as(c_int, 0)));
    fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 12)))));
    if ((((@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, 'r')) and (@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 1)))]))) == @as(c_int, 'G'))) and (@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 2)))]))) == @as(c_int, 'S'))) and (@as(c_int, @bitCast(@as(c_uint, signature[@as(c_uint, @intCast(@as(c_int, 3)))]))) == @as(c_int, ' '))) {
        var controlId: c_short = 0;
        _ = &controlId;
        var propertyId: c_short = 0;
        _ = &propertyId;
        var propertyValue: c_uint = 0;
        _ = &propertyValue;
        {
            var i: c_int = 0;
            _ = &i;
            while (i < propertyCount) : (i += 1) {
                _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&controlId)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(c_short), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&controlId)), @as(c_int, 0)));
                _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&propertyId)), @as(?*const anyopaque, @ptrCast(fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2))))))), @sizeOf(c_short), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&propertyId)), @as(c_int, 0)));
                _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&propertyValue)), @as(?*const anyopaque, @ptrCast((fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2)))))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 2))))))), @sizeOf(c_uint), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&propertyValue)), @as(c_int, 0)));
                fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 8)))));
                if (@as(c_int, @bitCast(@as(c_int, controlId))) == @as(c_int, 0)) {
                    GuiSetStyle(@as(c_int, 0), @as(c_int, @bitCast(@as(c_int, propertyId))), @as(c_int, @bitCast(propertyValue)));
                    if (@as(c_int, @bitCast(@as(c_int, propertyId))) < @as(c_int, 16)) {
                        var i_1: c_int = 1;
                        _ = &i_1;
                        while (i_1 < @as(c_int, 16)) : (i_1 += 1) {
                            GuiSetStyle(i_1, @as(c_int, @bitCast(@as(c_int, propertyId))), @as(c_int, @bitCast(propertyValue)));
                        }
                    }
                } else {
                    GuiSetStyle(@as(c_int, @bitCast(@as(c_int, controlId))), @as(c_int, @bitCast(@as(c_int, propertyId))), @as(c_int, @bitCast(propertyValue)));
                }
            }
        }
        var fontDataSize: c_int = 0;
        _ = &fontDataSize;
        _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&fontDataSize)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&fontDataSize)), @as(c_int, 0)));
        fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4)))));
        if (fontDataSize > @as(c_int, 0)) {
            var font: Font = Font{
                .baseSize = @as(c_int, 0),
                .glyphCount = 0,
                .glyphPadding = 0,
                .texture = @import("std").mem.zeroes(Texture2D),
                .recs = null,
                .glyphs = null,
            };
            _ = &font;
            var fontType: c_int = 0;
            _ = &fontType;
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&font.baseSize)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&font.baseSize)), @as(c_int, 0)));
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&font.glyphCount)), @as(?*const anyopaque, @ptrCast(fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&font.glyphCount)), @as(c_int, 0)));
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&fontType)), @as(?*const anyopaque, @ptrCast((fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4)))))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&fontType)), @as(c_int, 0)));
            fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 12)))));
            var fontWhiteRec: Rectangle = Rectangle{
                .x = @as(f32, @floatFromInt(@as(c_int, 0))),
                .y = 0,
                .width = 0,
                .height = 0,
            };
            _ = &fontWhiteRec;
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&fontWhiteRec)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(Rectangle), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&fontWhiteRec)), @as(c_int, 0)));
            fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 16)))));
            var fontImageUncompSize: c_int = 0;
            _ = &fontImageUncompSize;
            var fontImageCompSize: c_int = 0;
            _ = &fontImageCompSize;
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&fontImageUncompSize)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&fontImageUncompSize)), @as(c_int, 0)));
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&fontImageCompSize)), @as(?*const anyopaque, @ptrCast(fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&fontImageCompSize)), @as(c_int, 0)));
            fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 8)))));
            var imFont: Image = Image{
                .data = null,
                .width = 0,
                .height = 0,
                .mipmaps = 0,
                .format = 0,
            };
            _ = &imFont;
            imFont.mipmaps = 1;
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&imFont.width)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&imFont.width)), @as(c_int, 0)));
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&imFont.height)), @as(?*const anyopaque, @ptrCast(fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&imFont.height)), @as(c_int, 0)));
            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&imFont.format)), @as(?*const anyopaque, @ptrCast((fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4)))))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&imFont.format)), @as(c_int, 0)));
            fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 12)))));
            if ((fontImageCompSize > @as(c_int, 0)) and (fontImageCompSize != fontImageUncompSize)) {
                var dataUncompSize: c_int = 0;
                _ = &dataUncompSize;
                var compData: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, fontImageCompSize)))))));
                _ = &compData;
                _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(compData)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @as(c_ulong, @bitCast(@as(c_long, fontImageCompSize))), __builtin_object_size(@as(?*const anyopaque, @ptrCast(compData)), @as(c_int, 0)));
                fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(fontImageCompSize))));
                imFont.data = @as(?*anyopaque, @ptrCast(DecompressData(compData, fontImageCompSize, &dataUncompSize)));
                if (dataUncompSize != fontImageUncompSize) {
                    _ = printf("WARNING: Uncompressed font atlas image data could be corrupted");
                }
                free(@as(?*anyopaque, @ptrCast(compData)));
            } else {
                imFont.data = @as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, fontImageUncompSize)))))))));
                _ = __builtin___memcpy_chk(imFont.data, @as(?*const anyopaque, @ptrCast(fileDataPtr)), @as(c_ulong, @bitCast(@as(c_long, fontImageUncompSize))), __builtin_object_size(imFont.data, @as(c_int, 0)));
                fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(fontImageUncompSize))));
            }
            if (font.texture.id != GetFontDefault().texture.id) {
                UnloadTexture(font.texture);
            }
            font.texture = LoadTextureFromImage(imFont);
            free(imFont.data);
            if (font.texture.id != @as(c_uint, @bitCast(@as(c_int, 0)))) {
                var recsDataSize: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_long, font.glyphCount))) *% @sizeOf(Rectangle)))));
                _ = &recsDataSize;
                var recsDataCompressedSize: c_int = 0;
                _ = &recsDataCompressedSize;
                if (@as(c_int, @bitCast(@as(c_int, version))) >= @as(c_int, 400)) {
                    _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&recsDataCompressedSize)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&recsDataCompressedSize)), @as(c_int, 0)));
                    fileDataPtr += @as([*c]u8, @ptrFromInt(@sizeOf(c_int)));
                }
                if ((recsDataCompressedSize > @as(c_int, 0)) and (recsDataCompressedSize != recsDataSize)) {
                    var recsDataCompressed: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, recsDataCompressedSize)))))));
                    _ = &recsDataCompressed;
                    _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(recsDataCompressed)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @as(c_ulong, @bitCast(@as(c_long, recsDataCompressedSize))), __builtin_object_size(@as(?*const anyopaque, @ptrCast(recsDataCompressed)), @as(c_int, 0)));
                    fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(recsDataCompressedSize))));
                    var recsDataUncompSize: c_int = 0;
                    _ = &recsDataUncompSize;
                    font.recs = @as([*c]Rectangle, @ptrCast(@alignCast(DecompressData(recsDataCompressed, recsDataCompressedSize, &recsDataUncompSize))));
                    if (recsDataUncompSize != recsDataSize) {
                        _ = printf("WARNING: Uncompressed font recs data could be corrupted");
                    }
                    free(@as(?*anyopaque, @ptrCast(recsDataCompressed)));
                } else {
                    font.recs = @as([*c]Rectangle, @ptrCast(@alignCast(calloc(@as(c_ulong, @bitCast(@as(c_long, font.glyphCount))), @sizeOf(Rectangle)))));
                    {
                        var i: c_int = 0;
                        _ = &i;
                        while (i < font.glyphCount) : (i += 1) {
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.recs + @as(usize, @intCast(tmp)) else break :blk font.recs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(Rectangle), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.recs + @as(usize, @intCast(tmp)) else break :blk font.recs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*)), @as(c_int, 0)));
                            fileDataPtr += @as([*c]u8, @ptrFromInt(@sizeOf(Rectangle)));
                        }
                    }
                }
                var glyphsDataSize: c_int = font.glyphCount * @as(c_int, 16);
                _ = &glyphsDataSize;
                var glyphsDataCompressedSize: c_int = 0;
                _ = &glyphsDataCompressedSize;
                if (@as(c_int, @bitCast(@as(c_int, version))) >= @as(c_int, 400)) {
                    _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&glyphsDataCompressedSize)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&glyphsDataCompressedSize)), @as(c_int, 0)));
                    fileDataPtr += @as([*c]u8, @ptrFromInt(@sizeOf(c_int)));
                }
                font.glyphs = @as([*c]GlyphInfo, @ptrCast(@alignCast(calloc(@as(c_ulong, @bitCast(@as(c_long, font.glyphCount))), @sizeOf(GlyphInfo)))));
                if ((glyphsDataCompressedSize > @as(c_int, 0)) and (glyphsDataCompressedSize != glyphsDataSize)) {
                    var glypsDataCompressed: [*c]u8 = @as([*c]u8, @ptrCast(@alignCast(malloc(@as(c_ulong, @bitCast(@as(c_long, glyphsDataCompressedSize)))))));
                    _ = &glypsDataCompressed;
                    _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(glypsDataCompressed)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @as(c_ulong, @bitCast(@as(c_long, glyphsDataCompressedSize))), __builtin_object_size(@as(?*const anyopaque, @ptrCast(glypsDataCompressed)), @as(c_int, 0)));
                    fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(glyphsDataCompressedSize))));
                    var glyphsDataUncompSize: c_int = 0;
                    _ = &glyphsDataUncompSize;
                    var glyphsDataUncomp: [*c]u8 = DecompressData(glypsDataCompressed, glyphsDataCompressedSize, &glyphsDataUncompSize);
                    _ = &glyphsDataUncomp;
                    if (glyphsDataUncompSize != glyphsDataSize) {
                        _ = printf("WARNING: Uncompressed font glyphs data could be corrupted");
                    }
                    var glyphsDataUncompPtr: [*c]u8 = glyphsDataUncomp;
                    _ = &glyphsDataUncompPtr;
                    {
                        var i: c_int = 0;
                        _ = &i;
                        while (i < font.glyphCount) : (i += 1) {
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.value)), @as(?*const anyopaque, @ptrCast(glyphsDataUncompPtr)), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.value)), @as(c_int, 0)));
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.offsetX)), @as(?*const anyopaque, @ptrCast(glyphsDataUncompPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.offsetX)), @as(c_int, 0)));
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.offsetY)), @as(?*const anyopaque, @ptrCast(glyphsDataUncompPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 8))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.offsetY)), @as(c_int, 0)));
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.advanceX)), @as(?*const anyopaque, @ptrCast(glyphsDataUncompPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 12))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.advanceX)), @as(c_int, 0)));
                            glyphsDataUncompPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 16)))));
                        }
                    }
                    free(@as(?*anyopaque, @ptrCast(glypsDataCompressed)));
                    free(@as(?*anyopaque, @ptrCast(glyphsDataUncomp)));
                } else {
                    {
                        var i: c_int = 0;
                        _ = &i;
                        while (i < font.glyphCount) : (i += 1) {
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.value)), @as(?*const anyopaque, @ptrCast(fileDataPtr)), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.value)), @as(c_int, 0)));
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.offsetX)), @as(?*const anyopaque, @ptrCast(fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 4))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.offsetX)), @as(c_int, 0)));
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.offsetY)), @as(?*const anyopaque, @ptrCast(fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 8))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.offsetY)), @as(c_int, 0)));
                            _ = __builtin___memcpy_chk(@as(?*anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.advanceX)), @as(?*const anyopaque, @ptrCast(fileDataPtr + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 12))))))), @sizeOf(c_int), __builtin_object_size(@as(?*const anyopaque, @ptrCast(&(blk: {
                                const tmp = i;
                                if (tmp >= 0) break :blk font.glyphs + @as(usize, @intCast(tmp)) else break :blk font.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.advanceX)), @as(c_int, 0)));
                            fileDataPtr += @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 16)))));
                        }
                    }
                }
            } else {
                font = GetFontDefault();
            }
            GuiSetFont(font);
            if ((((fontWhiteRec.x > @as(f32, @floatFromInt(@as(c_int, 0)))) and (fontWhiteRec.y > @as(f32, @floatFromInt(@as(c_int, 0))))) and (fontWhiteRec.width > @as(f32, @floatFromInt(@as(c_int, 0))))) and (fontWhiteRec.height > @as(f32, @floatFromInt(@as(c_int, 0))))) {
                SetShapesTexture(font.texture, fontWhiteRec);
            }
        }
    }
}
pub fn GetTextWidth(arg_text: [*c]const u8) callconv(.C) c_int {
    var text = arg_text;
    _ = &text;
    var textSize: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    _ = &textSize;
    var textIconOffset: c_int = 0;
    _ = &textIconOffset;
    if ((text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@as(c_int, @bitCast(@as(c_uint, text[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'))) {
        if (@as(c_int, @bitCast(@as(c_uint, text[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '#')) {
            {
                var i: c_int = 1;
                _ = &i;
                while ((i < @as(c_int, 5)) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) != @as(c_int, '\x00'))) : (i += 1) {
                    if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) == @as(c_int, '#')) {
                        textIconOffset = i;
                        break;
                    }
                }
            }
        }
        text += @as(usize, @bitCast(@as(isize, @intCast(textIconOffset))));
        var fontSize: f32 = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
        _ = &fontSize;
        if ((guiFont.texture.id > @as(c_uint, @bitCast(@as(c_int, 0)))) and (text != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
            var size: c_int = 0;
            _ = &size;
            {
                var i: c_int = 0;
                _ = &i;
                while (i < @as(c_int, 256)) : (i += 1) {
                    if ((@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) != @as(c_int, '\x00')) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*))) != @as(c_int, '\n'))) {
                        size += 1;
                    } else break;
                }
            }
            var scaleFactor: f32 = fontSize / @as(f32, @floatFromInt(guiFont.baseSize));
            _ = &scaleFactor;
            textSize.y = @as(f32, @floatFromInt(guiFont.baseSize)) * scaleFactor;
            var glyphWidth: f32 = 0.0;
            _ = &glyphWidth;
            {
                var i: c_int = 0;
                _ = &i;
                var codepointSize: c_int = 0;
                _ = &codepointSize;
                while (i < size) : (i += codepointSize) {
                    var codepoint: c_int = GetCodepointNext(&(blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, &codepointSize);
                    _ = &codepoint;
                    var codepointIndex: c_int = GetGlyphIndex(guiFont, codepoint);
                    _ = &codepointIndex;
                    if ((blk: {
                        const tmp = codepointIndex;
                        if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*.advanceX == @as(c_int, 0)) {
                        glyphWidth = (blk: {
                            const tmp = codepointIndex;
                            if (tmp >= 0) break :blk guiFont.recs + @as(usize, @intCast(tmp)) else break :blk guiFont.recs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*.width * scaleFactor;
                    } else {
                        glyphWidth = @as(f32, @floatFromInt((blk: {
                            const tmp = codepointIndex;
                            if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*.advanceX)) * scaleFactor;
                    }
                    textSize.x += glyphWidth + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SPACING)));
                }
            }
        }
        if (textIconOffset > @as(c_int, 0)) {
            textSize.x += @as(f32, @floatFromInt(@as(c_int, 16) - @as(c_int, 4)));
        }
    }
    return @as(c_int, @intFromFloat(textSize.x));
}
pub fn GetTextBounds(arg_control: c_int, arg_bounds: Rectangle) callconv(.C) Rectangle {
    var control = arg_control;
    _ = &control;
    var bounds = arg_bounds;
    _ = &bounds;
    var textBounds: Rectangle = bounds;
    _ = &textBounds;
    textBounds.x = bounds.x + @as(f32, @floatFromInt(GuiGetStyle(control, BORDER_WIDTH)));
    textBounds.y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(control, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(control, TEXT_PADDING)));
    textBounds.width = (bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(control, BORDER_WIDTH)))) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(control, TEXT_PADDING)));
    textBounds.height = (bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(control, BORDER_WIDTH)))) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(control, TEXT_PADDING)));
    while (true) {
        switch (control) {
            else => {
                {
                    if (GuiGetStyle(control, TEXT_ALIGNMENT) == TEXT_ALIGN_RIGHT) {
                        textBounds.x -= @as(f32, @floatFromInt(GuiGetStyle(control, TEXT_PADDING)));
                    } else {
                        textBounds.x += @as(f32, @floatFromInt(GuiGetStyle(control, TEXT_PADDING)));
                    }
                }
                break;
            },
        }
        break;
    }
    return textBounds;
}
pub fn GetTextIcon(arg_text: [*c]const u8, arg_iconId: [*c]c_int) callconv(.C) [*c]const u8 {
    var text = arg_text;
    _ = &text;
    var iconId = arg_iconId;
    _ = &iconId;
    iconId.* = -@as(c_int, 1);
    if (@as(c_int, @bitCast(@as(c_uint, text[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '#')) {
        var iconValue: [4]u8 = [1]u8{
            0,
        } ++ [1]u8{0} ** 3;
        _ = &iconValue;
        var pos: c_int = 1;
        _ = &pos;
        while (((pos < @as(c_int, 4)) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = pos;
            if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) >= @as(c_int, '0'))) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = pos;
            if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) <= @as(c_int, '9'))) {
            iconValue[@as(c_uint, @intCast(pos - @as(c_int, 1)))] = (blk: {
                const tmp = pos;
                if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*;
            pos += 1;
        }
        if (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = pos;
            if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, '#')) {
            iconId.* = TextToInteger(@as([*c]u8, @ptrCast(@alignCast(&iconValue))));
            if (iconId.* >= @as(c_int, 0)) {
                text += @as(usize, @bitCast(@as(isize, @intCast(pos + @as(c_int, 1)))));
            }
        }
    }
    return text;
}
pub fn GuiDrawText(arg_text: [*c]const u8, arg_textBounds: Rectangle, arg_alignment: c_int, arg_tint: Color) callconv(.C) void {
    var text = arg_text;
    _ = &text;
    var textBounds = arg_textBounds;
    _ = &textBounds;
    var alignment = arg_alignment;
    _ = &alignment;
    var tint = arg_tint;
    _ = &tint;
    if ((text == @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (@as(c_int, @bitCast(@as(c_uint, text[@as(c_uint, @intCast(@as(c_int, 0)))]))) == @as(c_int, '\x00'))) return;
    var lineCount: c_int = 0;
    _ = &lineCount;
    var lines: [*c][*c]const u8 = GetTextLines(text, &lineCount);
    _ = &lines;
    var alignmentVertical: c_int = GuiGetStyle(DEFAULT, TEXT_ALIGNMENT_VERTICAL);
    _ = &alignmentVertical;
    var wrapMode: c_int = GuiGetStyle(DEFAULT, TEXT_WRAP_MODE);
    _ = &wrapMode;
    var totalHeight: f32 = @as(f32, @floatFromInt((lineCount * GuiGetStyle(DEFAULT, TEXT_SIZE)) + @divTrunc((lineCount - @as(c_int, 1)) * GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2))));
    _ = &totalHeight;
    var posOffsetY: f32 = 0.0;
    _ = &posOffsetY;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < lineCount) : (i += 1) {
            var iconId: c_int = 0;
            _ = &iconId;
            (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk lines + @as(usize, @intCast(tmp)) else break :blk lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).* = GetTextIcon((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk lines + @as(usize, @intCast(tmp)) else break :blk lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*, &iconId);
            var textBoundsPosition: Vector2 = Vector2{
                .x = textBounds.x,
                .y = textBounds.y,
            };
            _ = &textBoundsPosition;
            var textSizeX: c_int = GetTextWidth((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk lines + @as(usize, @intCast(tmp)) else break :blk lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*);
            _ = &textSizeX;
            if (iconId >= @as(c_int, 0)) {
                textSizeX += @as(c_int, @bitCast(@as(c_uint, @bitCast(@as(c_int, 16))) *% guiIconScale));
                if (((blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk lines + @as(usize, @intCast(tmp)) else break :blk lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).* != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk lines + @as(usize, @intCast(tmp)) else break :blk lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*[@as(c_uint, @intCast(@as(c_int, 0)))]))) != @as(c_int, '\x00'))) {
                    textSizeX += @as(c_int, 4);
                }
            }
            while (true) {
                switch (alignment) {
                    @as(c_int, 0) => {
                        textBoundsPosition.x = textBounds.x;
                        break;
                    },
                    @as(c_int, 1) => {
                        textBoundsPosition.x = (textBounds.x + (textBounds.width / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(textSizeX, @as(c_int, 2))));
                        break;
                    },
                    @as(c_int, 2) => {
                        textBoundsPosition.x = (textBounds.x + textBounds.width) - @as(f32, @floatFromInt(textSizeX));
                        break;
                    },
                    else => break,
                }
                break;
            }
            while (true) {
                switch (alignmentVertical) {
                    @as(c_int, 0) => {
                        textBoundsPosition.y = textBounds.y + posOffsetY;
                        break;
                    },
                    @as(c_int, 1) => {
                        textBoundsPosition.y = (((textBounds.y + posOffsetY) + (textBounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - (totalHeight / @as(f32, @floatFromInt(@as(c_int, 2))))) + @as(f32, @floatFromInt(@import("std").zig.c_translation.signedRemainder(@as(c_int, @intFromFloat(textBounds.height)), @as(c_int, 2))));
                        break;
                    },
                    @as(c_int, 2) => {
                        textBoundsPosition.y = (((textBounds.y + posOffsetY) + textBounds.height) - totalHeight) + @as(f32, @floatFromInt(@import("std").zig.c_translation.signedRemainder(@as(c_int, @intFromFloat(textBounds.height)), @as(c_int, 2))));
                        break;
                    },
                    else => break,
                }
                break;
            }
            textBoundsPosition.x = @as(f32, @floatFromInt(@as(c_int, @intFromFloat(textBoundsPosition.x))));
            textBoundsPosition.y = @as(f32, @floatFromInt(@as(c_int, @intFromFloat(textBoundsPosition.y))));
            if (iconId >= @as(c_int, 0)) {
                GuiDrawIcon(iconId, @as(c_int, @intFromFloat(textBoundsPosition.x)), @as(c_int, @intFromFloat(((textBounds.y + (textBounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt((@as(c_uint, @bitCast(@as(c_int, 16))) *% guiIconScale) / @as(c_uint, @bitCast(@as(c_int, 2)))))) + @as(f32, @floatFromInt(@import("std").zig.c_translation.signedRemainder(@as(c_int, @intFromFloat(textBounds.height)), @as(c_int, 2)))))), @as(c_int, @bitCast(guiIconScale)), tint);
                textBoundsPosition.x += @as(f32, @floatFromInt((@as(c_uint, @bitCast(@as(c_int, 16))) *% guiIconScale) +% @as(c_uint, @bitCast(@as(c_int, 4)))));
            }
            var lineSize: c_int = 0;
            _ = &lineSize;
            {
                var c: c_int = 0;
                _ = &c;
                while (((@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = c;
                    if (tmp >= 0) break :blk (blk_1: {
                        const tmp_2 = i;
                        if (tmp_2 >= 0) break :blk_1 lines + @as(usize, @intCast(tmp_2)) else break :blk_1 lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_2)) +% -1));
                    }).* + @as(usize, @intCast(tmp)) else break :blk (blk_1: {
                        const tmp_2 = i;
                        if (tmp_2 >= 0) break :blk_1 lines + @as(usize, @intCast(tmp_2)) else break :blk_1 lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_2)) +% -1));
                    }).* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) != @as(c_int, '\x00')) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = c;
                    if (tmp >= 0) break :blk (blk_1: {
                        const tmp_2 = i;
                        if (tmp_2 >= 0) break :blk_1 lines + @as(usize, @intCast(tmp_2)) else break :blk_1 lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_2)) +% -1));
                    }).* + @as(usize, @intCast(tmp)) else break :blk (blk_1: {
                        const tmp_2 = i;
                        if (tmp_2 >= 0) break :blk_1 lines + @as(usize, @intCast(tmp_2)) else break :blk_1 lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_2)) +% -1));
                    }).* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) != @as(c_int, '\n'))) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = c;
                    if (tmp >= 0) break :blk (blk_1: {
                        const tmp_2 = i;
                        if (tmp_2 >= 0) break :blk_1 lines + @as(usize, @intCast(tmp_2)) else break :blk_1 lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_2)) +% -1));
                    }).* + @as(usize, @intCast(tmp)) else break :blk (blk_1: {
                        const tmp_2 = i;
                        if (tmp_2 >= 0) break :blk_1 lines + @as(usize, @intCast(tmp_2)) else break :blk_1 lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_2)) +% -1));
                    }).* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) != @as(c_int, '\r'))) : (_ = blk: {
                    c += 1;
                    break :blk blk_1: {
                        const ref = &lineSize;
                        const tmp = ref.*;
                        ref.* += 1;
                        break :blk_1 tmp;
                    };
                }) {}
            }
            var scaleFactor: f32 = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))) / @as(f32, @floatFromInt(guiFont.baseSize));
            _ = &scaleFactor;
            var textOffsetY: c_int = 0;
            _ = &textOffsetY;
            var textOffsetX: f32 = 0.0;
            _ = &textOffsetX;
            var glyphWidth: f32 = 0;
            _ = &glyphWidth;
            {
                var c: c_int = 0;
                _ = &c;
                var codepointSize: c_int = 0;
                _ = &codepointSize;
                while (c < lineSize) : (c += codepointSize) {
                    var codepoint: c_int = GetCodepointNext(&(blk: {
                        const tmp = c;
                        if (tmp >= 0) break :blk (blk_1: {
                            const tmp_2 = i;
                            if (tmp_2 >= 0) break :blk_1 lines + @as(usize, @intCast(tmp_2)) else break :blk_1 lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_2)) +% -1));
                        }).* + @as(usize, @intCast(tmp)) else break :blk (blk_1: {
                            const tmp_2 = i;
                            if (tmp_2 >= 0) break :blk_1 lines + @as(usize, @intCast(tmp_2)) else break :blk_1 lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp_2)) +% -1));
                        }).* - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*, &codepointSize);
                    _ = &codepoint;
                    var index_1: c_int = GetGlyphIndex(guiFont, codepoint);
                    _ = &index_1;
                    if (codepoint == @as(c_int, 63)) {
                        codepointSize = 1;
                    }
                    if (wrapMode == TEXT_WRAP_CHAR) {
                        if ((blk: {
                            const tmp = index_1;
                            if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*.advanceX == @as(c_int, 0)) {
                            glyphWidth = (blk: {
                                const tmp = index_1;
                                if (tmp >= 0) break :blk guiFont.recs + @as(usize, @intCast(tmp)) else break :blk guiFont.recs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.width * scaleFactor;
                        } else {
                            glyphWidth = @as(f32, @floatFromInt((blk: {
                                const tmp = index_1;
                                if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.advanceX)) * scaleFactor;
                        }
                        if ((textOffsetX + glyphWidth) > textBounds.width) {
                            textOffsetX = 0.0;
                            textOffsetY += GuiGetStyle(DEFAULT, TEXT_LINE_SPACING);
                        }
                    } else if (wrapMode == TEXT_WRAP_WORD) {
                        var nextSpaceIndex: c_int = 0;
                        _ = &nextSpaceIndex;
                        var nextSpaceWidth: f32 = GetNextSpaceWidth((blk: {
                            const tmp = i;
                            if (tmp >= 0) break :blk lines + @as(usize, @intCast(tmp)) else break :blk lines - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* + @as(usize, @bitCast(@as(isize, @intCast(c)))), &nextSpaceIndex);
                        _ = &nextSpaceWidth;
                        if ((textOffsetX + nextSpaceWidth) > textBounds.width) {
                            textOffsetX = 0.0;
                            textOffsetY += GuiGetStyle(DEFAULT, TEXT_LINE_SPACING);
                        }
                    }
                    if (codepoint == @as(c_int, '\n')) break else {
                        if ((codepoint != @as(c_int, ' ')) and (codepoint != @as(c_int, '\t'))) {
                            if (wrapMode == TEXT_WRAP_NONE) {
                                if (textOffsetX <= (textBounds.width - glyphWidth)) {
                                    DrawTextCodepoint(guiFont, codepoint, Vector2{
                                        .x = textBoundsPosition.x + textOffsetX,
                                        .y = textBoundsPosition.y + @as(f32, @floatFromInt(textOffsetY)),
                                    }, @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))), GuiFade(tint, guiAlpha));
                                }
                            } else if ((wrapMode == TEXT_WRAP_CHAR) or (wrapMode == TEXT_WRAP_WORD)) {
                                if ((textBoundsPosition.y + @as(f32, @floatFromInt(textOffsetY))) <= ((textBounds.y + textBounds.height) - @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))))) {
                                    DrawTextCodepoint(guiFont, codepoint, Vector2{
                                        .x = textBoundsPosition.x + textOffsetX,
                                        .y = textBoundsPosition.y + @as(f32, @floatFromInt(textOffsetY)),
                                    }, @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))), GuiFade(tint, guiAlpha));
                                }
                            }
                        }
                        if ((blk: {
                            const tmp = index_1;
                            if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*.advanceX == @as(c_int, 0)) {
                            textOffsetX += ((blk: {
                                const tmp = index_1;
                                if (tmp >= 0) break :blk guiFont.recs + @as(usize, @intCast(tmp)) else break :blk guiFont.recs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.width * scaleFactor) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SPACING)));
                        } else {
                            textOffsetX += (@as(f32, @floatFromInt((blk: {
                                const tmp = index_1;
                                if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                            }).*.advanceX)) * scaleFactor) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SPACING)));
                        }
                    }
                }
            }
            if (wrapMode == TEXT_WRAP_NONE) {
                posOffsetY += @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_LINE_SPACING)));
            } else if ((wrapMode == TEXT_WRAP_CHAR) or (wrapMode == TEXT_WRAP_WORD)) {
                posOffsetY += @as(f32, @floatFromInt(textOffsetY)) + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_LINE_SPACING)));
            }
        }
    }
}
pub fn GuiDrawRectangle(arg_rec: Rectangle, arg_borderWidth: c_int, arg_borderColor: Color, arg_color: Color) callconv(.C) void {
    var rec = arg_rec;
    _ = &rec;
    var borderWidth = arg_borderWidth;
    _ = &borderWidth;
    var borderColor = arg_borderColor;
    _ = &borderColor;
    var color = arg_color;
    _ = &color;
    if (@as(c_int, @bitCast(@as(c_uint, color.a))) > @as(c_int, 0)) {
        DrawRectangle(@as(c_int, @intFromFloat(rec.x)), @as(c_int, @intFromFloat(rec.y)), @as(c_int, @intFromFloat(rec.width)), @as(c_int, @intFromFloat(rec.height)), GuiFade(color, guiAlpha));
    }
    if (borderWidth > @as(c_int, 0)) {
        DrawRectangle(@as(c_int, @intFromFloat(rec.x)), @as(c_int, @intFromFloat(rec.y)), @as(c_int, @intFromFloat(rec.width)), borderWidth, GuiFade(borderColor, guiAlpha));
        DrawRectangle(@as(c_int, @intFromFloat(rec.x)), @as(c_int, @intFromFloat(rec.y)) + borderWidth, borderWidth, @as(c_int, @intFromFloat(rec.height)) - (@as(c_int, 2) * borderWidth), GuiFade(borderColor, guiAlpha));
        DrawRectangle((@as(c_int, @intFromFloat(rec.x)) + @as(c_int, @intFromFloat(rec.width))) - borderWidth, @as(c_int, @intFromFloat(rec.y)) + borderWidth, borderWidth, @as(c_int, @intFromFloat(rec.height)) - (@as(c_int, 2) * borderWidth), GuiFade(borderColor, guiAlpha));
        DrawRectangle(@as(c_int, @intFromFloat(rec.x)), (@as(c_int, @intFromFloat(rec.y)) + @as(c_int, @intFromFloat(rec.height))) - borderWidth, @as(c_int, @intFromFloat(rec.width)), borderWidth, GuiFade(borderColor, guiAlpha));
    }
}
pub fn GuiTextSplit(arg_text: [*c]const u8, arg_delimiter: u8, arg_count: [*c]c_int, arg_textRow: [*c]c_int) callconv(.C) [*c][*c]const u8 {
    var text = arg_text;
    _ = &text;
    var delimiter = arg_delimiter;
    _ = &delimiter;
    var count = arg_count;
    _ = &count;
    var textRow = arg_textRow;
    _ = &textRow;
    const result = struct {
        var static: [128][*c]const u8 = [1][*c]const u8{
            null,
        } ++ [1][*c]const u8{null} ** 127;
    };
    _ = &result;
    const buffer = struct {
        var static: [1024]u8 = [1]u8{
            0,
        } ++ [1]u8{0} ** 1023;
    };
    _ = &buffer;
    _ = __builtin___memset_chk(@as(?*anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buffer.static))))), @as(c_int, 0), @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1024)))), __builtin_object_size(@as(?*const anyopaque, @ptrCast(@as([*c]u8, @ptrCast(@alignCast(&buffer.static))))), @as(c_int, 0)));
    result.static[@as(c_uint, @intCast(@as(c_int, 0)))] = @as([*c]u8, @ptrCast(@alignCast(&buffer.static)));
    var counter: c_int = 1;
    _ = &counter;
    if (textRow != @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        textRow[@as(c_uint, @intCast(@as(c_int, 0)))] = 0;
    }
    {
        var i: c_int = 0;
        _ = &i;
        while (i < @as(c_int, 1024)) : (i += 1) {
            buffer.static[@as(c_uint, @intCast(i))] = (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*;
            if (@as(c_int, @bitCast(@as(c_uint, buffer.static[@as(c_uint, @intCast(i))]))) == @as(c_int, '\x00')) break else if ((@as(c_int, @bitCast(@as(c_uint, buffer.static[@as(c_uint, @intCast(i))]))) == @as(c_int, @bitCast(@as(c_uint, delimiter)))) or (@as(c_int, @bitCast(@as(c_uint, buffer.static[@as(c_uint, @intCast(i))]))) == @as(c_int, '\n'))) {
                result.static[@as(c_uint, @intCast(counter))] = (@as([*c]u8, @ptrCast(@alignCast(&buffer.static))) + @as(usize, @bitCast(@as(isize, @intCast(i))))) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                if (textRow != @as([*c]c_int, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    if (@as(c_int, @bitCast(@as(c_uint, buffer.static[@as(c_uint, @intCast(i))]))) == @as(c_int, '\n')) {
                        (blk: {
                            const tmp = counter;
                            if (tmp >= 0) break :blk textRow + @as(usize, @intCast(tmp)) else break :blk textRow - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = counter - @as(c_int, 1);
                            if (tmp >= 0) break :blk textRow + @as(usize, @intCast(tmp)) else break :blk textRow - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* + @as(c_int, 1);
                    } else {
                        (blk: {
                            const tmp = counter;
                            if (tmp >= 0) break :blk textRow + @as(usize, @intCast(tmp)) else break :blk textRow - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).* = (blk: {
                            const tmp = counter - @as(c_int, 1);
                            if (tmp >= 0) break :blk textRow + @as(usize, @intCast(tmp)) else break :blk textRow - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                        }).*;
                    }
                }
                buffer.static[@as(c_uint, @intCast(i))] = '\x00';
                counter += 1;
                if (counter == @as(c_int, 128)) break;
            }
        }
    }
    count.* = counter;
    return @as([*c][*c]const u8, @ptrCast(@alignCast(&result.static)));
}
pub fn ConvertHSVtoRGB(arg_hsv: Vector3) callconv(.C) Vector3 {
    var hsv = arg_hsv;
    _ = &hsv;
    var rgb: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    _ = &rgb;
    var hh: f32 = 0.0;
    _ = &hh;
    var p: f32 = 0.0;
    _ = &p;
    var q: f32 = 0.0;
    _ = &q;
    var t: f32 = 0.0;
    _ = &t;
    var ff: f32 = 0.0;
    _ = &ff;
    var i: c_long = 0;
    _ = &i;
    if (hsv.y <= 0.0) {
        rgb.x = hsv.z;
        rgb.y = hsv.z;
        rgb.z = hsv.z;
        return rgb;
    }
    hh = hsv.x;
    if (hh >= 360.0) {
        hh = 0.0;
    }
    hh /= 60.0;
    i = @as(c_long, @intFromFloat(hh));
    ff = hh - @as(f32, @floatFromInt(i));
    p = hsv.z * (1.0 - hsv.y);
    q = hsv.z * (1.0 - (hsv.y * ff));
    t = hsv.z * (1.0 - (hsv.y * (1.0 - ff)));
    while (true) {
        switch (i) {
            @as(c_long, @bitCast(@as(c_long, @as(c_int, 0)))) => {
                {
                    rgb.x = hsv.z;
                    rgb.y = t;
                    rgb.z = p;
                }
                break;
            },
            @as(c_long, @bitCast(@as(c_long, @as(c_int, 1)))) => {
                {
                    rgb.x = q;
                    rgb.y = hsv.z;
                    rgb.z = p;
                }
                break;
            },
            @as(c_long, @bitCast(@as(c_long, @as(c_int, 2)))) => {
                {
                    rgb.x = p;
                    rgb.y = hsv.z;
                    rgb.z = t;
                }
                break;
            },
            @as(c_long, @bitCast(@as(c_long, @as(c_int, 3)))) => {
                {
                    rgb.x = p;
                    rgb.y = q;
                    rgb.z = hsv.z;
                }
                break;
            },
            @as(c_long, @bitCast(@as(c_long, @as(c_int, 4)))) => {
                {
                    rgb.x = t;
                    rgb.y = p;
                    rgb.z = hsv.z;
                }
                break;
            },
            else => {
                {
                    rgb.x = hsv.z;
                    rgb.y = p;
                    rgb.z = q;
                }
                break;
            },
        }
        break;
    }
    return rgb;
}
pub fn ConvertRGBtoHSV(arg_rgb: Vector3) callconv(.C) Vector3 {
    var rgb = arg_rgb;
    _ = &rgb;
    var hsv: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    _ = &hsv;
    var min: f32 = 0.0;
    _ = &min;
    var max: f32 = 0.0;
    _ = &max;
    var delta: f32 = 0.0;
    _ = &delta;
    min = if (rgb.x < rgb.y) rgb.x else rgb.y;
    min = if (min < rgb.z) min else rgb.z;
    max = if (rgb.x > rgb.y) rgb.x else rgb.y;
    max = if (max > rgb.z) max else rgb.z;
    hsv.z = max;
    delta = max - min;
    if (delta < 0.000009999999747378752) {
        hsv.y = 0.0;
        hsv.x = 0.0;
        return hsv;
    }
    if (max > 0.0) {
        hsv.y = delta / max;
    } else {
        hsv.y = 0.0;
        hsv.x = 0.0;
        return hsv;
    }
    if (rgb.x >= max) {
        hsv.x = (rgb.y - rgb.z) / delta;
    } else {
        if (rgb.y >= max) {
            hsv.x = 2.0 + ((rgb.z - rgb.x) / delta);
        } else {
            hsv.x = 4.0 + ((rgb.x - rgb.y) / delta);
        }
    }
    hsv.x *= 60.0;
    if (hsv.x < 0.0) {
        hsv.x += 360.0;
    }
    return hsv;
}
pub fn GuiScrollBar(arg_bounds: Rectangle, arg_value: c_int, arg_minValue: c_int, arg_maxValue: c_int) callconv(.C) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var value = arg_value;
    _ = &value;
    var minValue = arg_minValue;
    _ = &minValue;
    var maxValue = arg_maxValue;
    _ = &maxValue;
    var state: GuiState = guiState;
    _ = &state;
    var isVertical: bool = (if (bounds.width > bounds.height) @as(c_int, 0) else @as(c_int, 1)) != 0;
    _ = &isVertical;
    const spinnerSize: c_int = if (GuiGetStyle(SCROLLBAR, ARROWS_VISIBLE) != 0) if (@as(c_int, @intFromBool(isVertical)) != 0) @as(c_int, @intFromFloat(bounds.width)) - (@as(c_int, 2) * GuiGetStyle(SCROLLBAR, BORDER_WIDTH)) else @as(c_int, @intFromFloat(bounds.height)) - (@as(c_int, 2) * GuiGetStyle(SCROLLBAR, BORDER_WIDTH)) else @as(c_int, 0);
    _ = &spinnerSize;
    var arrowUpLeft: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &arrowUpLeft;
    var arrowDownRight: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &arrowDownRight;
    var scrollbar: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &scrollbar;
    var slider: Rectangle = Rectangle{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .width = 0,
        .height = 0,
    };
    _ = &slider;
    if (value > maxValue) {
        value = maxValue;
    }
    if (value < minValue) {
        value = minValue;
    }
    const valueRange: c_int = maxValue - minValue;
    _ = &valueRange;
    var sliderSize: c_int = GuiGetStyle(SCROLLBAR, SCROLL_SLIDER_SIZE);
    _ = &sliderSize;
    arrowUpLeft = Rectangle{
        .x = bounds.x + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH))),
        .y = bounds.y + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH))),
        .width = @as(f32, @floatFromInt(spinnerSize)),
        .height = @as(f32, @floatFromInt(spinnerSize)),
    };
    if (isVertical) {
        arrowDownRight = Rectangle{
            .x = bounds.x + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH))),
            .y = ((bounds.y + bounds.height) - @as(f32, @floatFromInt(spinnerSize))) - @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH))),
            .width = @as(f32, @floatFromInt(spinnerSize)),
            .height = @as(f32, @floatFromInt(spinnerSize)),
        };
        scrollbar = Rectangle{
            .x = (bounds.x + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, SCROLL_PADDING))),
            .y = arrowUpLeft.y + arrowUpLeft.height,
            .width = bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * (GuiGetStyle(SCROLLBAR, BORDER_WIDTH) + GuiGetStyle(SCROLLBAR, SCROLL_PADDING)))),
            .height = ((bounds.height - arrowUpLeft.height) - arrowDownRight.height) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SCROLLBAR, BORDER_WIDTH))),
        };
        sliderSize = if (@as(f32, @floatFromInt(sliderSize)) >= scrollbar.height) @as(c_int, @intFromFloat(scrollbar.height)) - @as(c_int, 2) else sliderSize;
        slider = Rectangle{
            .x = (bounds.x + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, SCROLL_SLIDER_PADDING))),
            .y = scrollbar.y + @as(f32, @floatFromInt(@as(c_int, @intFromFloat((@as(f32, @floatFromInt(value - minValue)) / @as(f32, @floatFromInt(valueRange))) * (scrollbar.height - @as(f32, @floatFromInt(sliderSize))))))),
            .width = bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * (GuiGetStyle(SCROLLBAR, BORDER_WIDTH) + GuiGetStyle(SCROLLBAR, SCROLL_SLIDER_PADDING)))),
            .height = @as(f32, @floatFromInt(sliderSize)),
        };
    } else {
        arrowDownRight = Rectangle{
            .x = ((bounds.x + bounds.width) - @as(f32, @floatFromInt(spinnerSize))) - @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH))),
            .y = bounds.y + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH))),
            .width = @as(f32, @floatFromInt(spinnerSize)),
            .height = @as(f32, @floatFromInt(spinnerSize)),
        };
        scrollbar = Rectangle{
            .x = arrowUpLeft.x + arrowUpLeft.width,
            .y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, SCROLL_PADDING))),
            .width = ((bounds.width - arrowUpLeft.width) - arrowDownRight.width) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SCROLLBAR, BORDER_WIDTH))),
            .height = bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * (GuiGetStyle(SCROLLBAR, BORDER_WIDTH) + GuiGetStyle(SCROLLBAR, SCROLL_PADDING)))),
        };
        sliderSize = if (@as(f32, @floatFromInt(sliderSize)) >= scrollbar.width) @as(c_int, @intFromFloat(scrollbar.width)) - @as(c_int, 2) else sliderSize;
        slider = Rectangle{
            .x = scrollbar.x + @as(f32, @floatFromInt(@as(c_int, @intFromFloat((@as(f32, @floatFromInt(value - minValue)) / @as(f32, @floatFromInt(valueRange))) * (scrollbar.width - @as(f32, @floatFromInt(sliderSize))))))),
            .y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(SCROLLBAR, SCROLL_SLIDER_PADDING))),
            .width = @as(f32, @floatFromInt(sliderSize)),
            .height = bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * (GuiGetStyle(SCROLLBAR, BORDER_WIDTH) + GuiGetStyle(SCROLLBAR, SCROLL_SLIDER_PADDING)))),
        };
    }
    if ((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (guiSliderDragging) {
            if (((@as(c_int, @intFromBool(IsMouseButtonDown(MOUSE_BUTTON_LEFT))) != 0) and !CheckCollisionPointRec(mousePoint, arrowUpLeft)) and !CheckCollisionPointRec(mousePoint, arrowDownRight)) {
                if ((((bounds.x == guiSliderActive.x) and (bounds.y == guiSliderActive.y)) and (bounds.width == guiSliderActive.width)) and (bounds.height == guiSliderActive.height)) {
                    state = @as(c_uint, @bitCast(STATE_PRESSED));
                    if (isVertical) {
                        value = @as(c_int, @intFromFloat(((((mousePoint.y - scrollbar.y) - (slider.height / @as(f32, @floatFromInt(@as(c_int, 2))))) * @as(f32, @floatFromInt(valueRange))) / (scrollbar.height - slider.height)) + @as(f32, @floatFromInt(minValue))));
                    } else {
                        value = @as(c_int, @intFromFloat(((((mousePoint.x - scrollbar.x) - (slider.width / @as(f32, @floatFromInt(@as(c_int, 2))))) * @as(f32, @floatFromInt(valueRange))) / (scrollbar.width - slider.width)) + @as(f32, @floatFromInt(minValue))));
                    }
                }
            } else {
                guiSliderDragging = @as(c_int, 0) != 0;
                guiSliderActive = Rectangle{
                    .x = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .y = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .width = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .height = @as(f32, @floatFromInt(@as(c_int, 0))),
                };
            }
        } else if (CheckCollisionPointRec(mousePoint, bounds)) {
            state = @as(c_uint, @bitCast(STATE_FOCUSED));
            var wheel: c_int = @as(c_int, @intFromFloat(GetMouseWheelMove()));
            _ = &wheel;
            if (wheel != @as(c_int, 0)) {
                value += wheel;
            }
            if (IsMouseButtonPressed(MOUSE_BUTTON_LEFT)) {
                guiSliderDragging = @as(c_int, 1) != 0;
                guiSliderActive = bounds;
                if (CheckCollisionPointRec(mousePoint, arrowUpLeft)) {
                    value -= @divTrunc(valueRange, GuiGetStyle(SCROLLBAR, SCROLL_SPEED));
                } else if (CheckCollisionPointRec(mousePoint, arrowDownRight)) {
                    value += @divTrunc(valueRange, GuiGetStyle(SCROLLBAR, SCROLL_SPEED));
                } else if (!CheckCollisionPointRec(mousePoint, slider)) {
                    if (isVertical) {
                        value = @as(c_int, @intFromFloat(((((mousePoint.y - scrollbar.y) - (slider.height / @as(f32, @floatFromInt(@as(c_int, 2))))) * @as(f32, @floatFromInt(valueRange))) / (scrollbar.height - slider.height)) + @as(f32, @floatFromInt(minValue))));
                    } else {
                        value = @as(c_int, @intFromFloat(((((mousePoint.x - scrollbar.x) - (slider.width / @as(f32, @floatFromInt(@as(c_int, 2))))) * @as(f32, @floatFromInt(valueRange))) / (scrollbar.width - slider.width)) + @as(f32, @floatFromInt(minValue))));
                    }
                }
                state = @as(c_uint, @bitCast(STATE_PRESSED));
            }
        }
        if (value > maxValue) {
            value = maxValue;
        }
        if (value < minValue) {
            value = minValue;
        }
    }
    GuiDrawRectangle(bounds, GuiGetStyle(SCROLLBAR, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(LISTVIEW, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(DEFAULT, BORDER_COLOR_DISABLED)))));
    GuiDrawRectangle(scrollbar, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(BUTTON, BASE_COLOR_NORMAL)))));
    GuiDrawRectangle(slider, @as(c_int, 0), Color{
        .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
    }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    if (GuiGetStyle(SCROLLBAR, ARROWS_VISIBLE) != 0) {
        GuiDrawText(if (@as(c_int, @intFromBool(isVertical)) != 0) "#121#" else "#118#", Rectangle{
            .x = arrowUpLeft.x,
            .y = arrowUpLeft.y,
            .width = if (@as(c_int, @intFromBool(isVertical)) != 0) bounds.width else bounds.height,
            .height = if (@as(c_int, @intFromBool(isVertical)) != 0) bounds.width else bounds.height,
        }, TEXT_ALIGN_CENTER, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SCROLLBAR, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
        GuiDrawText(if (@as(c_int, @intFromBool(isVertical)) != 0) "#120#" else "#119#", Rectangle{
            .x = arrowDownRight.x,
            .y = arrowDownRight.y,
            .width = if (@as(c_int, @intFromBool(isVertical)) != 0) bounds.width else bounds.height,
            .height = if (@as(c_int, @intFromBool(isVertical)) != 0) bounds.width else bounds.height,
        }, TEXT_ALIGN_CENTER, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SCROLLBAR, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    }
    return value;
}
pub fn GuiTooltip(arg_controlRec: Rectangle) callconv(.C) void {
    var controlRec = arg_controlRec;
    _ = &controlRec;
    if (((!guiLocked and (@as(c_int, @intFromBool(guiTooltip)) != 0)) and (guiTooltipPtr != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) and !guiSliderDragging) {
        var textSize: Vector2 = MeasureTextEx(GuiGetFont(), guiTooltipPtr, @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))), @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SPACING))));
        _ = &textSize;
        if (((controlRec.x + textSize.x) + @as(f32, @floatFromInt(@as(c_int, 16)))) > @as(f32, @floatFromInt(GetScreenWidth()))) {
            controlRec.x -= (textSize.x + @as(f32, @floatFromInt(@as(c_int, 16)))) - controlRec.width;
        }
        _ = GuiPanel(Rectangle{
            .x = controlRec.x,
            .y = (controlRec.y + controlRec.height) + @as(f32, @floatFromInt(@as(c_int, 4))),
            .width = textSize.x + @as(f32, @floatFromInt(@as(c_int, 16))),
            .height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))) + 8.0,
        }, null);
        var textPadding: c_int = GuiGetStyle(LABEL, TEXT_PADDING);
        _ = &textPadding;
        var textAlignment: c_int = GuiGetStyle(LABEL, TEXT_ALIGNMENT);
        _ = &textAlignment;
        GuiSetStyle(LABEL, TEXT_PADDING, @as(c_int, 0));
        GuiSetStyle(LABEL, TEXT_ALIGNMENT, TEXT_ALIGN_CENTER);
        _ = GuiLabel(Rectangle{
            .x = controlRec.x,
            .y = (controlRec.y + controlRec.height) + @as(f32, @floatFromInt(@as(c_int, 4))),
            .width = textSize.x + @as(f32, @floatFromInt(@as(c_int, 16))),
            .height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))) + 8.0,
        }, guiTooltipPtr);
        GuiSetStyle(LABEL, TEXT_ALIGNMENT, textAlignment);
        GuiSetStyle(LABEL, TEXT_PADDING, textPadding);
    }
}
pub fn GuiFade(arg_color: Color, arg_alpha: f32) callconv(.C) Color {
    var color = arg_color;
    _ = &color;
    var alpha = arg_alpha;
    _ = &alpha;
    if (alpha < 0.0) {
        alpha = 0.0;
    } else if (alpha > 1.0) {
        alpha = 1.0;
    }
    var result: Color = Color{
        .r = color.r,
        .g = color.g,
        .b = color.b,
        .a = @as(u8, @intFromFloat(@as(f32, @floatFromInt(@as(c_int, @bitCast(@as(c_uint, color.a))))) * alpha)),
    };
    _ = &result;
    return result;
}
pub export fn GuiSliderPro(arg_bounds: Rectangle, arg_textLeft: [*c]const u8, arg_textRight: [*c]const u8, arg_value: [*c]f32, arg_minValue: f32, arg_maxValue: f32, arg_sliderWidth: c_int) c_int {
    var bounds = arg_bounds;
    _ = &bounds;
    var textLeft = arg_textLeft;
    _ = &textLeft;
    var textRight = arg_textRight;
    _ = &textRight;
    var value = arg_value;
    _ = &value;
    var minValue = arg_minValue;
    _ = &minValue;
    var maxValue = arg_maxValue;
    _ = &maxValue;
    var sliderWidth = arg_sliderWidth;
    _ = &sliderWidth;
    var result: c_int = 0;
    _ = &result;
    var state: GuiState = guiState;
    _ = &state;
    var temp: f32 = (maxValue - minValue) / 2.0;
    _ = &temp;
    if (value == @as([*c]f32, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        value = &temp;
    }
    var sliderValue: c_int = @as(c_int, @intFromFloat(((value.* - minValue) / (maxValue - minValue)) * (bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SLIDER, BORDER_WIDTH))))));
    _ = &sliderValue;
    var slider: Rectangle = Rectangle{
        .x = bounds.x,
        .y = (bounds.y + @as(f32, @floatFromInt(GuiGetStyle(SLIDER, BORDER_WIDTH)))) + @as(f32, @floatFromInt(GuiGetStyle(SLIDER, SLIDER_PADDING))),
        .width = @as(f32, @floatFromInt(@as(c_int, 0))),
        .height = (bounds.height - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SLIDER, BORDER_WIDTH)))) - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SLIDER, SLIDER_PADDING))),
    };
    _ = &slider;
    if (sliderWidth > @as(c_int, 0)) {
        slider.x += @as(f32, @floatFromInt(sliderValue - @divTrunc(sliderWidth, @as(c_int, 2))));
        slider.width = @as(f32, @floatFromInt(sliderWidth));
    } else if (sliderWidth == @as(c_int, 0)) {
        slider.x += @as(f32, @floatFromInt(GuiGetStyle(SLIDER, BORDER_WIDTH)));
        slider.width = @as(f32, @floatFromInt(sliderValue));
    }
    if ((state != @as(c_uint, @bitCast(STATE_DISABLED))) and !guiLocked) {
        var mousePoint: Vector2 = GetMousePosition();
        _ = &mousePoint;
        if (guiSliderDragging) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                if ((((bounds.x == guiSliderActive.x) and (bounds.y == guiSliderActive.y)) and (bounds.width == guiSliderActive.width)) and (bounds.height == guiSliderActive.height)) {
                    state = @as(c_uint, @bitCast(STATE_PRESSED));
                    value.* = (((maxValue - minValue) * (mousePoint.x - (bounds.x + @as(f32, @floatFromInt(@divTrunc(sliderWidth, @as(c_int, 2))))))) / (bounds.width - @as(f32, @floatFromInt(sliderWidth)))) + minValue;
                }
            } else {
                guiSliderDragging = @as(c_int, 0) != 0;
                guiSliderActive = Rectangle{
                    .x = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .y = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .width = @as(f32, @floatFromInt(@as(c_int, 0))),
                    .height = @as(f32, @floatFromInt(@as(c_int, 0))),
                };
            }
        } else if (CheckCollisionPointRec(mousePoint, bounds)) {
            if (IsMouseButtonDown(MOUSE_BUTTON_LEFT)) {
                state = @as(c_uint, @bitCast(STATE_PRESSED));
                guiSliderDragging = @as(c_int, 1) != 0;
                guiSliderActive = bounds;
                if (!CheckCollisionPointRec(mousePoint, slider)) {
                    value.* = (((maxValue - minValue) * (mousePoint.x - (bounds.x + @as(f32, @floatFromInt(@divTrunc(sliderWidth, @as(c_int, 2))))))) / (bounds.width - @as(f32, @floatFromInt(sliderWidth)))) + minValue;
                    if (sliderWidth > @as(c_int, 0)) {
                        slider.x = mousePoint.x - (slider.width / @as(f32, @floatFromInt(@as(c_int, 2))));
                    } else if (sliderWidth == @as(c_int, 0)) {
                        slider.width = @as(f32, @floatFromInt(sliderValue));
                    }
                }
            } else {
                state = @as(c_uint, @bitCast(STATE_FOCUSED));
            }
        }
        if (value.* > maxValue) {
            value.* = maxValue;
        } else if (value.* < minValue) {
            value.* = minValue;
        }
    }
    if (sliderWidth > @as(c_int, 0)) {
        if (slider.x <= (bounds.x + @as(f32, @floatFromInt(GuiGetStyle(SLIDER, BORDER_WIDTH))))) {
            slider.x = bounds.x + @as(f32, @floatFromInt(GuiGetStyle(SLIDER, BORDER_WIDTH)));
        } else if ((slider.x + slider.width) >= (bounds.x + bounds.width)) {
            slider.x = ((bounds.x + bounds.width) - slider.width) - @as(f32, @floatFromInt(GuiGetStyle(SLIDER, BORDER_WIDTH)));
        }
    } else if (sliderWidth == @as(c_int, 0)) {
        if (slider.width > bounds.width) {
            slider.width = bounds.width - @as(f32, @floatFromInt(@as(c_int, 2) * GuiGetStyle(SLIDER, BORDER_WIDTH)));
        }
    }
    GuiDrawRectangle(bounds, GuiGetStyle(SLIDER, BORDER_WIDTH), GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, @as(c_int, @bitCast(@as(c_uint, @bitCast(BORDER)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))), GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, if (state != @as(c_uint, @bitCast(STATE_DISABLED))) BASE_COLOR_NORMAL else BASE_COLOR_DISABLED)))));
    if (state == @as(c_uint, @bitCast(STATE_NORMAL))) {
        GuiDrawRectangle(slider, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, BASE_COLOR_PRESSED)))));
    } else if (state == @as(c_uint, @bitCast(STATE_FOCUSED))) {
        GuiDrawRectangle(slider, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, TEXT_COLOR_FOCUSED)))));
    } else if (state == @as(c_uint, @bitCast(STATE_PRESSED))) {
        GuiDrawRectangle(slider, @as(c_int, 0), Color{
            .r = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .g = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .b = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
            .a = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        }, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, TEXT_COLOR_PRESSED)))));
    }
    if (textLeft != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var textBounds: Rectangle = Rectangle{
            .x = @as(f32, @floatFromInt(@as(c_int, 0))),
            .y = 0,
            .width = 0,
            .height = 0,
        };
        _ = &textBounds;
        textBounds.width = @as(f32, @floatFromInt(GetTextWidth(textLeft)));
        textBounds.height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
        textBounds.x = (bounds.x - textBounds.width) - @as(f32, @floatFromInt(GuiGetStyle(SLIDER, TEXT_PADDING)));
        textBounds.y = (bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2))));
        GuiDrawText(textLeft, textBounds, TEXT_ALIGN_RIGHT, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    }
    if (textRight != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var textBounds: Rectangle = Rectangle{
            .x = @as(f32, @floatFromInt(@as(c_int, 0))),
            .y = 0,
            .width = 0,
            .height = 0,
        };
        _ = &textBounds;
        textBounds.width = @as(f32, @floatFromInt(GetTextWidth(textRight)));
        textBounds.height = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE)));
        textBounds.x = (bounds.x + bounds.width) + @as(f32, @floatFromInt(GuiGetStyle(SLIDER, TEXT_PADDING)));
        textBounds.y = (bounds.y + (bounds.height / @as(f32, @floatFromInt(@as(c_int, 2))))) - @as(f32, @floatFromInt(@divTrunc(GuiGetStyle(DEFAULT, TEXT_SIZE), @as(c_int, 2))));
        GuiDrawText(textRight, textBounds, TEXT_ALIGN_LEFT, GetColor(@as(c_uint, @bitCast(GuiGetStyle(SLIDER, @as(c_int, @bitCast(@as(c_uint, @bitCast(TEXT)) +% (state *% @as(c_uint, @bitCast(@as(c_int, 3)))))))))));
    }
    return result;
}
pub export fn GetTextLines(arg_text: [*c]const u8, arg_count: [*c]c_int) [*c][*c]const u8 {
    var text = arg_text;
    _ = &text;
    var count = arg_count;
    _ = &count;
    const lines = struct {
        var static: [128][*c]const u8 = [1][*c]const u8{
            null,
        } ++ [1][*c]const u8{null} ** 127;
    };
    _ = &lines;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < @as(c_int, 128)) : (i += 1) {
            lines.static[@as(c_uint, @intCast(i))] = null;
        }
    }
    var textSize: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(strlen(text)))));
    _ = &textSize;
    lines.static[@as(c_uint, @intCast(@as(c_int, 0)))] = text;
    var len: c_int = 0;
    _ = &len;
    count.* = 1;
    {
        var i: c_int = 0;
        _ = &i;
        var k: c_int = 0;
        _ = &k;
        while ((i < textSize) and (count.* < @as(c_int, 128))) : (i += 1) {
            if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, '\n')) {
                k += 1;
                lines.static[@as(c_uint, @intCast(k))] = &(blk: {
                    const tmp = i + @as(c_int, 1);
                    if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*;
                len = 0;
                count.* += @as(c_int, 1);
            } else {
                len += 1;
            }
        }
    }
    return @as([*c][*c]const u8, @ptrCast(@alignCast(&lines.static)));
}
pub fn GetNextSpaceWidth(arg_text: [*c]const u8, arg_nextSpaceIndex: [*c]c_int) callconv(.C) f32 {
    var text = arg_text;
    _ = &text;
    var nextSpaceIndex = arg_nextSpaceIndex;
    _ = &nextSpaceIndex;
    var width: f32 = 0;
    _ = &width;
    var codepointByteCount: c_int = 0;
    _ = &codepointByteCount;
    var codepoint: c_int = 0;
    _ = &codepoint;
    var index_1: c_int = 0;
    _ = &index_1;
    var glyphWidth: f32 = 0;
    _ = &glyphWidth;
    var scaleFactor: f32 = @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SIZE))) / @as(f32, @floatFromInt(guiFont.baseSize));
    _ = &scaleFactor;
    {
        var i: c_int = 0;
        _ = &i;
        while (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = i;
            if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) != @as(c_int, '\x00')) : (i += 1) {
            if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) != @as(c_int, ' ')) {
                codepoint = GetCodepoint(&(blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk text + @as(usize, @intCast(tmp)) else break :blk text - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*, &codepointByteCount);
                index_1 = GetGlyphIndex(guiFont, codepoint);
                glyphWidth = if ((blk: {
                    const tmp = index_1;
                    if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.advanceX == @as(c_int, 0)) (blk: {
                    const tmp = index_1;
                    if (tmp >= 0) break :blk guiFont.recs + @as(usize, @intCast(tmp)) else break :blk guiFont.recs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.width * scaleFactor else @as(f32, @floatFromInt((blk: {
                    const tmp = index_1;
                    if (tmp >= 0) break :blk guiFont.glyphs + @as(usize, @intCast(tmp)) else break :blk guiFont.glyphs - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*.advanceX)) * scaleFactor;
                width += glyphWidth + @as(f32, @floatFromInt(GuiGetStyle(DEFAULT, TEXT_SPACING)));
            } else {
                nextSpaceIndex.* = i;
                break;
            }
        }
    }
    return width;
}
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 18);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "18.1.6 (https://github.com/ziglang/zig-bootstrap 98bc6bf4fc4009888d33941daf6b600d20a42a56)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 18.1.6 (https://github.com/ziglang/zig-bootstrap 98bc6bf4fc4009888d33941daf6b600d20a42a56)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 1);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __block = @compileError("unable to translate macro: undefined identifier `__blocks__`");
// (no file):42:9
pub const __BLOCKS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @as(c_int, 128);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):97:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):103:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_int;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 4.9406564584124654e-324);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 15);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 2.2204460492503131e-16);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 53);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __LDBL_MAX_EXP__ = @as(c_int, 1024);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.7976931348623157e+308);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __LDBL_MIN__ = @as(c_longdouble, 2.2250738585072014e-308);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 8);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):199:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):221:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):229:9
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = @compileError("unable to translate macro: undefined identifier `_`");
// (no file):320:9
pub const __NO_MATH_ERRNO__ = @as(c_int, 1);
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __nonnull = @compileError("unable to translate macro: undefined identifier `_Nonnull`");
// (no file):351:9
pub const __null_unspecified = @compileError("unable to translate macro: undefined identifier `_Null_unspecified`");
// (no file):352:9
pub const __nullable = @compileError("unable to translate macro: undefined identifier `_Nullable`");
// (no file):353:9
pub const TARGET_OS_WIN32 = @as(c_int, 0);
pub const TARGET_OS_WINDOWS = @as(c_int, 0);
pub const TARGET_OS_LINUX = @as(c_int, 0);
pub const TARGET_OS_UNIX = @as(c_int, 0);
pub const TARGET_OS_MAC = @as(c_int, 1);
pub const TARGET_OS_OSX = @as(c_int, 1);
pub const TARGET_OS_IPHONE = @as(c_int, 0);
pub const TARGET_OS_IOS = @as(c_int, 0);
pub const TARGET_OS_TV = @as(c_int, 0);
pub const TARGET_OS_WATCH = @as(c_int, 0);
pub const TARGET_OS_DRIVERKIT = @as(c_int, 0);
pub const TARGET_OS_MACCATALYST = @as(c_int, 0);
pub const TARGET_OS_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_EMBEDDED = @as(c_int, 0);
pub const TARGET_OS_NANO = @as(c_int, 0);
pub const TARGET_IPHONE_SIMULATOR = @as(c_int, 0);
pub const TARGET_OS_UIKITFORMAC = @as(c_int, 0);
pub const __AARCH64EL__ = @as(c_int, 1);
pub const __aarch64__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __AARCH64_CMODEL_SMALL__ = @as(c_int, 1);
pub const __ARM_ACLE = @as(c_int, 200);
pub const __ARM_ARCH = @as(c_int, 8);
pub const __ARM_ARCH_PROFILE = 'A';
pub const __ARM_64BIT_STATE = @as(c_int, 1);
pub const __ARM_PCS_AAPCS64 = @as(c_int, 1);
pub const __ARM_ARCH_ISA_A64 = @as(c_int, 1);
pub const __ARM_FEATURE_CLZ = @as(c_int, 1);
pub const __ARM_FEATURE_FMA = @as(c_int, 1);
pub const __ARM_FEATURE_LDREX = @as(c_int, 0xF);
pub const __ARM_FEATURE_IDIV = @as(c_int, 1);
pub const __ARM_FEATURE_DIV = @as(c_int, 1);
pub const __ARM_FEATURE_NUMERIC_MAXMIN = @as(c_int, 1);
pub const __ARM_FEATURE_DIRECTED_ROUNDING = @as(c_int, 1);
pub const __ARM_ALIGN_MAX_STACK_PWR = @as(c_int, 4);
pub const __ARM_STATE_ZA = @as(c_int, 1);
pub const __ARM_STATE_ZT0 = @as(c_int, 1);
pub const __ARM_FP = @as(c_int, 0xE);
pub const __ARM_FP16_FORMAT_IEEE = @as(c_int, 1);
pub const __ARM_FP16_ARGS = @as(c_int, 1);
pub const __ARM_SIZEOF_WCHAR_T = @as(c_int, 4);
pub const __ARM_SIZEOF_MINIMAL_ENUM = @as(c_int, 4);
pub const __ARM_NEON = @as(c_int, 1);
pub const __ARM_NEON_FP = @as(c_int, 0xE);
pub const __ARM_FEATURE_CRC32 = @as(c_int, 1);
pub const __ARM_FEATURE_RCPC = @as(c_int, 1);
pub const __ARM_FEATURE_CRYPTO = @as(c_int, 1);
pub const __ARM_FEATURE_AES = @as(c_int, 1);
pub const __ARM_FEATURE_SHA2 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA3 = @as(c_int, 1);
pub const __ARM_FEATURE_SHA512 = @as(c_int, 1);
pub const __ARM_FEATURE_PAUTH = @as(c_int, 1);
pub const __ARM_FEATURE_UNALIGNED = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_VECTOR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_SCALAR_ARITHMETIC = @as(c_int, 1);
pub const __ARM_FEATURE_DOTPROD = @as(c_int, 1);
pub const __ARM_FEATURE_ATOMICS = @as(c_int, 1);
pub const __ARM_FEATURE_FP16_FML = @as(c_int, 1);
pub const __ARM_FEATURE_COMPLEX = @as(c_int, 1);
pub const __ARM_FEATURE_JCVT = @as(c_int, 1);
pub const __ARM_FEATURE_QRDMX = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __FP_FAST_FMA = @as(c_int, 1);
pub const __FP_FAST_FMAF = @as(c_int, 1);
pub const __AARCH64_SIMD__ = @as(c_int, 1);
pub const __ARM64_ARCH_8__ = @as(c_int, 1);
pub const __ARM_NEON__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __arm64 = @as(c_int, 1);
pub const __arm64__ = @as(c_int, 1);
pub const __APPLE_CC__ = @as(c_int, 6000);
pub const __APPLE__ = @as(c_int, 1);
pub const __STDC_NO_THREADS__ = @as(c_int, 1);
pub const __weak = @compileError("unable to translate macro: undefined identifier `objc_gc`");
// (no file):431:9
pub const __strong = "";
pub const __unsafe_unretained = "";
pub const __DYNAMIC__ = @as(c_int, 1);
pub const __ENVIRONMENT_MAC_OS_X_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150001, .decimal);
pub const __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150001, .decimal);
pub const __MACH__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const RAYGUI_IMPLEMENTATION = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const RAYGUI_H = "";
pub const RAYGUI_VERSION_MAJOR = @as(c_int, 4);
pub const RAYGUI_VERSION_MINOR = @as(c_int, 0);
pub const RAYGUI_VERSION_PATCH = @as(c_int, 0);
pub const RAYGUI_VERSION = "4.0";
pub const RAYLIB_H = "";
pub const __STDARG_H = "";
pub const __need___va_list = "";
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// /Users/jdelahun/zig/lib/include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// /Users/jdelahun/zig/lib/include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Users/jdelahun/zig/lib/include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /Users/jdelahun/zig/lib/include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /Users/jdelahun/zig/lib/include/__stdarg_va_copy.h:11:9
pub const RAYLIB_VERSION_MAJOR = @as(c_int, 5);
pub const RAYLIB_VERSION_MINOR = @as(c_int, 0);
pub const RAYLIB_VERSION_PATCH = @as(c_int, 0);
pub const RAYLIB_VERSION = "5.0";
pub const RLAPI = "";
pub const PI = @as(f32, 3.14159265358979323846);
pub const DEG2RAD = @import("std").zig.c_translation.MacroArithmetic.div(PI, @as(f32, 180.0));
pub const RAD2DEG = @import("std").zig.c_translation.MacroArithmetic.div(@as(f32, 180.0), PI);
pub inline fn RL_MALLOC(sz: anytype) @TypeOf(malloc(sz)) {
    _ = &sz;
    return malloc(sz);
}
pub inline fn RL_CALLOC(n: anytype, sz: anytype) @TypeOf(calloc(n, sz)) {
    _ = &n;
    _ = &sz;
    return calloc(n, sz);
}
pub inline fn RL_REALLOC(ptr: anytype, sz: anytype) @TypeOf(realloc(ptr, sz)) {
    _ = &ptr;
    _ = &sz;
    return realloc(ptr, sz);
}
pub inline fn RL_FREE(ptr: anytype) @TypeOf(free(ptr)) {
    _ = &ptr;
    return free(ptr);
}
pub inline fn CLITERAL(@"type": anytype) @TypeOf(@"type") {
    _ = &@"type";
    return @"type";
}
pub const RL_COLOR_TYPE = "";
pub const RL_RECTANGLE_TYPE = "";
pub const RL_VECTOR2_TYPE = "";
pub const RL_VECTOR3_TYPE = "";
pub const RL_VECTOR4_TYPE = "";
pub const RL_QUATERNION_TYPE = "";
pub const RL_MATRIX_TYPE = "";
pub const LIGHTGRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 200), @as(c_int, 200), @as(c_int, 200), @as(c_int, 255) });
pub const GRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 130), @as(c_int, 130), @as(c_int, 130), @as(c_int, 255) });
pub const DARKGRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 80), @as(c_int, 80), @as(c_int, 80), @as(c_int, 255) });
pub const YELLOW = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 253), @as(c_int, 249), @as(c_int, 0), @as(c_int, 255) });
pub const GOLD = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 203), @as(c_int, 0), @as(c_int, 255) });
pub const ORANGE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 161), @as(c_int, 0), @as(c_int, 255) });
pub const PINK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 109), @as(c_int, 194), @as(c_int, 255) });
pub const RED = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 230), @as(c_int, 41), @as(c_int, 55), @as(c_int, 255) });
pub const MAROON = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 190), @as(c_int, 33), @as(c_int, 55), @as(c_int, 255) });
pub const GREEN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 228), @as(c_int, 48), @as(c_int, 255) });
pub const LIME = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 158), @as(c_int, 47), @as(c_int, 255) });
pub const DARKGREEN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 117), @as(c_int, 44), @as(c_int, 255) });
pub const SKYBLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 102), @as(c_int, 191), @as(c_int, 255), @as(c_int, 255) });
pub const BLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 121), @as(c_int, 241), @as(c_int, 255) });
pub const DARKBLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 82), @as(c_int, 172), @as(c_int, 255) });
pub const PURPLE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 200), @as(c_int, 122), @as(c_int, 255), @as(c_int, 255) });
pub const VIOLET = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 135), @as(c_int, 60), @as(c_int, 190), @as(c_int, 255) });
pub const DARKPURPLE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 112), @as(c_int, 31), @as(c_int, 126), @as(c_int, 255) });
pub const BEIGE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 211), @as(c_int, 176), @as(c_int, 131), @as(c_int, 255) });
pub const BROWN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 127), @as(c_int, 106), @as(c_int, 79), @as(c_int, 255) });
pub const DARKBROWN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 76), @as(c_int, 63), @as(c_int, 47), @as(c_int, 255) });
pub const WHITE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 255), @as(c_int, 255), @as(c_int, 255) });
pub const BLACK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 255) });
pub const BLANK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0) });
pub const MAGENTA = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 0), @as(c_int, 255), @as(c_int, 255) });
pub const RAYWHITE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 245), @as(c_int, 245), @as(c_int, 245), @as(c_int, 255) });
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const MOUSE_LEFT_BUTTON = MOUSE_BUTTON_LEFT;
pub const MOUSE_RIGHT_BUTTON = MOUSE_BUTTON_RIGHT;
pub const MOUSE_MIDDLE_BUTTON = MOUSE_BUTTON_MIDDLE;
pub const MATERIAL_MAP_DIFFUSE = MATERIAL_MAP_ALBEDO;
pub const MATERIAL_MAP_SPECULAR = MATERIAL_MAP_METALNESS;
pub const SHADER_LOC_MAP_DIFFUSE = SHADER_LOC_MAP_ALBEDO;
pub const SHADER_LOC_MAP_SPECULAR = SHADER_LOC_MAP_METALNESS;
pub const RAYGUIAPI = "";
pub inline fn RAYGUI_MALLOC(sz: anytype) @TypeOf(malloc(sz)) {
    _ = &sz;
    return malloc(sz);
}
pub inline fn RAYGUI_CALLOC(n: anytype, sz: anytype) @TypeOf(calloc(n, sz)) {
    _ = &n;
    _ = &sz;
    return calloc(n, sz);
}
pub inline fn RAYGUI_FREE(p: anytype) @TypeOf(free(p)) {
    _ = &p;
    return free(p);
}
pub const RAYGUI_SUPPORT_LOG_INFO = "";
pub const RAYGUI_LOG = @compileError("unable to translate C expr: expected ')' instead got '...'");
// libs/raylib/include/raygui.h:357:11
pub const SCROLLBAR_LEFT_SIDE = @as(c_int, 0);
pub const SCROLLBAR_RIGHT_SIDE = @as(c_int, 1);
pub const _STDIO_H_ = "";
pub const __STDIO_H_ = "";
pub const _CDEFS_H_ = "";
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __has_cpp_attribute(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub inline fn __P(protos: anytype) @TypeOf(protos) {
    _ = &protos;
    return protos;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:116:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:117:9
pub const __const = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:119:9
pub const __signed = c_int;
pub const __volatile = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:121:9
pub const __dead2 = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:165:9
pub const __pure2 = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:166:9
pub const __stateful_pure = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:167:9
pub const __unused = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:172:9
pub const __used = @compileError("unable to translate macro: undefined identifier `__used__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:177:9
pub const __cold = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:183:9
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `returns_nonnull`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:190:9
pub const __exported = @compileError("unable to translate macro: undefined identifier `__visibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:200:9
pub const __exported_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:201:9
pub const __exported_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:202:9
pub const __deprecated = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:214:9
pub const __deprecated_msg = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:218:10
pub inline fn __deprecated_enum_msg(_msg: anytype) @TypeOf(__deprecated_msg(_msg)) {
    _ = &_msg;
    return __deprecated_msg(_msg);
}
pub const __kpi_deprecated = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:229:9
pub const __unavailable = @compileError("unable to translate macro: undefined identifier `__unavailable__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:235:9
pub const __kpi_unavailable = "";
pub const __kpi_deprecated_arm64_macos_unavailable = "";
pub const __dead = "";
pub const __pure = "";
pub const __restrict = @compileError("unable to translate C expr: unexpected token 'restrict'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:257:9
pub const __disable_tail_calls = @compileError("unable to translate macro: undefined identifier `__disable_tail_calls__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:290:9
pub const __not_tail_called = @compileError("unable to translate macro: undefined identifier `__not_tail_called__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:302:9
pub const __result_use_check = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:313:9
pub const __swift_unavailable = @compileError("unable to translate macro: undefined identifier `__availability__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:323:9
pub const __abortlike = __dead2 ++ __cold ++ __not_tail_called;
pub const __header_inline = @compileError("unable to translate C expr: unexpected token 'inline'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:357:10
pub const __header_always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:370:10
pub const __unreachable_ok_push = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:383:10
pub const __unreachable_ok_pop = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:386:10
pub const __printflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:407:9
pub const __printf0like = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:409:9
pub const __scanflike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:411:9
pub const __osloglike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:413:9
pub const __IDSTRING = @compileError("unable to translate C expr: unexpected token 'static'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:416:9
pub const __COPYRIGHT = @compileError("unable to translate macro: undefined identifier `copyright`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:419:9
pub const __RCSID = @compileError("unable to translate macro: undefined identifier `rcsid`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:423:9
pub const __SCCSID = @compileError("unable to translate macro: undefined identifier `sccsid`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:427:9
pub const __PROJECT_VERSION = @compileError("unable to translate macro: undefined identifier `project_version`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:431:9
pub const __FBSDID = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:436:9
pub const __DECONST = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:440:9
pub const __DEVOLATILE = @compileError("unable to translate C expr: unexpected token 'volatile'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:444:9
pub const __DEQUALIFY = @compileError("unable to translate C expr: unexpected token 'const'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:448:9
pub const __alloc_align = @compileError("unable to translate macro: undefined identifier `alloc_align`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:457:9
pub const __alloc_size = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:478:9
pub const __has_safe_buffers = @as(c_int, 1);
pub const __unsafe_buffer_usage = @compileError("unable to translate macro: undefined identifier `__unsafe_buffer_usage__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:559:9
pub const __unsafe_buffer_usage_begin = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:565:9
pub const __unsafe_buffer_usage_end = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:566:9
pub const __DARWIN_ONLY_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const __DARWIN_ONLY_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_UNIX03 = @as(c_int, 1);
pub const __DARWIN_64_BIT_INO_T = @as(c_int, 1);
pub const __DARWIN_VERS_1050 = @as(c_int, 1);
pub const __DARWIN_NON_CANCELABLE = @as(c_int, 0);
pub const __DARWIN_SUF_UNIX03 = "";
pub const __DARWIN_SUF_64_BIT_INO_T = "";
pub const __DARWIN_SUF_1050 = "";
pub const __DARWIN_SUF_NON_CANCELABLE = "";
pub const __DARWIN_SUF_EXTSN = "$DARWIN_EXTSN";
pub const __DARWIN_ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:751:9
pub const __DARWIN_ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:752:9
pub const __DARWIN_ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:753:9
pub const __DARWIN_NOCANCEL = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:754:9
pub const __DARWIN_INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:755:9
pub const __DARWIN_1050 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:757:9
pub const __DARWIN_1050ALIAS = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:758:9
pub const __DARWIN_1050ALIAS_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:759:9
pub const __DARWIN_1050ALIAS_I = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:760:9
pub const __DARWIN_1050INODE64 = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:761:9
pub const __DARWIN_EXTSN = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:763:9
pub const __DARWIN_EXTSN_C = @compileError("unable to translate C expr: unexpected token '__asm'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:764:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:35:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:41:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:47:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:53:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:59:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:65:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:71:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:77:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:83:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:89:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:95:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:101:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:107:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:113:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:119:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:125:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:131:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:137:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:143:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:149:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:155:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:161:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:167:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:173:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:179:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:185:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:191:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:197:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:203:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:209:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:215:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:221:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:227:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:233:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:239:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:245:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:251:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:257:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:263:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:269:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:275:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:281:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:287:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:293:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:299:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:305:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:311:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:317:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:323:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:329:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:335:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:341:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:347:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:359:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:365:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:371:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:377:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:383:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:389:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:395:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:401:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:407:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:413:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:419:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_8 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:425:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:431:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:437:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:443:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:449:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:455:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_5 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:461:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_6 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:467:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_7 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:473:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_0 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:479:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_1 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:485:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_2 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:491:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_3 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:497:9
pub const __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_4 = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h:503:9
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_8(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_9(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_10_16(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_11_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_12_7(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_5(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_13_6(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_0(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_1(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_2(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_3(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __DARWIN_ALIAS_STARTING_MAC___MAC_14_4(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __DARWIN_ALIAS_STARTING = @compileError("unable to translate macro: undefined identifier `__DARWIN_ALIAS_STARTING_MAC_`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:774:9
pub const ___POSIX_C_DEPRECATED_STARTING_198808L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199009L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199209L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199309L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_199506L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200112L = "";
pub const ___POSIX_C_DEPRECATED_STARTING_200809L = "";
pub const __POSIX_C_DEPRECATED = @compileError("unable to translate macro: undefined identifier `___POSIX_C_DEPRECATED_STARTING_`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:837:9
pub const __DARWIN_C_ANSI = @as(c_long, 0o10000);
pub const __DARWIN_C_FULL = @as(c_long, 900000);
pub const __DARWIN_C_LEVEL = __DARWIN_C_FULL;
pub const __STDC_WANT_LIB_EXT1__ = @as(c_int, 1);
pub const __DARWIN_NO_LONG_LONG = @as(c_int, 0);
pub const _DARWIN_FEATURE_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_64_BIT_INODE = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_VERS_1050 = @as(c_int, 1);
pub const _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = @as(c_int, 1);
pub const _DARWIN_FEATURE_UNIX_CONFORMANCE = @as(c_int, 3);
pub const __CAST_AWAY_QUALIFIER = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:935:9
pub const __XNU_PRIVATE_EXTERN = @compileError("unable to translate macro: undefined identifier `visibility`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:949:9
pub const __has_ptrcheck = @as(c_int, 0);
pub const __single = "";
pub const __unsafe_indexable = "";
pub const __counted_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:963:9
pub const __sized_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:964:9
pub const __ended_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:965:9
pub const __terminated_by = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:966:9
pub const __null_terminated = "";
pub const __ptrcheck_abi_assume_single = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:976:9
pub const __ptrcheck_abi_assume_unsafe_indexable = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:977:9
pub inline fn __unsafe_forge_bidi_indexable(T: anytype, P: anytype, S: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &S;
    return T(P);
}
pub const __unsafe_forge_single = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __unsafe_forge_terminated_by(T: anytype, P: anytype, E: anytype) @TypeOf(T(P)) {
    _ = &T;
    _ = &P;
    _ = &E;
    return T(P);
}
pub const __unsafe_forge_null_terminated = @import("std").zig.c_translation.Macros.CAST_OR_CALL;
pub inline fn __terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_terminated_by_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub inline fn __unsafe_null_terminated_to_indexable(P: anytype) @TypeOf(P) {
    _ = &P;
    return P;
}
pub const __unsafe_terminated_by_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:988:9
pub const __unsafe_null_terminated_from_indexable = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:989:9
pub const __array_decay_dicards_count_in_parameters = "";
pub const __unsafe_late_const = "";
pub const __ptrcheck_unavailable = "";
pub const __ptrcheck_unavailable_r = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:998:9
pub const __ASSUME_PTR_ABI_SINGLE_BEGIN = __ptrcheck_abi_assume_single();
pub const __ASSUME_PTR_ABI_SINGLE_END = __ptrcheck_abi_assume_unsafe_indexable();
pub const __header_indexable = "";
pub const __header_bidi_indexable = "";
pub const __compiler_barrier = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1027:9
pub const __enum_open = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1030:9
pub const __enum_closed = @compileError("unable to translate macro: undefined identifier `__enum_extensibility__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1031:9
pub const __enum_options = @compileError("unable to translate macro: undefined identifier `__flag_enum__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1038:9
pub const __enum_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1051:9
pub const __enum_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1053:9
pub const __options_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1055:9
pub const __options_closed_decl = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h:1057:9
pub const __kernel_ptr_semantics = "";
pub const __kernel_data_semantics = "";
pub const __kernel_dual_semantics = "";
pub const __AVAILABILITY__ = "";
pub const __API_TO_BE_DEPRECATED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_IOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_MACCATALYST = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_WATCHOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_TVOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_DRIVERKIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __API_TO_BE_DEPRECATED_VISIONOS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __AVAILABILITY_VERSIONS__ = "";
pub const __MAC_10_0 = @as(c_int, 1000);
pub const __MAC_10_1 = @as(c_int, 1010);
pub const __MAC_10_2 = @as(c_int, 1020);
pub const __MAC_10_3 = @as(c_int, 1030);
pub const __MAC_10_4 = @as(c_int, 1040);
pub const __MAC_10_5 = @as(c_int, 1050);
pub const __MAC_10_6 = @as(c_int, 1060);
pub const __MAC_10_7 = @as(c_int, 1070);
pub const __MAC_10_8 = @as(c_int, 1080);
pub const __MAC_10_9 = @as(c_int, 1090);
pub const __MAC_10_10 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101000, .decimal);
pub const __MAC_10_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101002, .decimal);
pub const __MAC_10_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101003, .decimal);
pub const __MAC_10_11 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101100, .decimal);
pub const __MAC_10_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101102, .decimal);
pub const __MAC_10_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101103, .decimal);
pub const __MAC_10_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101104, .decimal);
pub const __MAC_10_12 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101200, .decimal);
pub const __MAC_10_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101201, .decimal);
pub const __MAC_10_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101202, .decimal);
pub const __MAC_10_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101204, .decimal);
pub const __MAC_10_13 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101300, .decimal);
pub const __MAC_10_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101301, .decimal);
pub const __MAC_10_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101302, .decimal);
pub const __MAC_10_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101304, .decimal);
pub const __MAC_10_14 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101400, .decimal);
pub const __MAC_10_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101401, .decimal);
pub const __MAC_10_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101404, .decimal);
pub const __MAC_10_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101405, .decimal);
pub const __MAC_10_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101406, .decimal);
pub const __MAC_10_15 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101500, .decimal);
pub const __MAC_10_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101501, .decimal);
pub const __MAC_10_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101504, .decimal);
pub const __MAC_10_16 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 101600, .decimal);
pub const __MAC_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __MAC_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __MAC_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __MAC_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __MAC_11_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110500, .decimal);
pub const __MAC_11_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110600, .decimal);
pub const __MAC_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __MAC_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __MAC_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __MAC_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __MAC_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __MAC_12_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120500, .decimal);
pub const __MAC_12_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120600, .decimal);
pub const __MAC_12_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120700, .decimal);
pub const __MAC_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __MAC_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130100, .decimal);
pub const __MAC_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __MAC_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __MAC_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __MAC_13_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130500, .decimal);
pub const __MAC_13_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130600, .decimal);
pub const __MAC_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __MAC_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __MAC_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __MAC_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __MAC_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140400, .decimal);
pub const __IPHONE_2_0 = @as(c_int, 20000);
pub const __IPHONE_2_1 = @as(c_int, 20100);
pub const __IPHONE_2_2 = @as(c_int, 20200);
pub const __IPHONE_3_0 = @as(c_int, 30000);
pub const __IPHONE_3_1 = @as(c_int, 30100);
pub const __IPHONE_3_2 = @as(c_int, 30200);
pub const __IPHONE_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __IPHONE_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __IPHONE_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __IPHONE_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __IPHONE_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __IPHONE_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __IPHONE_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __IPHONE_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __IPHONE_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __IPHONE_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __IPHONE_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __IPHONE_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __IPHONE_8_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80200, .decimal);
pub const __IPHONE_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __IPHONE_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __IPHONE_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __IPHONE_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __IPHONE_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __IPHONE_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __IPHONE_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __IPHONE_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __IPHONE_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __IPHONE_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100300, .decimal);
pub const __IPHONE_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __IPHONE_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __IPHONE_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __IPHONE_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __IPHONE_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __IPHONE_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __IPHONE_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __IPHONE_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __IPHONE_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __IPHONE_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __IPHONE_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __IPHONE_13_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130100, .decimal);
pub const __IPHONE_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __IPHONE_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __IPHONE_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __IPHONE_13_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130500, .decimal);
pub const __IPHONE_13_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130600, .decimal);
pub const __IPHONE_13_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130700, .decimal);
pub const __IPHONE_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __IPHONE_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __IPHONE_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __IPHONE_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __IPHONE_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __IPHONE_14_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140400, .decimal);
pub const __IPHONE_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __IPHONE_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __IPHONE_14_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140800, .decimal);
pub const __IPHONE_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __IPHONE_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150100, .decimal);
pub const __IPHONE_15_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150200, .decimal);
pub const __IPHONE_15_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150300, .decimal);
pub const __IPHONE_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150400, .decimal);
pub const __IPHONE_15_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150500, .decimal);
pub const __IPHONE_15_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150600, .decimal);
pub const __IPHONE_15_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150700, .decimal);
pub const __IPHONE_15_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150800, .decimal);
pub const __IPHONE_16_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160000, .decimal);
pub const __IPHONE_16_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160100, .decimal);
pub const __IPHONE_16_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160200, .decimal);
pub const __IPHONE_16_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160300, .decimal);
pub const __IPHONE_16_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160400, .decimal);
pub const __IPHONE_16_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160500, .decimal);
pub const __IPHONE_16_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160600, .decimal);
pub const __IPHONE_16_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160700, .decimal);
pub const __IPHONE_17_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170000, .decimal);
pub const __IPHONE_17_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170100, .decimal);
pub const __IPHONE_17_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170200, .decimal);
pub const __IPHONE_17_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170300, .decimal);
pub const __IPHONE_17_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170400, .decimal);
pub const __WATCHOS_1_0 = @as(c_int, 10000);
pub const __WATCHOS_2_0 = @as(c_int, 20000);
pub const __WATCHOS_2_1 = @as(c_int, 20100);
pub const __WATCHOS_2_2 = @as(c_int, 20200);
pub const __WATCHOS_3_0 = @as(c_int, 30000);
pub const __WATCHOS_3_1 = @as(c_int, 30100);
pub const __WATCHOS_3_1_1 = @as(c_int, 30101);
pub const __WATCHOS_3_2 = @as(c_int, 30200);
pub const __WATCHOS_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __WATCHOS_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __WATCHOS_4_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40200, .decimal);
pub const __WATCHOS_4_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40300, .decimal);
pub const __WATCHOS_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __WATCHOS_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __WATCHOS_5_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50200, .decimal);
pub const __WATCHOS_5_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50300, .decimal);
pub const __WATCHOS_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __WATCHOS_6_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60100, .decimal);
pub const __WATCHOS_6_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60200, .decimal);
pub const __WATCHOS_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __WATCHOS_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __WATCHOS_7_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70200, .decimal);
pub const __WATCHOS_7_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70300, .decimal);
pub const __WATCHOS_7_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70400, .decimal);
pub const __WATCHOS_7_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70500, .decimal);
pub const __WATCHOS_7_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70600, .decimal);
pub const __WATCHOS_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __WATCHOS_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __WATCHOS_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __WATCHOS_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __WATCHOS_8_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80500, .decimal);
pub const __WATCHOS_8_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80600, .decimal);
pub const __WATCHOS_8_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80700, .decimal);
pub const __WATCHOS_8_8 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80800, .decimal);
pub const __WATCHOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __WATCHOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __WATCHOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __WATCHOS_9_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90300, .decimal);
pub const __WATCHOS_9_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90400, .decimal);
pub const __WATCHOS_9_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90500, .decimal);
pub const __WATCHOS_9_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90600, .decimal);
pub const __WATCHOS_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __WATCHOS_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __WATCHOS_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __WATCHOS_10_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100300, .decimal);
pub const __WATCHOS_10_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100400, .decimal);
pub const __TVOS_9_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90000, .decimal);
pub const __TVOS_9_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90100, .decimal);
pub const __TVOS_9_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 90200, .decimal);
pub const __TVOS_10_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const __TVOS_10_0_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100001, .decimal);
pub const __TVOS_10_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100100, .decimal);
pub const __TVOS_10_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100200, .decimal);
pub const __TVOS_11_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110000, .decimal);
pub const __TVOS_11_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110100, .decimal);
pub const __TVOS_11_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110200, .decimal);
pub const __TVOS_11_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110300, .decimal);
pub const __TVOS_11_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 110400, .decimal);
pub const __TVOS_12_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120000, .decimal);
pub const __TVOS_12_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120100, .decimal);
pub const __TVOS_12_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120200, .decimal);
pub const __TVOS_12_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120300, .decimal);
pub const __TVOS_12_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 120400, .decimal);
pub const __TVOS_13_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130000, .decimal);
pub const __TVOS_13_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130200, .decimal);
pub const __TVOS_13_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130300, .decimal);
pub const __TVOS_13_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 130400, .decimal);
pub const __TVOS_14_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140000, .decimal);
pub const __TVOS_14_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140100, .decimal);
pub const __TVOS_14_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140200, .decimal);
pub const __TVOS_14_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140300, .decimal);
pub const __TVOS_14_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140500, .decimal);
pub const __TVOS_14_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140600, .decimal);
pub const __TVOS_14_7 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 140700, .decimal);
pub const __TVOS_15_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150000, .decimal);
pub const __TVOS_15_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150100, .decimal);
pub const __TVOS_15_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150200, .decimal);
pub const __TVOS_15_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150300, .decimal);
pub const __TVOS_15_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150400, .decimal);
pub const __TVOS_15_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150500, .decimal);
pub const __TVOS_15_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150600, .decimal);
pub const __TVOS_16_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160000, .decimal);
pub const __TVOS_16_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160100, .decimal);
pub const __TVOS_16_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160200, .decimal);
pub const __TVOS_16_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160300, .decimal);
pub const __TVOS_16_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160400, .decimal);
pub const __TVOS_16_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160500, .decimal);
pub const __TVOS_16_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 160600, .decimal);
pub const __TVOS_17_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170000, .decimal);
pub const __TVOS_17_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170100, .decimal);
pub const __TVOS_17_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170200, .decimal);
pub const __TVOS_17_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170300, .decimal);
pub const __TVOS_17_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 170400, .decimal);
pub const __BRIDGEOS_2_0 = @as(c_int, 20000);
pub const __BRIDGEOS_3_0 = @as(c_int, 30000);
pub const __BRIDGEOS_3_1 = @as(c_int, 30100);
pub const __BRIDGEOS_3_4 = @as(c_int, 30400);
pub const __BRIDGEOS_4_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40000, .decimal);
pub const __BRIDGEOS_4_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 40100, .decimal);
pub const __BRIDGEOS_5_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50000, .decimal);
pub const __BRIDGEOS_5_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50100, .decimal);
pub const __BRIDGEOS_5_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 50300, .decimal);
pub const __BRIDGEOS_6_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60000, .decimal);
pub const __BRIDGEOS_6_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60200, .decimal);
pub const __BRIDGEOS_6_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60400, .decimal);
pub const __BRIDGEOS_6_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60500, .decimal);
pub const __BRIDGEOS_6_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 60600, .decimal);
pub const __BRIDGEOS_7_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70000, .decimal);
pub const __BRIDGEOS_7_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70100, .decimal);
pub const __BRIDGEOS_7_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70200, .decimal);
pub const __BRIDGEOS_7_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70300, .decimal);
pub const __BRIDGEOS_7_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70400, .decimal);
pub const __BRIDGEOS_7_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 70600, .decimal);
pub const __BRIDGEOS_8_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80000, .decimal);
pub const __BRIDGEOS_8_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80100, .decimal);
pub const __BRIDGEOS_8_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80200, .decimal);
pub const __BRIDGEOS_8_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80300, .decimal);
pub const __BRIDGEOS_8_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 80400, .decimal);
pub const __DRIVERKIT_19_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 190000, .decimal);
pub const __DRIVERKIT_20_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 200000, .decimal);
pub const __DRIVERKIT_21_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 210000, .decimal);
pub const __DRIVERKIT_22_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220000, .decimal);
pub const __DRIVERKIT_22_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220400, .decimal);
pub const __DRIVERKIT_22_5 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220500, .decimal);
pub const __DRIVERKIT_22_6 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 220600, .decimal);
pub const __DRIVERKIT_23_0 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230000, .decimal);
pub const __DRIVERKIT_23_1 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230100, .decimal);
pub const __DRIVERKIT_23_2 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230200, .decimal);
pub const __DRIVERKIT_23_3 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230300, .decimal);
pub const __DRIVERKIT_23_4 = @import("std").zig.c_translation.promoteIntLiteral(c_int, 230400, .decimal);
pub const __VISIONOS_1_0 = @as(c_int, 10000);
pub const __VISIONOS_1_1 = @as(c_int, 10100);
pub const MAC_OS_X_VERSION_10_0 = __MAC_10_0;
pub const MAC_OS_X_VERSION_10_1 = __MAC_10_1;
pub const MAC_OS_X_VERSION_10_2 = __MAC_10_2;
pub const MAC_OS_X_VERSION_10_3 = __MAC_10_3;
pub const MAC_OS_X_VERSION_10_4 = __MAC_10_4;
pub const MAC_OS_X_VERSION_10_5 = __MAC_10_5;
pub const MAC_OS_X_VERSION_10_6 = __MAC_10_6;
pub const MAC_OS_X_VERSION_10_7 = __MAC_10_7;
pub const MAC_OS_X_VERSION_10_8 = __MAC_10_8;
pub const MAC_OS_X_VERSION_10_9 = __MAC_10_9;
pub const MAC_OS_X_VERSION_10_10 = __MAC_10_10;
pub const MAC_OS_X_VERSION_10_10_2 = __MAC_10_10_2;
pub const MAC_OS_X_VERSION_10_10_3 = __MAC_10_10_3;
pub const MAC_OS_X_VERSION_10_11 = __MAC_10_11;
pub const MAC_OS_X_VERSION_10_11_2 = __MAC_10_11_2;
pub const MAC_OS_X_VERSION_10_11_3 = __MAC_10_11_3;
pub const MAC_OS_X_VERSION_10_11_4 = __MAC_10_11_4;
pub const MAC_OS_X_VERSION_10_12 = __MAC_10_12;
pub const MAC_OS_X_VERSION_10_12_1 = __MAC_10_12_1;
pub const MAC_OS_X_VERSION_10_12_2 = __MAC_10_12_2;
pub const MAC_OS_X_VERSION_10_12_4 = __MAC_10_12_4;
pub const MAC_OS_X_VERSION_10_13 = __MAC_10_13;
pub const MAC_OS_X_VERSION_10_13_1 = __MAC_10_13_1;
pub const MAC_OS_X_VERSION_10_13_2 = __MAC_10_13_2;
pub const MAC_OS_X_VERSION_10_13_4 = __MAC_10_13_4;
pub const MAC_OS_X_VERSION_10_14 = __MAC_10_14;
pub const MAC_OS_X_VERSION_10_14_1 = __MAC_10_14_1;
pub const MAC_OS_X_VERSION_10_14_4 = __MAC_10_14_4;
pub const MAC_OS_X_VERSION_10_14_5 = __MAC_10_14_5;
pub const MAC_OS_X_VERSION_10_14_6 = __MAC_10_14_6;
pub const MAC_OS_X_VERSION_10_15 = __MAC_10_15;
pub const MAC_OS_X_VERSION_10_15_1 = __MAC_10_15_1;
pub const MAC_OS_X_VERSION_10_15_4 = __MAC_10_15_4;
pub const MAC_OS_X_VERSION_10_16 = __MAC_10_16;
pub const MAC_OS_VERSION_11_0 = __MAC_11_0;
pub const MAC_OS_VERSION_11_1 = __MAC_11_1;
pub const MAC_OS_VERSION_11_3 = __MAC_11_3;
pub const MAC_OS_VERSION_11_4 = __MAC_11_4;
pub const MAC_OS_VERSION_11_5 = __MAC_11_5;
pub const MAC_OS_VERSION_11_6 = __MAC_11_6;
pub const MAC_OS_VERSION_12_0 = __MAC_12_0;
pub const MAC_OS_VERSION_12_1 = __MAC_12_1;
pub const MAC_OS_VERSION_12_2 = __MAC_12_2;
pub const MAC_OS_VERSION_12_3 = __MAC_12_3;
pub const MAC_OS_VERSION_12_4 = __MAC_12_4;
pub const MAC_OS_VERSION_12_5 = __MAC_12_5;
pub const MAC_OS_VERSION_12_6 = __MAC_12_6;
pub const MAC_OS_VERSION_12_7 = __MAC_12_7;
pub const MAC_OS_VERSION_13_0 = __MAC_13_0;
pub const MAC_OS_VERSION_13_1 = __MAC_13_1;
pub const MAC_OS_VERSION_13_2 = __MAC_13_2;
pub const MAC_OS_VERSION_13_3 = __MAC_13_3;
pub const MAC_OS_VERSION_13_4 = __MAC_13_4;
pub const MAC_OS_VERSION_13_5 = __MAC_13_5;
pub const MAC_OS_VERSION_13_6 = __MAC_13_6;
pub const MAC_OS_VERSION_14_0 = __MAC_14_0;
pub const MAC_OS_VERSION_14_1 = __MAC_14_1;
pub const MAC_OS_VERSION_14_2 = __MAC_14_2;
pub const MAC_OS_VERSION_14_3 = __MAC_14_3;
pub const MAC_OS_VERSION_14_4 = __MAC_14_4;
pub const __AVAILABILITY_INTERNAL__ = "";
pub const __MAC_OS_X_VERSION_MIN_REQUIRED = __ENVIRONMENT_OS_VERSION_MIN_REQUIRED__;
pub const __MAC_OS_X_VERSION_MAX_ALLOWED = __MAC_14_4;
pub const __AVAILABILITY_INTERNAL_DEPRECATED = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:160:9
pub const __AVAILABILITY_INTERNAL_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `deprecated`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:163:17
pub const __AVAILABILITY_INTERNAL_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `unavailable`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:172:9
pub const __AVAILABILITY_INTERNAL_WEAK_IMPORT = @compileError("unable to translate macro: undefined identifier `weak_import`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:173:9
pub const __AVAILABILITY_INTERNAL_REGULAR = "";
pub const __AVAILABILITY_INTERNAL_LEGACY__ = "";
pub const __ENABLE_LEGACY_MAC_AVAILABILITY = @as(c_int, 1);
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2831:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2832:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2833:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2835:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2839:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2841:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2846:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2850:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2851:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2853:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2857:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2859:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2863:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2865:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2870:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2874:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2875:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2877:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2881:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2883:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2887:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2889:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2894:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2899:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2903:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2905:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2909:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2911:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2915:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2917:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2921:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2923:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2927:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2929:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2933:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2935:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2947:25
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2951:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2952:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2953:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2954:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2955:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2956:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2958:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2962:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2964:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2969:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2973:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2974:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2976:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2980:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2982:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2986:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2988:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2993:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2997:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:2998:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3000:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3004:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3006:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3010:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3012:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3017:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3021:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3022:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3024:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3028:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3030:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3034:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3036:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3040:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3042:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3046:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3048:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3052:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3054:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3058:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3060:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3064:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3066:25
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3070:21
pub const __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3071:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3072:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3074:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3075:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3077:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3081:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3083:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3088:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3092:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3093:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3095:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3099:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3101:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3105:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3107:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3112:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3116:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3117:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3119:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3123:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3125:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3129:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3131:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3136:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3140:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3141:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3143:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3147:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3149:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3153:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3155:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3159:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3161:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3165:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3167:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3171:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3173:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3177:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3179:25
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3183:21
pub const __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3184:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3185:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3186:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3187:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3188:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3190:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3194:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3196:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3201:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3205:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3206:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3208:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3212:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3214:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3218:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3220:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3225:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3229:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3230:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3232:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3236:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3238:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3242:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3244:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3249:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3253:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3254:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3256:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3260:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3262:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3266:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3268:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3272:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3274:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3280:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3284:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3286:25
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3290:21
pub const __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3291:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3292:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3293:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3294:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3295:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3296:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3298:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3302:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3304:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3309:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3313:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3314:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3316:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3320:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3322:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3326:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3328:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3333:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3337:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3338:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3340:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3344:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3346:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3350:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3352:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3357:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3361:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3363:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3367:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3369:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3373:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3375:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3379:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3381:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3385:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3387:25
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3391:21
pub const __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3392:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3393:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3394:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3395:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3396:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3398:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3402:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3404:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3409:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3413:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3414:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3416:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3420:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3422:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3426:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3428:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3433:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3437:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3438:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3440:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3444:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3446:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3450:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3452:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3457:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3461:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3462:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3464:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3468:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3470:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3474:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3476:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3480:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3482:25
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3486:21
pub const __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3487:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3488:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3489:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3490:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3491:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3493:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3497:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3499:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3504:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3508:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3509:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3511:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3515:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3517:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3521:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3523:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3528:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3532:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3533:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3535:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3539:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3541:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3545:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3547:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3552:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3556:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3557:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3559:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3563:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3565:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3569:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3571:25
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3575:21
pub const __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3576:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3577:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3578:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3579:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3580:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3582:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3586:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3588:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3593:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3597:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3598:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3600:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3604:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3606:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3610:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3612:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3617:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3621:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3622:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3624:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3628:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3630:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3634:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3636:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3641:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3645:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3646:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3648:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3652:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3654:25
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3658:21
pub const __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3659:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3660:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3661:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3662:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3663:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3665:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3669:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3671:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3676:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3680:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3681:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3683:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3687:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3689:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3693:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3695:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3700:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3704:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3705:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3707:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3711:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3713:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3717:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3719:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3724:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3728:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3729:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3730:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3732:25
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3736:21
pub const __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3737:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3738:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3739:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3741:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3745:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3746:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3747:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3749:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3753:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3755:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3760:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3764:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3765:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3767:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3771:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3773:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3777:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3779:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3784:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3788:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3789:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3791:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3795:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3797:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3801:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3803:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3808:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3812:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3814:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3818:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3820:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3824:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3826:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3830:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3832:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3836:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3838:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3842:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3844:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3848:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3850:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3854:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3856:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3860:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3862:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3867:25
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3871:21
pub const __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3872:21
pub const __AVAILABILITY_INTERNAL__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3873:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3874:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3875:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3876:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3878:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3882:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3884:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3888:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3889:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3891:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3895:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3897:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3901:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3903:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3908:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3912:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3913:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3915:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3919:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3921:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3925:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3927:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3932:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3936:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3937:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3938:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3939:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3941:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3945:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3946:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3948:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3952:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3954:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3958:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3960:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3965:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3969:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3970:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3972:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3976:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3978:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3982:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3984:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3989:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3993:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3994:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3995:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3996:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3997:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:3999:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4003:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4005:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4010:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4014:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4015:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4017:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4021:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4023:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4027:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4029:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4034:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4038:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4039:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4041:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4045:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4047:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4051:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4053:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4058:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4062:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4064:25
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4068:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4069:21
pub const __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4070:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4071:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4072:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4073:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4075:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4079:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4081:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4085:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4087:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4091:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4092:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4094:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4098:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4100:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4104:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4106:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4111:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4115:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4116:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4117:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4118:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4120:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4124:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4126:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4130:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4131:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4133:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4137:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4139:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4143:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4145:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4150:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4154:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4155:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4156:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4157:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4159:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4163:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4164:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4166:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4170:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4172:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4176:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4178:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4183:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4187:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4188:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4189:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4190:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4191:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4193:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4197:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4199:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4203:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4205:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4210:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4214:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4215:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4217:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4221:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4223:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4227:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4229:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4234:25
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4238:21
pub const __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4239:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4240:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4241:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4242:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4244:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4248:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4250:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4254:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4256:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4260:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4261:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4262:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4263:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4265:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4269:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4271:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4275:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4276:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4277:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4278:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4280:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4284:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4285:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4286:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4287:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4289:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4293:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4295:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4299:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4301:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4306:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4310:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4312:25
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4316:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4317:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4318:21
pub const __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4319:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4320:21
pub const __AVAILABILITY_INTERNAL__MAC_10_13_4 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4321:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4322:21
pub const __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4323:21
pub const __AVAILABILITY_INTERNAL__MAC_10_15 = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4324:21
pub const __AVAILABILITY_INTERNAL__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4326:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4327:21
pub const __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4328:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4330:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4331:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4332:21
pub const __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4333:21
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4336:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4337:22
pub const __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h:4338:22
pub const __API_AVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:180:12
pub const __API_DEPRECATED_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:181:12
pub const __API_UNAVAILABLE_PLATFORM_macos = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:182:12
pub const __API_AVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:183:12
pub const __API_DEPRECATED_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:184:12
pub const __API_UNAVAILABLE_PLATFORM_macosx = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:185:12
pub const __API_AVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:186:12
pub const __API_DEPRECATED_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:187:12
pub const __API_UNAVAILABLE_PLATFORM_ios = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:188:12
pub const __API_AVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:189:12
pub const __API_DEPRECATED_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:190:12
pub const __API_UNAVAILABLE_PLATFORM_macCatalyst = @compileError("unable to translate macro: undefined identifier `macCatalyst`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:191:12
pub const __API_AVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:195:12
pub const __API_DEPRECATED_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:196:12
pub const __API_UNAVAILABLE_PLATFORM_watchos = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:197:12
pub const __API_AVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:198:12
pub const __API_DEPRECATED_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:199:12
pub const __API_UNAVAILABLE_PLATFORM_tvos = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:200:12
pub const __API_AVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:204:12
pub const __API_DEPRECATED_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:205:12
pub const __API_UNAVAILABLE_PLATFORM_driverkit = @compileError("unable to translate macro: undefined identifier `driverkit`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:206:12
pub const __API_AVAILABLE_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:207:12
pub const __API_DEPRECATED_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:208:12
pub const __API_UNAVAILABLE_PLATFORM_visionos = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:209:12
pub const __API_AVAILABLE_PLATFORM_xros = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:210:12
pub const __API_DEPRECATED_PLATFORM_xros = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:211:12
pub const __API_UNAVAILABLE_PLATFORM_xros = @compileError("unable to translate macro: undefined identifier `visionos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:212:12
pub const __API_APPLY_TO = @compileError("unable to translate macro: undefined identifier `any`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:219:11
pub inline fn __API_RANGE_STRINGIFY(x: anytype) @TypeOf(__API_RANGE_STRINGIFY2(x)) {
    _ = &x;
    return __API_RANGE_STRINGIFY2(x);
}
pub const __API_RANGE_STRINGIFY2 = @compileError("unable to translate C expr: unexpected token '#'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:221:11
pub const __API_A = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:235:13
pub inline fn __API_AVAILABLE0(arg0: anytype) @TypeOf(__API_A(arg0)) {
    _ = &arg0;
    return __API_A(arg0);
}
pub inline fn __API_AVAILABLE1(arg0: anytype, arg1: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_A(arg0) ++ __API_A(arg1);
}
pub inline fn __API_AVAILABLE2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2);
}
pub inline fn __API_AVAILABLE3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3);
}
pub inline fn __API_AVAILABLE4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4);
}
pub inline fn __API_AVAILABLE5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5);
}
pub inline fn __API_AVAILABLE6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6);
}
pub inline fn __API_AVAILABLE7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7);
}
pub inline fn __API_AVAILABLE8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_A(arg0) ++ __API_A(arg1) ++ __API_A(arg2) ++ __API_A(arg3) ++ __API_A(arg4) ++ __API_A(arg5) ++ __API_A(arg6) ++ __API_A(arg7) ++ __API_A(arg8);
}
pub const __API_AVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:246:13
pub const __API_A_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:248:13
pub inline fn __API_AVAILABLE_BEGIN0(arg0: anytype) @TypeOf(__API_A_BEGIN(arg0)) {
    _ = &arg0;
    return __API_A_BEGIN(arg0);
}
pub inline fn __API_AVAILABLE_BEGIN1(arg0: anytype, arg1: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1);
}
pub inline fn __API_AVAILABLE_BEGIN2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2);
}
pub inline fn __API_AVAILABLE_BEGIN3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3);
}
pub inline fn __API_AVAILABLE_BEGIN4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4);
}
pub inline fn __API_AVAILABLE_BEGIN5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5);
}
pub inline fn __API_AVAILABLE_BEGIN6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6);
}
pub inline fn __API_AVAILABLE_BEGIN7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7);
}
pub inline fn __API_AVAILABLE_BEGIN8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_A_BEGIN(arg0) ++ __API_A_BEGIN(arg1) ++ __API_A_BEGIN(arg2) ++ __API_A_BEGIN(arg3) ++ __API_A_BEGIN(arg4) ++ __API_A_BEGIN(arg5) ++ __API_A_BEGIN(arg6) ++ __API_A_BEGIN(arg7) ++ __API_A_BEGIN(arg8);
}
pub const __API_AVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:259:13
pub const __API_D = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:263:13
pub inline fn __API_DEPRECATED_MSG0(msg: anytype, arg0: anytype) @TypeOf(__API_D(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_D(msg, arg0);
}
pub inline fn __API_DEPRECATED_MSG1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1);
}
pub inline fn __API_DEPRECATED_MSG2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2);
}
pub inline fn __API_DEPRECATED_MSG3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3);
}
pub inline fn __API_DEPRECATED_MSG4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4);
}
pub inline fn __API_DEPRECATED_MSG5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5);
}
pub inline fn __API_DEPRECATED_MSG6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6);
}
pub inline fn __API_DEPRECATED_MSG7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7);
}
pub inline fn __API_DEPRECATED_MSG8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_D(msg, arg0) ++ __API_D(msg, arg1) ++ __API_D(msg, arg2) ++ __API_D(msg, arg3) ++ __API_D(msg, arg4) ++ __API_D(msg, arg5) ++ __API_D(msg, arg6) ++ __API_D(msg, arg7) ++ __API_D(msg, arg8);
}
pub const __API_DEPRECATED_MSG_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:274:13
pub const __API_D_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:276:13
pub inline fn __API_DEPRECATED_BEGIN0(msg: anytype, arg0: anytype) @TypeOf(__API_D_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_D_BEGIN(msg, arg0);
}
pub inline fn __API_DEPRECATED_BEGIN1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1);
}
pub inline fn __API_DEPRECATED_BEGIN2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2);
}
pub inline fn __API_DEPRECATED_BEGIN3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3);
}
pub inline fn __API_DEPRECATED_BEGIN4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4);
}
pub inline fn __API_DEPRECATED_BEGIN5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5);
}
pub inline fn __API_DEPRECATED_BEGIN6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6);
}
pub inline fn __API_DEPRECATED_BEGIN7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7);
}
pub inline fn __API_DEPRECATED_BEGIN8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_D_BEGIN(msg, arg0) ++ __API_D_BEGIN(msg, arg1) ++ __API_D_BEGIN(msg, arg2) ++ __API_D_BEGIN(msg, arg3) ++ __API_D_BEGIN(msg, arg4) ++ __API_D_BEGIN(msg, arg5) ++ __API_D_BEGIN(msg, arg6) ++ __API_D_BEGIN(msg, arg7) ++ __API_D_BEGIN(msg, arg8);
}
pub const __API_DEPRECATED_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:287:13
pub const __API_R = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:290:17
pub inline fn __API_DEPRECATED_REP0(msg: anytype, arg0: anytype) @TypeOf(__API_R(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_R(msg, arg0);
}
pub inline fn __API_DEPRECATED_REP1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1);
}
pub inline fn __API_DEPRECATED_REP2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2);
}
pub inline fn __API_DEPRECATED_REP3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3);
}
pub inline fn __API_DEPRECATED_REP4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4);
}
pub inline fn __API_DEPRECATED_REP5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5);
}
pub inline fn __API_DEPRECATED_REP6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6);
}
pub inline fn __API_DEPRECATED_REP7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6) ++ __API_R(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6) ++ __API_R(msg, arg7);
}
pub inline fn __API_DEPRECATED_REP8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6) ++ __API_R(msg, arg7) ++ __API_R(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_R(msg, arg0) ++ __API_R(msg, arg1) ++ __API_R(msg, arg2) ++ __API_R(msg, arg3) ++ __API_R(msg, arg4) ++ __API_R(msg, arg5) ++ __API_R(msg, arg6) ++ __API_R(msg, arg7) ++ __API_R(msg, arg8);
}
pub const __API_DEPRECATED_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:304:13
pub const __API_R_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:307:17
pub inline fn __API_DEPRECATED_BEGIN_REP0(msg: anytype, arg0: anytype) @TypeOf(__API_R_BEGIN(msg, arg0)) {
    _ = &msg;
    _ = &arg0;
    return __API_R_BEGIN(msg, arg0);
}
pub inline fn __API_DEPRECATED_BEGIN_REP1(msg: anytype, arg0: anytype, arg1: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1);
}
pub inline fn __API_DEPRECATED_BEGIN_REP2(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2);
}
pub inline fn __API_DEPRECATED_BEGIN_REP3(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3);
}
pub inline fn __API_DEPRECATED_BEGIN_REP4(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4);
}
pub inline fn __API_DEPRECATED_BEGIN_REP5(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5);
}
pub inline fn __API_DEPRECATED_BEGIN_REP6(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6);
}
pub inline fn __API_DEPRECATED_BEGIN_REP7(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6) ++ __API_R_BEGIN(msg, arg7)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6) ++ __API_R_BEGIN(msg, arg7);
}
pub inline fn __API_DEPRECATED_BEGIN_REP8(msg: anytype, arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6) ++ __API_R_BEGIN(msg, arg7) ++ __API_R_BEGIN(msg, arg8)) {
    _ = &msg;
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_R_BEGIN(msg, arg0) ++ __API_R_BEGIN(msg, arg1) ++ __API_R_BEGIN(msg, arg2) ++ __API_R_BEGIN(msg, arg3) ++ __API_R_BEGIN(msg, arg4) ++ __API_R_BEGIN(msg, arg5) ++ __API_R_BEGIN(msg, arg6) ++ __API_R_BEGIN(msg, arg7) ++ __API_R_BEGIN(msg, arg8);
}
pub const __API_DEPRECATED_BEGIN_REP_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:321:13
pub const __API_U = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:332:13
pub inline fn __API_UNAVAILABLE0(arg0: anytype) @TypeOf(__API_U(arg0)) {
    _ = &arg0;
    return __API_U(arg0);
}
pub inline fn __API_UNAVAILABLE1(arg0: anytype, arg1: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_U(arg0) ++ __API_U(arg1);
}
pub inline fn __API_UNAVAILABLE2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2);
}
pub inline fn __API_UNAVAILABLE3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3);
}
pub inline fn __API_UNAVAILABLE4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4);
}
pub inline fn __API_UNAVAILABLE5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5);
}
pub inline fn __API_UNAVAILABLE6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6);
}
pub inline fn __API_UNAVAILABLE7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7);
}
pub inline fn __API_UNAVAILABLE8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_U(arg0) ++ __API_U(arg1) ++ __API_U(arg2) ++ __API_U(arg3) ++ __API_U(arg4) ++ __API_U(arg5) ++ __API_U(arg6) ++ __API_U(arg7) ++ __API_U(arg8);
}
pub const __API_UNAVAILABLE_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:343:13
pub const __API_U_BEGIN = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:345:13
pub inline fn __API_UNAVAILABLE_BEGIN0(arg0: anytype) @TypeOf(__API_U_BEGIN(arg0)) {
    _ = &arg0;
    return __API_U_BEGIN(arg0);
}
pub inline fn __API_UNAVAILABLE_BEGIN1(arg0: anytype, arg1: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1)) {
    _ = &arg0;
    _ = &arg1;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1);
}
pub inline fn __API_UNAVAILABLE_BEGIN2(arg0: anytype, arg1: anytype, arg2: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2);
}
pub inline fn __API_UNAVAILABLE_BEGIN3(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3);
}
pub inline fn __API_UNAVAILABLE_BEGIN4(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4);
}
pub inline fn __API_UNAVAILABLE_BEGIN5(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5);
}
pub inline fn __API_UNAVAILABLE_BEGIN6(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6);
}
pub inline fn __API_UNAVAILABLE_BEGIN7(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7);
}
pub inline fn __API_UNAVAILABLE_BEGIN8(arg0: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(__API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8)) {
    _ = &arg0;
    _ = &arg1;
    _ = &arg2;
    _ = &arg3;
    _ = &arg4;
    _ = &arg5;
    _ = &arg6;
    _ = &arg7;
    _ = &arg8;
    return __API_U_BEGIN(arg0) ++ __API_U_BEGIN(arg1) ++ __API_U_BEGIN(arg2) ++ __API_U_BEGIN(arg3) ++ __API_U_BEGIN(arg4) ++ __API_U_BEGIN(arg5) ++ __API_U_BEGIN(arg6) ++ __API_U_BEGIN(arg7) ++ __API_U_BEGIN(arg8);
}
pub const __API_UNAVAILABLE_BEGIN_GET_MACRO = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:356:13
pub const __swift_compiler_version_at_least = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:378:13
pub const __SPI_AVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:386:11
pub const __SPI_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:390:11
pub const __SPI_AVAILABLE_END = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h:394:11
pub const __OSX_AVAILABLE_STARTING = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:213:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:214:17
pub const __OSX_AVAILABLE_BUT_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__AVAILABILITY_INTERNAL`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:216:17
pub const __OS_AVAILABILITY = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:239:13
pub const __OS_AVAILABILITY_MSG = @compileError("unable to translate macro: undefined identifier `availability`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:240:13
pub const __OSX_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx_app_extension`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:257:13
pub const __IOS_EXTENSION_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios_app_extension`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:258:13
pub inline fn __OS_EXTENSION_UNAVAILABLE(_msg: anytype) @TypeOf(__OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg)) {
    _ = &_msg;
    return __OSX_EXTENSION_UNAVAILABLE(_msg) ++ __IOS_EXTENSION_UNAVAILABLE(_msg);
}
pub const __OSX_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:275:13
pub const __OSX_AVAILABLE = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:276:13
pub const __OSX_DEPRECATED = @compileError("unable to translate macro: undefined identifier `macosx`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:277:13
pub const __IOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:301:13
pub const __IOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:303:15
pub const __IOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:305:13
pub const __IOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `ios`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:306:13
pub const __TVOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:330:13
pub const __TVOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:332:15
pub const __TVOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:334:13
pub const __TVOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `tvos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:335:13
pub const __WATCHOS_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:359:13
pub const __WATCHOS_PROHIBITED = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:361:15
pub const __WATCHOS_AVAILABLE = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:363:13
pub const __WATCHOS_DEPRECATED = @compileError("unable to translate macro: undefined identifier `watchos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:364:13
pub const __SWIFT_UNAVAILABLE = @compileError("unable to translate macro: undefined identifier `swift`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:387:13
pub const __SWIFT_UNAVAILABLE_MSG = @compileError("unable to translate macro: undefined identifier `swift`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:388:13
pub const __API_AVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:431:13
pub const __API_AVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:433:13
pub const __API_AVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:434:13
pub const __API_DEPRECATED = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:452:13
pub const __API_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:453:13
pub const __API_DEPRECATED_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:455:13
pub const __API_DEPRECATED_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:456:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:458:13
pub const __API_DEPRECATED_WITH_REPLACEMENT_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:459:13
pub const __API_UNAVAILABLE = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:469:13
pub const __API_UNAVAILABLE_BEGIN = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:471:13
pub const __API_UNAVAILABLE_END = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:472:13
pub const __SPI_DEPRECATED = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:545:11
pub const __SPI_DEPRECATED_WITH_REPLACEMENT = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h:549:11
pub const __TYPES_H_ = "";
pub const _SYS__TYPES_H_ = "";
pub const _BSD_MACHINE__TYPES_H_ = "";
pub const _BSD_ARM__TYPES_H_ = "";
pub const __DARWIN_NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _SYS__PTHREAD_TYPES_H_ = "";
pub const __PTHREAD_SIZE__ = @as(c_int, 8176);
pub const __PTHREAD_ATTR_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_MUTEXATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_MUTEX_SIZE__ = @as(c_int, 56);
pub const __PTHREAD_CONDATTR_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_COND_SIZE__ = @as(c_int, 40);
pub const __PTHREAD_ONCE_SIZE__ = @as(c_int, 8);
pub const __PTHREAD_RWLOCK_SIZE__ = @as(c_int, 192);
pub const __PTHREAD_RWLOCKATTR_SIZE__ = @as(c_int, 16);
pub const __offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h:83:9
pub const __strfmonlike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h:31:9
pub const __strftimelike = @compileError("unable to translate macro: undefined identifier `__format__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h:33:9
pub const __DARWIN_WCHAR_MAX = __WCHAR_MAX__;
pub const __DARWIN_WCHAR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex) - @as(c_int, 1);
pub const __DARWIN_WEOF = @import("std").zig.c_translation.cast(__darwin_wint_t, -@as(c_int, 1));
pub const _FORTIFY_SOURCE = @as(c_int, 2);
pub const _VA_LIST_T = "";
pub const _BSD_MACHINE_TYPES_H_ = "";
pub const _ARM_MACHTYPES_H_ = "";
pub const _MACHTYPES_H_ = "";
pub const _INT8_T = "";
pub const _INT16_T = "";
pub const _INT32_T = "";
pub const _INT64_T = "";
pub const _U_INT8_T = "";
pub const _U_INT16_T = "";
pub const _U_INT32_T = "";
pub const _U_INT64_T = "";
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub const USER_ADDR_NULL = @import("std").zig.c_translation.cast(user_addr_t, @as(c_int, 0));
pub inline fn CAST_USER_ADDR_T(a_ptr: anytype) user_addr_t {
    _ = &a_ptr;
    return @import("std").zig.c_translation.cast(user_addr_t, @import("std").zig.c_translation.cast(usize, a_ptr));
}
pub const _SIZE_T = "";
pub const NULL = __DARWIN_NULL;
pub const _SYS_STDIO_H_ = "";
pub const RENAME_SECLUDE = @as(c_int, 0x00000001);
pub const RENAME_SWAP = @as(c_int, 0x00000002);
pub const RENAME_EXCL = @as(c_int, 0x00000004);
pub const RENAME_RESERVED1 = @as(c_int, 0x00000008);
pub const RENAME_NOFOLLOW_ANY = @as(c_int, 0x00000010);
pub const _FSTDIO = "";
pub const _SEEK_SET_H_ = "";
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const SEEK_HOLE = @as(c_int, 3);
pub const SEEK_DATA = @as(c_int, 4);
pub const __SLBF = @as(c_int, 0x0001);
pub const __SNBF = @as(c_int, 0x0002);
pub const __SRD = @as(c_int, 0x0004);
pub const __SWR = @as(c_int, 0x0008);
pub const __SRW = @as(c_int, 0x0010);
pub const __SEOF = @as(c_int, 0x0020);
pub const __SERR = @as(c_int, 0x0040);
pub const __SMBF = @as(c_int, 0x0080);
pub const __SAPP = @as(c_int, 0x0100);
pub const __SSTR = @as(c_int, 0x0200);
pub const __SOPT = @as(c_int, 0x0400);
pub const __SNPT = @as(c_int, 0x0800);
pub const __SOFF = @as(c_int, 0x1000);
pub const __SMOD = @as(c_int, 0x2000);
pub const __SALC = @as(c_int, 0x4000);
pub const __SIGN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 1024);
pub const EOF = -@as(c_int, 1);
pub const FOPEN_MAX = @as(c_int, 20);
pub const FILENAME_MAX = @as(c_int, 1024);
pub const P_tmpdir = "/var/tmp/";
pub const L_tmpnam = @as(c_int, 1024);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 308915776, .decimal);
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h:119:9: warning: macro 'stdin' contains a runtime value, translated to function
pub inline fn stdin() @TypeOf(__stdinp) {
    return __stdinp;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h:120:9: warning: macro 'stdout' contains a runtime value, translated to function
pub inline fn stdout() @TypeOf(__stdoutp) {
    return __stdoutp;
}
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h:121:9: warning: macro 'stderr' contains a runtime value, translated to function
pub inline fn stderr() @TypeOf(__stderrp) {
    return __stderrp;
}
pub const L_ctermid = @as(c_int, 1024);
pub const _CTERMID_H_ = "";
pub const __sgetc = @compileError("TODO unary inc/dec expr");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h:261:9
pub inline fn __sfeof(p: anytype) @TypeOf((p.*._flags & __SEOF) != @as(c_int, 0)) {
    _ = &p;
    return (p.*._flags & __SEOF) != @as(c_int, 0);
}
pub inline fn __sferror(p: anytype) @TypeOf((p.*._flags & __SERR) != @as(c_int, 0)) {
    _ = &p;
    return (p.*._flags & __SERR) != @as(c_int, 0);
}
pub const __sclearerr = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdio.h:285:9
pub inline fn __sfileno(p: anytype) @TypeOf(p.*._file) {
    _ = &p;
    return p.*._file;
}
pub const _OFF_T = "";
pub const _SSIZE_T = "";
pub inline fn fropen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @"fn", @as(c_int, 0), @as(c_int, 0), @as(c_int, 0))) {
    _ = &cookie;
    _ = &@"fn";
    return funopen(cookie, @"fn", @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
}
pub inline fn fwopen(cookie: anytype, @"fn": anytype) @TypeOf(funopen(cookie, @as(c_int, 0), @"fn", @as(c_int, 0), @as(c_int, 0))) {
    _ = &cookie;
    _ = &@"fn";
    return funopen(cookie, @as(c_int, 0), @"fn", @as(c_int, 0), @as(c_int, 0));
}
pub inline fn feof_unlocked(p: anytype) @TypeOf(__sfeof(p)) {
    _ = &p;
    return __sfeof(p);
}
pub inline fn ferror_unlocked(p: anytype) @TypeOf(__sferror(p)) {
    _ = &p;
    return __sferror(p);
}
pub inline fn clearerr_unlocked(p: anytype) @TypeOf(__sclearerr(p)) {
    _ = &p;
    return __sclearerr(p);
}
pub inline fn fileno_unlocked(p: anytype) @TypeOf(__sfileno(p)) {
    _ = &p;
    return __sfileno(p);
}
pub const _SECURE__STDIO_H_ = "";
pub const _SECURE__COMMON_H_ = "";
pub const _USE_FORTIFY_LEVEL = @as(c_int, 2);
pub inline fn __darwin_obsz0(object: anytype) @TypeOf(__builtin_object_size(object, @as(c_int, 0))) {
    _ = &object;
    return __builtin_object_size(object, @as(c_int, 0));
}
pub inline fn __darwin_obsz(object: anytype) @TypeOf(__builtin_object_size(object, if (_USE_FORTIFY_LEVEL > @as(c_int, 1)) @as(c_int, 1) else @as(c_int, 0))) {
    _ = &object;
    return __builtin_object_size(object, if (_USE_FORTIFY_LEVEL > @as(c_int, 1)) @as(c_int, 1) else @as(c_int, 0));
}
pub const _STDLIB_H_ = "";
pub const _SYS_WAIT_H_ = "";
pub const _PID_T = "";
pub const _ID_T = "";
pub const _SYS_SIGNAL_H_ = "";
pub const __SYS_APPLEAPIOPTS_H__ = "";
pub const __APPLE_API_STANDARD = "";
pub const __APPLE_API_STABLE = "";
pub const __APPLE_API_EVOLVING = "";
pub const __APPLE_API_UNSTABLE = "";
pub const __APPLE_API_PRIVATE = "";
pub const __APPLE_API_OBSOLETE = "";
pub const __DARWIN_NSIG = @as(c_int, 32);
pub const NSIG = __DARWIN_NSIG;
pub const _BSD_MACHINE_SIGNAL_H_ = "";
pub const _ARM_SIGNAL_ = @as(c_int, 1);
pub const SIGHUP = @as(c_int, 1);
pub const SIGINT = @as(c_int, 2);
pub const SIGQUIT = @as(c_int, 3);
pub const SIGILL = @as(c_int, 4);
pub const SIGTRAP = @as(c_int, 5);
pub const SIGABRT = @as(c_int, 6);
pub const SIGIOT = SIGABRT;
pub const SIGEMT = @as(c_int, 7);
pub const SIGFPE = @as(c_int, 8);
pub const SIGKILL = @as(c_int, 9);
pub const SIGBUS = @as(c_int, 10);
pub const SIGSEGV = @as(c_int, 11);
pub const SIGSYS = @as(c_int, 12);
pub const SIGPIPE = @as(c_int, 13);
pub const SIGALRM = @as(c_int, 14);
pub const SIGTERM = @as(c_int, 15);
pub const SIGURG = @as(c_int, 16);
pub const SIGSTOP = @as(c_int, 17);
pub const SIGTSTP = @as(c_int, 18);
pub const SIGCONT = @as(c_int, 19);
pub const SIGCHLD = @as(c_int, 20);
pub const SIGTTIN = @as(c_int, 21);
pub const SIGTTOU = @as(c_int, 22);
pub const SIGIO = @as(c_int, 23);
pub const SIGXCPU = @as(c_int, 24);
pub const SIGXFSZ = @as(c_int, 25);
pub const SIGVTALRM = @as(c_int, 26);
pub const SIGPROF = @as(c_int, 27);
pub const SIGWINCH = @as(c_int, 28);
pub const SIGINFO = @as(c_int, 29);
pub const SIGUSR1 = @as(c_int, 30);
pub const SIGUSR2 = @as(c_int, 31);
pub const SIG_DFL = @compileError("unable to translate C expr: expected ')' instead got '('");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:131:9
pub const SIG_IGN = @compileError("unable to translate C expr: expected ')' instead got '('");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:132:9
pub const SIG_HOLD = @compileError("unable to translate C expr: expected ')' instead got '('");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:133:9
pub const SIG_ERR = @compileError("unable to translate C expr: expected ')' instead got '('");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:134:9
pub const _BSD_MACHINE__MCONTEXT_H_ = "";
pub const __ARM_MCONTEXT_H_ = "";
pub const _MACH_MACHINE__STRUCTS_H_ = "";
pub const _MACH_ARM__STRUCTS_H_ = "";
pub const _STRUCT_ARM_EXCEPTION_STATE = struct___darwin_arm_exception_state;
pub const _STRUCT_ARM_EXCEPTION_STATE64 = struct___darwin_arm_exception_state64;
pub const _STRUCT_ARM_THREAD_STATE = struct___darwin_arm_thread_state;
pub const __DARWIN_OPAQUE_ARM_THREAD_STATE64 = @as(c_int, 0);
pub const _STRUCT_ARM_THREAD_STATE64 = struct___darwin_arm_thread_state64;
pub inline fn __darwin_arm_thread_state64_get_pc(ts: anytype) @TypeOf(ts.__pc) {
    _ = &ts;
    return ts.__pc;
}
pub inline fn __darwin_arm_thread_state64_get_pc_fptr(ts: anytype) ?*anyopaque {
    _ = &ts;
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast(usize, ts.__pc));
}
pub const __darwin_arm_thread_state64_set_pc_fptr = @compileError("unable to translate C expr: expected ')' instead got '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:406:9
pub inline fn __darwin_arm_thread_state64_get_lr(ts: anytype) @TypeOf(ts.__lr) {
    _ = &ts;
    return ts.__lr;
}
pub inline fn __darwin_arm_thread_state64_get_lr_fptr(ts: anytype) ?*anyopaque {
    _ = &ts;
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast(usize, ts.__lr));
}
pub const __darwin_arm_thread_state64_set_lr_fptr = @compileError("unable to translate C expr: expected ')' instead got '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:415:9
pub inline fn __darwin_arm_thread_state64_get_sp(ts: anytype) @TypeOf(ts.__sp) {
    _ = &ts;
    return ts.__sp;
}
pub const __darwin_arm_thread_state64_set_sp = @compileError("unable to translate C expr: expected ')' instead got '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:421:9
pub inline fn __darwin_arm_thread_state64_get_fp(ts: anytype) @TypeOf(ts.__fp) {
    _ = &ts;
    return ts.__fp;
}
pub const __darwin_arm_thread_state64_set_fp = @compileError("unable to translate C expr: expected ')' instead got '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/mach/arm/_structs.h:427:9
pub const __darwin_arm_thread_state64_ptrauth_strip = @import("std").zig.c_translation.Macros.DISCARD;
pub const _STRUCT_ARM_VFP_STATE = struct___darwin_arm_vfp_state;
pub const _STRUCT_ARM_NEON_STATE64 = struct___darwin_arm_neon_state64;
pub const _STRUCT_ARM_NEON_STATE = struct___darwin_arm_neon_state;
pub const _STRUCT_ARM_PAGEIN_STATE = struct___arm_pagein_state;
pub const _STRUCT_ARM_LEGACY_DEBUG_STATE = struct___arm_legacy_debug_state;
pub const _STRUCT_ARM_DEBUG_STATE32 = struct___darwin_arm_debug_state32;
pub const _STRUCT_ARM_DEBUG_STATE64 = struct___darwin_arm_debug_state64;
pub const _STRUCT_ARM_CPMU_STATE64 = struct___darwin_arm_cpmu_state64;
pub const _STRUCT_MCONTEXT32 = struct___darwin_mcontext32;
pub const _STRUCT_MCONTEXT64 = struct___darwin_mcontext64;
pub const _MCONTEXT_T = "";
pub const _STRUCT_MCONTEXT = _STRUCT_MCONTEXT64;
pub const _PTHREAD_ATTR_T = "";
pub const _STRUCT_SIGALTSTACK = struct___darwin_sigaltstack;
pub const _STRUCT_UCONTEXT = struct___darwin_ucontext;
pub const _SIGSET_T = "";
pub const _UID_T = "";
pub const SIGEV_NONE = @as(c_int, 0);
pub const SIGEV_SIGNAL = @as(c_int, 1);
pub const SIGEV_THREAD = @as(c_int, 3);
pub const ILL_NOOP = @as(c_int, 0);
pub const ILL_ILLOPC = @as(c_int, 1);
pub const ILL_ILLTRP = @as(c_int, 2);
pub const ILL_PRVOPC = @as(c_int, 3);
pub const ILL_ILLOPN = @as(c_int, 4);
pub const ILL_ILLADR = @as(c_int, 5);
pub const ILL_PRVREG = @as(c_int, 6);
pub const ILL_COPROC = @as(c_int, 7);
pub const ILL_BADSTK = @as(c_int, 8);
pub const FPE_NOOP = @as(c_int, 0);
pub const FPE_FLTDIV = @as(c_int, 1);
pub const FPE_FLTOVF = @as(c_int, 2);
pub const FPE_FLTUND = @as(c_int, 3);
pub const FPE_FLTRES = @as(c_int, 4);
pub const FPE_FLTINV = @as(c_int, 5);
pub const FPE_FLTSUB = @as(c_int, 6);
pub const FPE_INTDIV = @as(c_int, 7);
pub const FPE_INTOVF = @as(c_int, 8);
pub const SEGV_NOOP = @as(c_int, 0);
pub const SEGV_MAPERR = @as(c_int, 1);
pub const SEGV_ACCERR = @as(c_int, 2);
pub const BUS_NOOP = @as(c_int, 0);
pub const BUS_ADRALN = @as(c_int, 1);
pub const BUS_ADRERR = @as(c_int, 2);
pub const BUS_OBJERR = @as(c_int, 3);
pub const TRAP_BRKPT = @as(c_int, 1);
pub const TRAP_TRACE = @as(c_int, 2);
pub const CLD_NOOP = @as(c_int, 0);
pub const CLD_EXITED = @as(c_int, 1);
pub const CLD_KILLED = @as(c_int, 2);
pub const CLD_DUMPED = @as(c_int, 3);
pub const CLD_TRAPPED = @as(c_int, 4);
pub const CLD_STOPPED = @as(c_int, 5);
pub const CLD_CONTINUED = @as(c_int, 6);
pub const POLL_IN = @as(c_int, 1);
pub const POLL_OUT = @as(c_int, 2);
pub const POLL_MSG = @as(c_int, 3);
pub const POLL_ERR = @as(c_int, 4);
pub const POLL_PRI = @as(c_int, 5);
pub const POLL_HUP = @as(c_int, 6);
pub const sa_handler = __sigaction_u.__sa_handler;
pub const sa_sigaction = __sigaction_u.__sa_sigaction;
pub const SA_ONSTACK = @as(c_int, 0x0001);
pub const SA_RESTART = @as(c_int, 0x0002);
pub const SA_RESETHAND = @as(c_int, 0x0004);
pub const SA_NOCLDSTOP = @as(c_int, 0x0008);
pub const SA_NODEFER = @as(c_int, 0x0010);
pub const SA_NOCLDWAIT = @as(c_int, 0x0020);
pub const SA_SIGINFO = @as(c_int, 0x0040);
pub const SA_USERTRAMP = @as(c_int, 0x0100);
pub const SA_64REGSET = @as(c_int, 0x0200);
pub const SA_USERSPACE_MASK = (((((SA_ONSTACK | SA_RESTART) | SA_RESETHAND) | SA_NOCLDSTOP) | SA_NODEFER) | SA_NOCLDWAIT) | SA_SIGINFO;
pub const SIG_BLOCK = @as(c_int, 1);
pub const SIG_UNBLOCK = @as(c_int, 2);
pub const SIG_SETMASK = @as(c_int, 3);
pub const SI_USER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10001, .hex);
pub const SI_QUEUE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10002, .hex);
pub const SI_TIMER = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10003, .hex);
pub const SI_ASYNCIO = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10004, .hex);
pub const SI_MESGQ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10005, .hex);
pub const SS_ONSTACK = @as(c_int, 0x0001);
pub const SS_DISABLE = @as(c_int, 0x0004);
pub const MINSIGSTKSZ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SIGSTKSZ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const SV_ONSTACK = SA_ONSTACK;
pub const SV_INTERRUPT = SA_RESTART;
pub const SV_RESETHAND = SA_RESETHAND;
pub const SV_NODEFER = SA_NODEFER;
pub const SV_NOCLDSTOP = SA_NOCLDSTOP;
pub const SV_SIGINFO = SA_SIGINFO;
pub const sv_onstack = @compileError("unable to translate macro: undefined identifier `sv_flags`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/signal.h:361:9
pub inline fn sigmask(m: anytype) @TypeOf(@as(c_int, 1) << (m - @as(c_int, 1))) {
    _ = &m;
    return @as(c_int, 1) << (m - @as(c_int, 1));
}
pub const BADSIG = SIG_ERR;
pub const _SYS_RESOURCE_H_ = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H_ = "";
pub const __WORDSIZE = @as(c_int, 64);
pub const _UINT8_T = "";
pub const _UINT16_T = "";
pub const _UINT32_T = "";
pub const _UINT64_T = "";
pub const _INTMAX_T = "";
pub const _UINTMAX_T = "";
pub inline fn INT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn INT32_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub inline fn UINT16_C(v: anytype) @TypeOf(v) {
    _ = &v;
    return v;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -INT32_MAX - @as(c_int, 1);
pub const INT64_MIN = -INT64_MAX - @as(c_int, 1);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = @as(c_ulonglong, 18446744073709551615);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INTPTR_MIN = -INTPTR_MAX - @as(c_int, 1);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MAX = INTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = UINTMAX_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTMAX_MIN = -INTMAX_MAX - @as(c_int, 1);
pub const PTRDIFF_MIN = INTMAX_MIN;
pub const PTRDIFF_MAX = INTMAX_MAX;
pub const SIZE_MAX = UINTPTR_MAX;
pub const RSIZE_MAX = SIZE_MAX >> @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const WCHAR_MIN = -WCHAR_MAX - @as(c_int, 1);
pub const WINT_MIN = INT32_MIN;
pub const WINT_MAX = INT32_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const _STRUCT_TIMEVAL = struct_timeval;
pub const PRIO_PROCESS = @as(c_int, 0);
pub const PRIO_PGRP = @as(c_int, 1);
pub const PRIO_USER = @as(c_int, 2);
pub const PRIO_DARWIN_THREAD = @as(c_int, 3);
pub const PRIO_DARWIN_PROCESS = @as(c_int, 4);
pub const PRIO_MIN = -@as(c_int, 20);
pub const PRIO_MAX = @as(c_int, 20);
pub const PRIO_DARWIN_BG = @as(c_int, 0x1000);
pub const PRIO_DARWIN_NONUI = @as(c_int, 0x1001);
pub const RUSAGE_SELF = @as(c_int, 0);
pub const RUSAGE_CHILDREN = -@as(c_int, 1);
pub const ru_first = @compileError("unable to translate macro: undefined identifier `ru_ixrss`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h:164:9
pub const ru_last = @compileError("unable to translate macro: undefined identifier `ru_nivcsw`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/resource.h:178:9
pub const RUSAGE_INFO_V0 = @as(c_int, 0);
pub const RUSAGE_INFO_V1 = @as(c_int, 1);
pub const RUSAGE_INFO_V2 = @as(c_int, 2);
pub const RUSAGE_INFO_V3 = @as(c_int, 3);
pub const RUSAGE_INFO_V4 = @as(c_int, 4);
pub const RUSAGE_INFO_V5 = @as(c_int, 5);
pub const RUSAGE_INFO_V6 = @as(c_int, 6);
pub const RUSAGE_INFO_CURRENT = RUSAGE_INFO_V6;
pub const RU_PROC_RUNS_RESLIDE = @as(c_int, 0x00000001);
pub const RLIM_INFINITY = (@import("std").zig.c_translation.cast(__uint64_t, @as(c_int, 1)) << @as(c_int, 63)) - @as(c_int, 1);
pub const RLIM_SAVED_MAX = RLIM_INFINITY;
pub const RLIM_SAVED_CUR = RLIM_INFINITY;
pub const RLIMIT_CPU = @as(c_int, 0);
pub const RLIMIT_FSIZE = @as(c_int, 1);
pub const RLIMIT_DATA = @as(c_int, 2);
pub const RLIMIT_STACK = @as(c_int, 3);
pub const RLIMIT_CORE = @as(c_int, 4);
pub const RLIMIT_AS = @as(c_int, 5);
pub const RLIMIT_RSS = RLIMIT_AS;
pub const RLIMIT_MEMLOCK = @as(c_int, 6);
pub const RLIMIT_NPROC = @as(c_int, 7);
pub const RLIMIT_NOFILE = @as(c_int, 8);
pub const RLIM_NLIMITS = @as(c_int, 9);
pub const _RLIMIT_POSIX_FLAG = @as(c_int, 0x1000);
pub const RLIMIT_WAKEUPS_MONITOR = @as(c_int, 0x1);
pub const RLIMIT_CPU_USAGE_MONITOR = @as(c_int, 0x2);
pub const RLIMIT_THREAD_CPULIMITS = @as(c_int, 0x3);
pub const RLIMIT_FOOTPRINT_INTERVAL = @as(c_int, 0x4);
pub const WAKEMON_ENABLE = @as(c_int, 0x01);
pub const WAKEMON_DISABLE = @as(c_int, 0x02);
pub const WAKEMON_GET_PARAMS = @as(c_int, 0x04);
pub const WAKEMON_SET_DEFAULTS = @as(c_int, 0x08);
pub const WAKEMON_MAKE_FATAL = @as(c_int, 0x10);
pub const CPUMON_MAKE_FATAL = @as(c_int, 0x1000);
pub const FOOTPRINT_INTERVAL_RESET = @as(c_int, 0x1);
pub const IOPOL_TYPE_DISK = @as(c_int, 0);
pub const IOPOL_TYPE_VFS_ATIME_UPDATES = @as(c_int, 2);
pub const IOPOL_TYPE_VFS_MATERIALIZE_DATALESS_FILES = @as(c_int, 3);
pub const IOPOL_TYPE_VFS_STATFS_NO_DATA_VOLUME = @as(c_int, 4);
pub const IOPOL_TYPE_VFS_TRIGGER_RESOLVE = @as(c_int, 5);
pub const IOPOL_TYPE_VFS_IGNORE_CONTENT_PROTECTION = @as(c_int, 6);
pub const IOPOL_TYPE_VFS_IGNORE_PERMISSIONS = @as(c_int, 7);
pub const IOPOL_TYPE_VFS_SKIP_MTIME_UPDATE = @as(c_int, 8);
pub const IOPOL_TYPE_VFS_ALLOW_LOW_SPACE_WRITES = @as(c_int, 9);
pub const IOPOL_TYPE_VFS_DISALLOW_RW_FOR_O_EVTONLY = @as(c_int, 10);
pub const IOPOL_SCOPE_PROCESS = @as(c_int, 0);
pub const IOPOL_SCOPE_THREAD = @as(c_int, 1);
pub const IOPOL_SCOPE_DARWIN_BG = @as(c_int, 2);
pub const IOPOL_DEFAULT = @as(c_int, 0);
pub const IOPOL_IMPORTANT = @as(c_int, 1);
pub const IOPOL_PASSIVE = @as(c_int, 2);
pub const IOPOL_THROTTLE = @as(c_int, 3);
pub const IOPOL_UTILITY = @as(c_int, 4);
pub const IOPOL_STANDARD = @as(c_int, 5);
pub const IOPOL_APPLICATION = IOPOL_STANDARD;
pub const IOPOL_NORMAL = IOPOL_IMPORTANT;
pub const IOPOL_ATIME_UPDATES_DEFAULT = @as(c_int, 0);
pub const IOPOL_ATIME_UPDATES_OFF = @as(c_int, 1);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_DEFAULT = @as(c_int, 0);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_OFF = @as(c_int, 1);
pub const IOPOL_MATERIALIZE_DATALESS_FILES_ON = @as(c_int, 2);
pub const IOPOL_VFS_STATFS_NO_DATA_VOLUME_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_STATFS_FORCE_NO_DATA_VOLUME = @as(c_int, 1);
pub const IOPOL_VFS_TRIGGER_RESOLVE_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_TRIGGER_RESOLVE_OFF = @as(c_int, 1);
pub const IOPOL_VFS_CONTENT_PROTECTION_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_CONTENT_PROTECTION_IGNORE = @as(c_int, 1);
pub const IOPOL_VFS_IGNORE_PERMISSIONS_OFF = @as(c_int, 0);
pub const IOPOL_VFS_IGNORE_PERMISSIONS_ON = @as(c_int, 1);
pub const IOPOL_VFS_SKIP_MTIME_UPDATE_OFF = @as(c_int, 0);
pub const IOPOL_VFS_SKIP_MTIME_UPDATE_ON = @as(c_int, 1);
pub const IOPOL_VFS_ALLOW_LOW_SPACE_WRITES_OFF = @as(c_int, 0);
pub const IOPOL_VFS_ALLOW_LOW_SPACE_WRITES_ON = @as(c_int, 1);
pub const IOPOL_VFS_DISALLOW_RW_FOR_O_EVTONLY_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_DISALLOW_RW_FOR_O_EVTONLY_ON = @as(c_int, 1);
pub const IOPOL_VFS_NOCACHE_WRITE_FS_BLKSIZE_DEFAULT = @as(c_int, 0);
pub const IOPOL_VFS_NOCACHE_WRITE_FS_BLKSIZE_ON = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 0x00000001);
pub const WUNTRACED = @as(c_int, 0x00000002);
pub inline fn _W_INT(w: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]c_int, &w).*) {
    _ = &w;
    return @import("std").zig.c_translation.cast([*c]c_int, &w).*;
}
pub const WCOREFLAG = @as(c_int, 0o200);
pub inline fn _WSTATUS(x: anytype) @TypeOf(_W_INT(x) & @as(c_int, 0o177)) {
    _ = &x;
    return _W_INT(x) & @as(c_int, 0o177);
}
pub const _WSTOPPED = @as(c_int, 0o177);
pub inline fn WEXITSTATUS(x: anytype) @TypeOf((_W_INT(x) >> @as(c_int, 8)) & @as(c_int, 0x000000ff)) {
    _ = &x;
    return (_W_INT(x) >> @as(c_int, 8)) & @as(c_int, 0x000000ff);
}
pub inline fn WSTOPSIG(x: anytype) @TypeOf(_W_INT(x) >> @as(c_int, 8)) {
    _ = &x;
    return _W_INT(x) >> @as(c_int, 8);
}
pub inline fn WIFCONTINUED(x: anytype) @TypeOf((_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) == @as(c_int, 0x13))) {
    _ = &x;
    return (_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) == @as(c_int, 0x13));
}
pub inline fn WIFSTOPPED(x: anytype) @TypeOf((_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) != @as(c_int, 0x13))) {
    _ = &x;
    return (_WSTATUS(x) == _WSTOPPED) and (WSTOPSIG(x) != @as(c_int, 0x13));
}
pub inline fn WIFEXITED(x: anytype) @TypeOf(_WSTATUS(x) == @as(c_int, 0)) {
    _ = &x;
    return _WSTATUS(x) == @as(c_int, 0);
}
pub inline fn WIFSIGNALED(x: anytype) @TypeOf((_WSTATUS(x) != _WSTOPPED) and (_WSTATUS(x) != @as(c_int, 0))) {
    _ = &x;
    return (_WSTATUS(x) != _WSTOPPED) and (_WSTATUS(x) != @as(c_int, 0));
}
pub inline fn WTERMSIG(x: anytype) @TypeOf(_WSTATUS(x)) {
    _ = &x;
    return _WSTATUS(x);
}
pub inline fn WCOREDUMP(x: anytype) @TypeOf(_W_INT(x) & WCOREFLAG) {
    _ = &x;
    return _W_INT(x) & WCOREFLAG;
}
pub inline fn W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | _WSTOPPED) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | _WSTOPPED;
}
pub const WEXITED = @as(c_int, 0x00000004);
pub const WSTOPPED = @as(c_int, 0x00000008);
pub const WCONTINUED = @as(c_int, 0x00000010);
pub const WNOWAIT = @as(c_int, 0x00000020);
pub const WAIT_ANY = -@as(c_int, 1);
pub const WAIT_MYPGRP = @as(c_int, 0);
pub const _BSD_MACHINE_ENDIAN_H_ = "";
pub const _ARM__ENDIAN_H_ = "";
pub const _QUAD_HIGHWORD = @as(c_int, 1);
pub const _QUAD_LOWWORD = @as(c_int, 0);
pub const __DARWIN_LITTLE_ENDIAN = @as(c_int, 1234);
pub const __DARWIN_BIG_ENDIAN = @as(c_int, 4321);
pub const __DARWIN_PDP_ENDIAN = @as(c_int, 3412);
pub const __DARWIN_BYTE_ORDER = __DARWIN_LITTLE_ENDIAN;
pub const LITTLE_ENDIAN = __DARWIN_LITTLE_ENDIAN;
pub const BIG_ENDIAN = __DARWIN_BIG_ENDIAN;
pub const PDP_ENDIAN = __DARWIN_PDP_ENDIAN;
pub const BYTE_ORDER = __DARWIN_BYTE_ORDER;
pub const _SYS__ENDIAN_H_ = "";
pub const _OS__OSBYTEORDER_H = "";
pub inline fn __DARWIN_OSSwapConstInt16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((@import("std").zig.c_translation.cast(__uint16_t, x) & @as(c_uint, 0xff00)) >> @as(c_int, 8)) | ((@import("std").zig.c_translation.cast(__uint16_t, x) & @as(c_uint, 0x00ff)) << @as(c_int, 8)));
}
pub inline fn __DARWIN_OSSwapConstInt32(x: anytype) __uint32_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint32_t, ((((@import("std").zig.c_translation.cast(__uint32_t, x) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint32_t, x) & @as(c_uint, 0x000000ff)) << @as(c_int, 24)));
}
pub inline fn __DARWIN_OSSwapConstInt64(x: anytype) __uint64_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint64_t, ((((((((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((@import("std").zig.c_translation.cast(__uint64_t, x) & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56)));
}
pub const __DARWIN_OS_INLINE = @compileError("unable to translate C expr: unexpected token 'static'");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h:67:17
pub const _OS_OSBYTEORDERARM_H = "";
pub const _ARM_ARCH_H = "";
pub inline fn __DARWIN_OSSwapInt16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt16(x) else _OSSwapInt16(x));
}
pub inline fn __DARWIN_OSSwapInt32(x: anytype) @TypeOf(if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x)) {
    _ = &x;
    return if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt32(x) else _OSSwapInt32(x);
}
pub inline fn __DARWIN_OSSwapInt64(x: anytype) @TypeOf(if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x)) {
    _ = &x;
    return if (__builtin_constant_p(x)) __DARWIN_OSSwapConstInt64(x) else _OSSwapInt64(x);
}
pub inline fn ntohs(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn htons(x: anytype) @TypeOf(__DARWIN_OSSwapInt16(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt16(x);
}
pub inline fn ntohl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn htonl(x: anytype) @TypeOf(__DARWIN_OSSwapInt32(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt32(x);
}
pub inline fn ntohll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt64(x);
}
pub inline fn htonll(x: anytype) @TypeOf(__DARWIN_OSSwapInt64(x)) {
    _ = &x;
    return __DARWIN_OSSwapInt64(x);
}
pub const NTOHL = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:144:9
pub const NTOHS = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:145:9
pub const NTOHLL = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:146:9
pub const HTONL = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:147:9
pub const HTONS = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:148:9
pub const HTONLL = @compileError("unable to translate C expr: unexpected token '='");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_endian.h:149:9
pub const w_termsig = @compileError("unable to translate macro: undefined identifier `w_T`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:231:9
pub const w_coredump = @compileError("unable to translate macro: undefined identifier `w_T`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:232:9
pub const w_retcode = @compileError("unable to translate macro: undefined identifier `w_T`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:233:9
pub const w_stopval = @compileError("unable to translate macro: undefined identifier `w_S`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:234:9
pub const w_stopsig = @compileError("unable to translate macro: undefined identifier `w_S`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/wait.h:235:9
pub const _ALLOCA_H_ = "";
pub const __alloca = @compileError("unable to translate macro: undefined identifier `__builtin_alloca`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/alloca.h:40:9
pub const _CT_RUNE_T = "";
pub const _RUNE_T = "";
pub const _WCHAR_T = "";
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hex);
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:119:9: warning: macro 'MB_CUR_MAX' contains a runtime value, translated to function
pub inline fn MB_CUR_MAX() @TypeOf(__mb_cur_max) {
    return __mb_cur_max;
}
pub const _MALLOC_UNDERSCORE_MALLOC_H_ = "";
pub const _MALLOC_UNDERSCORE_MALLOC_TYPE_H_ = "";
pub const _MALLOC_UNDERSCORE_PTRCHECK_H_ = "";
pub const _MALLOC_TYPE_AVAILABILITY = @compileError("unable to translate macro: undefined identifier `macos`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/malloc/_malloc_type.h:51:9
pub const _MALLOC_TYPED = @compileError("unable to translate C expr: unexpected token ''");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/malloc/_malloc_type.h:91:9
pub const _DEV_T = "";
pub const _MODE_T = "";
pub const __bsearch_noescape = @compileError("unable to translate macro: undefined identifier `__noescape__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:277:9
pub const __sort_noescape = @compileError("unable to translate macro: undefined identifier `__noescape__`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/stdlib.h:310:9
pub const _STRING_H_ = "";
pub const _RSIZE_T = "";
pub const _ERRNO_T = "";
pub const _STRINGS_H_ = "";
pub const _SECURE__STRINGS_H_ = "";
pub const _SECURE__STRING_H_ = "";
pub const __HAS_FIXED_CHK_PROTOTYPES = @as(c_int, 1);
pub const __MATH_H__ = "";
pub const __MATH__ = "";
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:58:15
pub const HUGE_VALF = __builtin_huge_valf();
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:60:15
pub const NAN = __builtin_nanf("0x7fc00000");
pub const INFINITY = HUGE_VALF;
pub const FP_NAN = @as(c_int, 1);
pub const FP_INFINITE = @as(c_int, 2);
pub const FP_ZERO = @as(c_int, 3);
pub const FP_NORMAL = @as(c_int, 4);
pub const FP_SUBNORMAL = @as(c_int, 5);
pub const FP_SUPERNORMAL = @as(c_int, 6);
pub const FP_FAST_FMA = @as(c_int, 1);
pub const FP_FAST_FMAF = @as(c_int, 1);
pub const FP_FAST_FMAL = @as(c_int, 1);
pub const FP_ILOGB0 = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const FP_ILOGBNAN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = __math_errhandling();
pub const fpclassify = @compileError("unable to translate: TODO long double");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:127:9
pub const isnormal = @compileError("unable to translate: TODO long double");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:150:9
pub const isfinite = @compileError("unable to translate: TODO long double");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:155:9
pub const isinf = @compileError("unable to translate: TODO long double");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:160:9
pub const isnan = @compileError("unable to translate: TODO long double");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:165:9
pub const signbit = @compileError("unable to translate: TODO long double");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:170:9
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:544:9
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:545:9
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:546:9
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:547:9
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:548:9
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`");
// /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/math.h:549:9
pub const M_E = @as(f64, 2.71828182845904523536028747135266250);
pub const M_LOG2E = @as(f64, 1.44269504088896340735992468100189214);
pub const M_LOG10E = @as(f64, 0.434294481903251827651128918916605082);
pub const M_LN2 = @as(f64, 0.693147180559945309417232121458176568);
pub const M_LN10 = @as(f64, 2.30258509299404568401799145468436421);
pub const M_PI = @as(f64, 3.14159265358979323846264338327950288);
pub const M_PI_2 = @as(f64, 1.57079632679489661923132169163975144);
pub const M_PI_4 = @as(f64, 0.785398163397448309615660845819875721);
pub const M_1_PI = @as(f64, 0.318309886183790671537767526745028724);
pub const M_2_PI = @as(f64, 0.636619772367581343075535053490057448);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257389615890312154517);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880168872420969808);
pub const M_SQRT1_2 = @as(f64, 0.707106781186547524400844362104849039);
pub const MAXFLOAT = @as(f32, 0x1.fffffep+127);
pub const FP_SNAN = FP_NAN;
pub const FP_QNAN = FP_NAN;
pub const HUGE = MAXFLOAT;
pub const X_TLOSS = @as(f64, 1.41484755040568800000e+16);
pub const DOMAIN = @as(c_int, 1);
pub const SING = @as(c_int, 2);
pub const OVERFLOW = @as(c_int, 3);
pub const UNDERFLOW = @as(c_int, 4);
pub const TLOSS = @as(c_int, 5);
pub const PLOSS = @as(c_int, 6);
pub inline fn RAYGUI_CLITERAL(name: anytype) @TypeOf(name) {
    _ = &name;
    return name;
}
pub inline fn CHECK_BOUNDS_ID(src: anytype, dst: anytype) @TypeOf((((src.x == dst.x) and (src.y == dst.y)) and (src.width == dst.width)) and (src.height == dst.height)) {
    _ = &src;
    _ = &dst;
    return (((src.x == dst.x) and (src.y == dst.y)) and (src.width == dst.width)) and (src.height == dst.height);
}
pub const RAYGUI_ICON_SIZE = @as(c_int, 16);
pub const RAYGUI_ICON_MAX_ICONS = @as(c_int, 256);
pub const RAYGUI_ICON_MAX_NAME_LENGTH = @as(c_int, 32);
pub const RAYGUI_ICON_DATA_ELEMENTS = @import("std").zig.c_translation.MacroArithmetic.div(RAYGUI_ICON_SIZE * RAYGUI_ICON_SIZE, @as(c_int, 32));
pub const RAYGUI_MAX_CONTROLS = @as(c_int, 16);
pub const RAYGUI_MAX_PROPS_BASE = @as(c_int, 16);
pub const RAYGUI_MAX_PROPS_EXTENDED = @as(c_int, 8);
pub const RAYGUI_WINDOWBOX_STATUSBAR_HEIGHT = @as(c_int, 24);
pub const RAYGUI_GROUPBOX_LINE_THICK = @as(c_int, 1);
pub const RAYGUI_LINE_MARGIN_TEXT = @as(c_int, 12);
pub const RAYGUI_LINE_TEXT_PADDING = @as(c_int, 4);
pub const RAYGUI_PANEL_BORDER_WIDTH = @as(c_int, 1);
pub const RAYGUI_TABBAR_ITEM_WIDTH = @as(c_int, 160);
pub const RAYGUI_MIN_SCROLLBAR_WIDTH = @as(c_int, 40);
pub const RAYGUI_MIN_SCROLLBAR_HEIGHT = @as(c_int, 40);
pub const RAYGUI_TOGGLEGROUP_MAX_ITEMS = @as(c_int, 32);
pub const RAYGUI_TEXTBOX_AUTO_CURSOR_COOLDOWN = @as(c_int, 40);
pub const RAYGUI_TEXTBOX_AUTO_CURSOR_DELAY = @as(c_int, 1);
pub const RAYGUI_VALUEBOX_MAX_CHARS = @as(c_int, 32);
pub const RAYGUI_COLORBARALPHA_CHECKED_SIZE = @as(c_int, 10);
pub const RAYGUI_MESSAGEBOX_BUTTON_HEIGHT = @as(c_int, 24);
pub const RAYGUI_MESSAGEBOX_BUTTON_PADDING = @as(c_int, 12);
pub const RAYGUI_TEXTINPUTBOX_BUTTON_HEIGHT = @as(c_int, 24);
pub const RAYGUI_TEXTINPUTBOX_BUTTON_PADDING = @as(c_int, 12);
pub const RAYGUI_TEXTINPUTBOX_HEIGHT = @as(c_int, 26);
pub const RAYGUI_GRID_ALPHA = @as(f32, 0.15);
pub const MAX_LINE_BUFFER_SIZE = @as(c_int, 256);
pub inline fn BIT_CHECK(a: anytype, b: anytype) @TypeOf(a & (@as(c_uint, 1) << b)) {
    _ = &a;
    _ = &b;
    return a & (@as(c_uint, 1) << b);
}
pub const ICON_TEXT_PADDING = @as(c_int, 4);
pub const RAYGUI_MAX_TEXT_LINES = @as(c_int, 128);
pub inline fn TEXT_VALIGN_PIXEL_OFFSET(h: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.rem(@import("std").zig.c_translation.cast(c_int, h), @as(c_int, 2))) {
    _ = &h;
    return @import("std").zig.c_translation.MacroArithmetic.rem(@import("std").zig.c_translation.cast(c_int, h), @as(c_int, 2));
}
pub const RAYGUI_TEXTSPLIT_MAX_ITEMS = @as(c_int, 128);
pub const RAYGUI_TEXTSPLIT_MAX_TEXT_SIZE = @as(c_int, 1024);
pub const __sbuf = struct___sbuf;
pub const __sFILEX = struct___sFILEX;
pub const __sFILE = struct___sFILE;
pub const __darwin_pthread_handler_rec = struct___darwin_pthread_handler_rec;
pub const _opaque_pthread_attr_t = struct__opaque_pthread_attr_t;
pub const _opaque_pthread_cond_t = struct__opaque_pthread_cond_t;
pub const _opaque_pthread_condattr_t = struct__opaque_pthread_condattr_t;
pub const _opaque_pthread_mutex_t = struct__opaque_pthread_mutex_t;
pub const _opaque_pthread_mutexattr_t = struct__opaque_pthread_mutexattr_t;
pub const _opaque_pthread_once_t = struct__opaque_pthread_once_t;
pub const _opaque_pthread_rwlock_t = struct__opaque_pthread_rwlock_t;
pub const _opaque_pthread_rwlockattr_t = struct__opaque_pthread_rwlockattr_t;
pub const _opaque_pthread_t = struct__opaque_pthread_t;
pub const __darwin_arm_exception_state = struct___darwin_arm_exception_state;
pub const __darwin_arm_exception_state64 = struct___darwin_arm_exception_state64;
pub const __darwin_arm_thread_state = struct___darwin_arm_thread_state;
pub const __darwin_arm_thread_state64 = struct___darwin_arm_thread_state64;
pub const __darwin_arm_vfp_state = struct___darwin_arm_vfp_state;
pub const __darwin_arm_neon_state64 = struct___darwin_arm_neon_state64;
pub const __darwin_arm_neon_state = struct___darwin_arm_neon_state;
pub const __arm_pagein_state = struct___arm_pagein_state;
pub const __arm_legacy_debug_state = struct___arm_legacy_debug_state;
pub const __darwin_arm_debug_state32 = struct___darwin_arm_debug_state32;
pub const __darwin_arm_debug_state64 = struct___darwin_arm_debug_state64;
pub const __darwin_arm_cpmu_state64 = struct___darwin_arm_cpmu_state64;
pub const __darwin_mcontext32 = struct___darwin_mcontext32;
pub const __darwin_mcontext64 = struct___darwin_mcontext64;
pub const __darwin_sigaltstack = struct___darwin_sigaltstack;
pub const __darwin_ucontext = struct___darwin_ucontext;
pub const sigval = union_sigval;
pub const sigevent = struct_sigevent;
pub const __siginfo = struct___siginfo;
pub const __sigaction_u = union___sigaction_u;
pub const __sigaction = struct___sigaction;
pub const sigaction = struct_sigaction;
pub const sigvec = struct_sigvec;
pub const sigstack = struct_sigstack;
pub const timeval = struct_timeval;
pub const rusage = struct_rusage;
pub const rusage_info_v0 = struct_rusage_info_v0;
pub const rusage_info_v1 = struct_rusage_info_v1;
pub const rusage_info_v2 = struct_rusage_info_v2;
pub const rusage_info_v3 = struct_rusage_info_v3;
pub const rusage_info_v4 = struct_rusage_info_v4;
pub const rusage_info_v5 = struct_rusage_info_v5;
pub const rusage_info_v6 = struct_rusage_info_v6;
pub const rlimit = struct_rlimit;
pub const proc_rlimit_control_wakeupmon = struct_proc_rlimit_control_wakeupmon;
pub const _OSUnalignedU16 = struct__OSUnalignedU16;
pub const _OSUnalignedU32 = struct__OSUnalignedU32;
pub const _OSUnalignedU64 = struct__OSUnalignedU64;
pub const _malloc_zone_t = struct__malloc_zone_t;
pub const __float2 = struct___float2;
pub const __double2 = struct___double2;
pub const exception = struct_exception;
