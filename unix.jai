//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



GxB_IMPLEMENTATION_NAME :: "SuiteSparse:GraphBLAS";
GxB_IMPLEMENTATION_DATE :: "Nov 30, 2021";
GxB_IMPLEMENTATION_MAJOR :: 6;
GxB_IMPLEMENTATION_MINOR :: 0;
GxB_IMPLEMENTATION_SUB :: 2;
GxB_SPEC_DATE :: "Nov 15, 2021";
GxB_SPEC_MAJOR :: 2;
GxB_SPEC_MINOR :: 0;
GxB_SPEC_SUB :: 0;

GxB_NTHREADS :: 5;
GxB_CHUNK :: 7;

GxB_GPU_CONTROL :: 21;
GxB_GPU_CHUNK :: 22;

GxB_MAX_NAME_LEN :: 128;

GxB_HYPER :: 0;

GxB_HYPERSPARSE :: 1;
GxB_SPARSE :: 2;
GxB_BITMAP :: 4;
GxB_FULL :: 8;

GxB_NBITMAP_SWITCH :: 8;

GxB_COMPRESSION_DEFAULT :: 0;
GxB_COMPRESSION_LZ4 :: 1000;
GxB_COMPRESSION_LZ4HC :: 2000;

GxB_COMPRESSION_INTEL :: 1000000;

GrB_Index :: uint64_t;

anon_enum_0 :: enum s32 {
    GrB_SUCCESS              :: 0;

    GrB_NO_VALUE             :: 1;

    GrB_UNINITIALIZED_OBJECT :: -1;
    GrB_NULL_POINTER         :: -2;
    GrB_INVALID_VALUE        :: -3;
    GrB_INVALID_INDEX        :: -4;
    GrB_DOMAIN_MISMATCH      :: -5;
    GrB_DIMENSION_MISMATCH   :: -6;
    GrB_OUTPUT_NOT_EMPTY     :: -7;
    GrB_NOT_IMPLEMENTED      :: -8;
    GrB_PANIC                :: -101;
    GrB_OUT_OF_MEMORY        :: -102;
    GrB_INSUFFICIENT_SPACE   :: -103;
    GrB_INVALID_OBJECT       :: -104;
    GrB_INDEX_OUT_OF_BOUNDS  :: -105;
    GrB_EMPTY_OBJECT         :: -106;
}

GrB_Info :: anon_enum_0;

anon_enum_1 :: enum u32 {
    GrB_NONBLOCKING :: 0;
    GrB_BLOCKING    :: 1;
}

GrB_Mode :: anon_enum_1;

GrB_init :: (mode: GrB_Mode) -> GrB_Info #foreign libgraphblas;

GxB_init :: (mode: GrB_Mode, user_malloc_function: #type (a0: size_t) -> *void #c_call, user_calloc_function: #type (a0: size_t, a1: size_t) -> *void #c_call, user_realloc_function: #type (a0: *void, a1: size_t) -> *void #c_call, user_free_function: #type (a0: *void) -> void #c_call) -> GrB_Info #foreign libgraphblas;

GrB_finalize :: () -> GrB_Info #foreign libgraphblas;

GrB_getVersion :: (version: *u32, subversion: *u32) -> GrB_Info #foreign libgraphblas;

anon_enum_2 :: enum u32 {
    GrB_OUTP                   :: 0;
    GrB_MASK                   :: 1;
    GrB_INP0                   :: 2;
    GrB_INP1                   :: 3;

    GxB_DESCRIPTOR_NTHREADS    :: 5;

    GxB_DESCRIPTOR_CHUNK       :: 7;

    GxB_DESCRIPTOR_GPU_CONTROL :: 21;
    GxB_DESCRIPTOR_GPU_CHUNK   :: 22;

    GxB_AxB_METHOD             :: 1000;
    GxB_SORT                   :: 35;
    GxB_COMPRESSION            :: 36;
    GxB_IMPORT                 :: 37;
}

GrB_Desc_Field :: anon_enum_2;

anon_enum_3 :: enum u32 {
    GxB_DEFAULT       :: 0;

    GrB_REPLACE       :: 1;

    GrB_COMP          :: 2;

    GrB_STRUCTURE     :: 4;

    GrB_TRAN          :: 3;

    GxB_GPU_ALWAYS    :: 2001;
    GxB_GPU_NEVER     :: 2002;

    GxB_AxB_GUSTAVSON :: 1001;
    GxB_AxB_DOT       :: 1003;
    GxB_AxB_HASH      :: 1004;
    GxB_AxB_SAXPY     :: 1005;

    GxB_SECURE_IMPORT :: 502;
}

GrB_Desc_Value :: anon_enum_3;

GB_Descriptor_opaque :: struct {}
GrB_Descriptor :: *GB_Descriptor_opaque;

GrB_Descriptor_new :: (descriptor: *GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Descriptor_set :: (desc: GrB_Descriptor, field: GrB_Desc_Field, val: GrB_Desc_Value) -> GrB_Info #foreign libgraphblas;

GxB_Descriptor_get :: (val: *GrB_Desc_Value, desc: GrB_Descriptor, field: GrB_Desc_Field) -> GrB_Info #foreign libgraphblas;

GxB_Desc_set :: (desc: GrB_Descriptor, field: GrB_Desc_Field, __args: ..Any) -> GrB_Info #foreign libgraphblas;

GxB_Desc_get :: (desc: GrB_Descriptor, field: GrB_Desc_Field, __args: ..Any) -> GrB_Info #foreign libgraphblas;

GrB_Descriptor_free :: (descriptor: *GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_DESC_T1_: GrB_Descriptor;
GrB_DESC_T0_: GrB_Descriptor;
GrB_DESC_T0T1_: GrB_Descriptor;

GrB_DESC_C_: GrB_Descriptor;
GrB_DESC_CT1_: GrB_Descriptor;
GrB_DESC_CT0_: GrB_Descriptor;
GrB_DESC_CT0T1_: GrB_Descriptor;

GrB_DESC_S_: GrB_Descriptor;
GrB_DESC_ST1_: GrB_Descriptor;
GrB_DESC_ST0_: GrB_Descriptor;
GrB_DESC_ST0T1_: GrB_Descriptor;

GrB_DESC_SC_: GrB_Descriptor;
GrB_DESC_SCT1_: GrB_Descriptor;
GrB_DESC_SCT0_: GrB_Descriptor;
GrB_DESC_SCT0T1_: GrB_Descriptor;

GrB_DESC_R_: GrB_Descriptor;
GrB_DESC_RT1_: GrB_Descriptor;
GrB_DESC_RT0_: GrB_Descriptor;
GrB_DESC_RT0T1_: GrB_Descriptor;

GrB_DESC_RC_: GrB_Descriptor;
GrB_DESC_RCT1_: GrB_Descriptor;
GrB_DESC_RCT0_: GrB_Descriptor;
GrB_DESC_RCT0T1_: GrB_Descriptor;

GrB_DESC_RS_: GrB_Descriptor;
GrB_DESC_RST1_: GrB_Descriptor;
GrB_DESC_RST0_: GrB_Descriptor;
GrB_DESC_RST0T1_: GrB_Descriptor;

GrB_DESC_RSC_: GrB_Descriptor;
GrB_DESC_RSCT1_: GrB_Descriptor;
GrB_DESC_RSCT0_: GrB_Descriptor;
GrB_DESC_RSCT0T1_: GrB_Descriptor;

GB_Type_opaque :: struct {}
GrB_Type :: *GB_Type_opaque;

GrB_BOOL_: GrB_Type;
GrB_INT8_: GrB_Type;
GrB_INT16_: GrB_Type;
GrB_INT32_: GrB_Type;
GrB_INT64_: GrB_Type;
GrB_UINT8_: GrB_Type;
GrB_UINT16_: GrB_Type;
GrB_UINT32_: GrB_Type;
GrB_UINT64_: GrB_Type;
GrB_FP32_: GrB_Type;
GrB_FP64_: GrB_Type;
GxB_FC32_: GrB_Type;
GxB_FC64_: GrB_Type;

GrB_Type_new :: (type: *GrB_Type, sizeof_ctype: size_t) -> GrB_Info #foreign libgraphblas;

GxB_Type_new :: (type: *GrB_Type, sizeof_ctype: size_t, type_name: *u8, type_defn: *u8) -> GrB_Info #foreign libgraphblas;

GB_Type_new :: (type: *GrB_Type, sizeof_ctype: size_t, type_name: *u8) -> GrB_Info #foreign libgraphblas;

GxB_Type_name :: (type_name: *u8, type: GrB_Type) -> GrB_Info #foreign libgraphblas;

GxB_Type_size :: (size: *size_t, type: GrB_Type) -> GrB_Info #foreign libgraphblas;

GxB_Type_from_name :: (type: *GrB_Type, type_name: *u8) -> GrB_Info #foreign libgraphblas;

GrB_Type_free :: (type: *GrB_Type) -> GrB_Info #foreign libgraphblas;

GB_UnaryOp_opaque :: struct {}
GrB_UnaryOp :: *GB_UnaryOp_opaque;

GrB_IDENTITY_BOOL_: GrB_UnaryOp;
GrB_AINV_BOOL_: GrB_UnaryOp;
GrB_MINV_BOOL_: GrB_UnaryOp;
GxB_LNOT_BOOL_: GrB_UnaryOp;
GrB_IDENTITY_INT8_: GrB_UnaryOp;
GrB_AINV_INT8_: GrB_UnaryOp;
GrB_MINV_INT8_: GrB_UnaryOp;
GxB_LNOT_INT8_: GrB_UnaryOp;
GrB_IDENTITY_INT16_: GrB_UnaryOp;
GrB_AINV_INT16_: GrB_UnaryOp;
GrB_MINV_INT16_: GrB_UnaryOp;
GxB_LNOT_INT16_: GrB_UnaryOp;
GrB_IDENTITY_INT32_: GrB_UnaryOp;
GrB_AINV_INT32_: GrB_UnaryOp;
GrB_MINV_INT32_: GrB_UnaryOp;
GxB_LNOT_INT32_: GrB_UnaryOp;
GrB_IDENTITY_INT64_: GrB_UnaryOp;
GrB_AINV_INT64_: GrB_UnaryOp;
GrB_MINV_INT64_: GrB_UnaryOp;
GxB_LNOT_INT64_: GrB_UnaryOp;
GrB_IDENTITY_UINT8_: GrB_UnaryOp;
GrB_AINV_UINT8_: GrB_UnaryOp;
GrB_MINV_UINT8_: GrB_UnaryOp;
GxB_LNOT_UINT8_: GrB_UnaryOp;
GrB_IDENTITY_UINT16_: GrB_UnaryOp;
GrB_AINV_UINT16_: GrB_UnaryOp;
GrB_MINV_UINT16_: GrB_UnaryOp;
GxB_LNOT_UINT16_: GrB_UnaryOp;
GrB_IDENTITY_UINT32_: GrB_UnaryOp;
GrB_AINV_UINT32_: GrB_UnaryOp;
GrB_MINV_UINT32_: GrB_UnaryOp;
GxB_LNOT_UINT32_: GrB_UnaryOp;
GrB_IDENTITY_UINT64_: GrB_UnaryOp;
GrB_AINV_UINT64_: GrB_UnaryOp;
GrB_MINV_UINT64_: GrB_UnaryOp;
GxB_LNOT_UINT64_: GrB_UnaryOp;
GrB_IDENTITY_FP32_: GrB_UnaryOp;
GrB_AINV_FP32_: GrB_UnaryOp;
GrB_MINV_FP32_: GrB_UnaryOp;
GxB_LNOT_FP32_: GrB_UnaryOp;
GrB_IDENTITY_FP64_: GrB_UnaryOp;
GrB_AINV_FP64_: GrB_UnaryOp;
GrB_MINV_FP64_: GrB_UnaryOp;
GxB_LNOT_FP64_: GrB_UnaryOp;

GxB_IDENTITY_FC32_: GrB_UnaryOp;
GxB_AINV_FC32_: GrB_UnaryOp;
GxB_MINV_FC32_: GrB_UnaryOp;
GxB_IDENTITY_FC64_: GrB_UnaryOp;
GxB_AINV_FC64_: GrB_UnaryOp;
GxB_MINV_FC64_: GrB_UnaryOp;

GxB_ONE_BOOL_: GrB_UnaryOp;
GrB_ABS_BOOL_: GrB_UnaryOp;
GxB_ONE_INT8_: GrB_UnaryOp;
GrB_ABS_INT8_: GrB_UnaryOp;
GrB_BNOT_INT8_: GrB_UnaryOp;
GxB_ONE_INT16_: GrB_UnaryOp;
GrB_ABS_INT16_: GrB_UnaryOp;
GrB_BNOT_INT16_: GrB_UnaryOp;
GxB_ONE_INT32_: GrB_UnaryOp;
GrB_ABS_INT32_: GrB_UnaryOp;
GrB_BNOT_INT32_: GrB_UnaryOp;
GxB_ONE_INT64_: GrB_UnaryOp;
GrB_ABS_INT64_: GrB_UnaryOp;
GrB_BNOT_INT64_: GrB_UnaryOp;
GxB_ONE_UINT8_: GrB_UnaryOp;
GrB_ABS_UINT8_: GrB_UnaryOp;
GrB_BNOT_UINT8_: GrB_UnaryOp;
GxB_ONE_UINT16_: GrB_UnaryOp;
GrB_ABS_UINT16_: GrB_UnaryOp;
GrB_BNOT_UINT16_: GrB_UnaryOp;
GxB_ONE_UINT32_: GrB_UnaryOp;
GrB_ABS_UINT32_: GrB_UnaryOp;
GrB_BNOT_UINT32_: GrB_UnaryOp;
GxB_ONE_UINT64_: GrB_UnaryOp;
GrB_ABS_UINT64_: GrB_UnaryOp;
GrB_BNOT_UINT64_: GrB_UnaryOp;
GxB_ONE_FP32_: GrB_UnaryOp;
GrB_ABS_FP32_: GrB_UnaryOp;
GxB_ONE_FP64_: GrB_UnaryOp;
GrB_ABS_FP64_: GrB_UnaryOp;

GxB_ONE_FC32_: GrB_UnaryOp;
GxB_ONE_FC64_: GrB_UnaryOp;

GrB_LNOT_: GrB_UnaryOp;

GxB_ABS_BOOL_: GrB_UnaryOp;
GxB_ABS_INT8_: GrB_UnaryOp;
GxB_ABS_INT16_: GrB_UnaryOp;
GxB_ABS_INT32_: GrB_UnaryOp;
GxB_ABS_INT64_: GrB_UnaryOp;
GxB_ABS_UINT8_: GrB_UnaryOp;
GxB_ABS_UINT16_: GrB_UnaryOp;
GxB_ABS_UINT32_: GrB_UnaryOp;
GxB_ABS_UINT64_: GrB_UnaryOp;
GxB_ABS_FP32_: GrB_UnaryOp;
GxB_ABS_FP64_: GrB_UnaryOp;

GxB_SQRT_FP32_: GrB_UnaryOp;
GxB_LOG_FP32_: GrB_UnaryOp;
GxB_EXP_FP32_: GrB_UnaryOp;
GxB_LOG2_FP32_: GrB_UnaryOp;
GxB_SQRT_FP64_: GrB_UnaryOp;
GxB_LOG_FP64_: GrB_UnaryOp;
GxB_EXP_FP64_: GrB_UnaryOp;
GxB_LOG2_FP64_: GrB_UnaryOp;
GxB_SQRT_FC32_: GrB_UnaryOp;
GxB_LOG_FC32_: GrB_UnaryOp;
GxB_EXP_FC32_: GrB_UnaryOp;
GxB_LOG2_FC32_: GrB_UnaryOp;
GxB_SQRT_FC64_: GrB_UnaryOp;
GxB_LOG_FC64_: GrB_UnaryOp;
GxB_EXP_FC64_: GrB_UnaryOp;
GxB_LOG2_FC64_: GrB_UnaryOp;

GxB_SIN_FP32_: GrB_UnaryOp;
GxB_COS_FP32_: GrB_UnaryOp;
GxB_TAN_FP32_: GrB_UnaryOp;
GxB_SIN_FP64_: GrB_UnaryOp;
GxB_COS_FP64_: GrB_UnaryOp;
GxB_TAN_FP64_: GrB_UnaryOp;
GxB_SIN_FC32_: GrB_UnaryOp;
GxB_COS_FC32_: GrB_UnaryOp;
GxB_TAN_FC32_: GrB_UnaryOp;
GxB_SIN_FC64_: GrB_UnaryOp;
GxB_COS_FC64_: GrB_UnaryOp;
GxB_TAN_FC64_: GrB_UnaryOp;

GxB_ACOS_FP32_: GrB_UnaryOp;
GxB_ASIN_FP32_: GrB_UnaryOp;
GxB_ATAN_FP32_: GrB_UnaryOp;
GxB_ACOS_FP64_: GrB_UnaryOp;
GxB_ASIN_FP64_: GrB_UnaryOp;
GxB_ATAN_FP64_: GrB_UnaryOp;
GxB_ACOS_FC32_: GrB_UnaryOp;
GxB_ASIN_FC32_: GrB_UnaryOp;
GxB_ATAN_FC32_: GrB_UnaryOp;
GxB_ACOS_FC64_: GrB_UnaryOp;
GxB_ASIN_FC64_: GrB_UnaryOp;
GxB_ATAN_FC64_: GrB_UnaryOp;

GxB_SINH_FP32_: GrB_UnaryOp;
GxB_COSH_FP32_: GrB_UnaryOp;
GxB_TANH_FP32_: GrB_UnaryOp;
GxB_SINH_FP64_: GrB_UnaryOp;
GxB_COSH_FP64_: GrB_UnaryOp;
GxB_TANH_FP64_: GrB_UnaryOp;
GxB_SINH_FC32_: GrB_UnaryOp;
GxB_COSH_FC32_: GrB_UnaryOp;
GxB_TANH_FC32_: GrB_UnaryOp;
GxB_SINH_FC64_: GrB_UnaryOp;
GxB_COSH_FC64_: GrB_UnaryOp;
GxB_TANH_FC64_: GrB_UnaryOp;

GxB_ACOSH_FP32_: GrB_UnaryOp;
GxB_ASINH_FP32_: GrB_UnaryOp;
GxB_ATANH_FP32_: GrB_UnaryOp;
GxB_SIGNUM_FP32_: GrB_UnaryOp;
GxB_ACOSH_FP64_: GrB_UnaryOp;
GxB_ASINH_FP64_: GrB_UnaryOp;
GxB_ATANH_FP64_: GrB_UnaryOp;
GxB_SIGNUM_FP64_: GrB_UnaryOp;
GxB_ACOSH_FC32_: GrB_UnaryOp;
GxB_ASINH_FC32_: GrB_UnaryOp;
GxB_ATANH_FC32_: GrB_UnaryOp;
GxB_SIGNUM_FC32_: GrB_UnaryOp;
GxB_ACOSH_FC64_: GrB_UnaryOp;
GxB_ASINH_FC64_: GrB_UnaryOp;
GxB_ATANH_FC64_: GrB_UnaryOp;
GxB_SIGNUM_FC64_: GrB_UnaryOp;

GxB_CEIL_FP32_: GrB_UnaryOp;
GxB_FLOOR_FP32_: GrB_UnaryOp;
GxB_ROUND_FP32_: GrB_UnaryOp;
GxB_TRUNC_FP32_: GrB_UnaryOp;
GxB_CEIL_FP64_: GrB_UnaryOp;
GxB_FLOOR_FP64_: GrB_UnaryOp;
GxB_ROUND_FP64_: GrB_UnaryOp;
GxB_TRUNC_FP64_: GrB_UnaryOp;
GxB_CEIL_FC32_: GrB_UnaryOp;
GxB_FLOOR_FC32_: GrB_UnaryOp;
GxB_ROUND_FC32_: GrB_UnaryOp;
GxB_TRUNC_FC32_: GrB_UnaryOp;
GxB_CEIL_FC64_: GrB_UnaryOp;
GxB_FLOOR_FC64_: GrB_UnaryOp;
GxB_ROUND_FC64_: GrB_UnaryOp;
GxB_TRUNC_FC64_: GrB_UnaryOp;

GxB_EXP2_FP32_: GrB_UnaryOp;
GxB_EXPM1_FP32_: GrB_UnaryOp;
GxB_LOG10_FP32_: GrB_UnaryOp;
GxB_LOG1P_FP32_: GrB_UnaryOp;
GxB_EXP2_FP64_: GrB_UnaryOp;
GxB_EXPM1_FP64_: GrB_UnaryOp;
GxB_LOG10_FP64_: GrB_UnaryOp;
GxB_LOG1P_FP64_: GrB_UnaryOp;
GxB_EXP2_FC32_: GrB_UnaryOp;
GxB_EXPM1_FC32_: GrB_UnaryOp;
GxB_LOG10_FC32_: GrB_UnaryOp;
GxB_LOG1P_FC32_: GrB_UnaryOp;
GxB_EXP2_FC64_: GrB_UnaryOp;
GxB_EXPM1_FC64_: GrB_UnaryOp;
GxB_LOG10_FC64_: GrB_UnaryOp;
GxB_LOG1P_FC64_: GrB_UnaryOp;

GxB_LGAMMA_FP32_: GrB_UnaryOp;
GxB_TGAMMA_FP32_: GrB_UnaryOp;
GxB_ERF_FP32_: GrB_UnaryOp;
GxB_ERFC_FP32_: GrB_UnaryOp;
GxB_LGAMMA_FP64_: GrB_UnaryOp;
GxB_TGAMMA_FP64_: GrB_UnaryOp;
GxB_ERF_FP64_: GrB_UnaryOp;
GxB_ERFC_FP64_: GrB_UnaryOp;

GxB_FREXPX_FP32_: GrB_UnaryOp;
GxB_FREXPE_FP32_: GrB_UnaryOp;
GxB_FREXPX_FP64_: GrB_UnaryOp;
GxB_FREXPE_FP64_: GrB_UnaryOp;

GxB_CONJ_FC32_: GrB_UnaryOp;
GxB_CONJ_FC64_: GrB_UnaryOp;

GxB_CREAL_FC32_: GrB_UnaryOp;
GxB_CIMAG_FC32_: GrB_UnaryOp;
GxB_CARG_FC32_: GrB_UnaryOp;
GxB_ABS_FC32_: GrB_UnaryOp;
GxB_CREAL_FC64_: GrB_UnaryOp;
GxB_CIMAG_FC64_: GrB_UnaryOp;
GxB_CARG_FC64_: GrB_UnaryOp;
GxB_ABS_FC64_: GrB_UnaryOp;

GxB_ISINF_FP32_: GrB_UnaryOp;
GxB_ISINF_FP64_: GrB_UnaryOp;
GxB_ISINF_FC32_: GrB_UnaryOp;
GxB_ISINF_FC64_: GrB_UnaryOp;

GxB_ISNAN_FP32_: GrB_UnaryOp;
GxB_ISNAN_FP64_: GrB_UnaryOp;
GxB_ISNAN_FC32_: GrB_UnaryOp;
GxB_ISNAN_FC64_: GrB_UnaryOp;

GxB_ISFINITE_FP32_: GrB_UnaryOp;
GxB_ISFINITE_FP64_: GrB_UnaryOp;
GxB_ISFINITE_FC32_: GrB_UnaryOp;
GxB_ISFINITE_FC64_: GrB_UnaryOp;

GxB_unary_function :: #type (a0: *void, a1: *void) -> void #c_call;

GrB_UnaryOp_new :: (unaryop: *GrB_UnaryOp, function: GxB_unary_function, ztype: GrB_Type, xtype: GrB_Type) -> GrB_Info #foreign libgraphblas;

GxB_UnaryOp_new :: (unaryop: *GrB_UnaryOp, function: GxB_unary_function, ztype: GrB_Type, xtype: GrB_Type, unop_name: *u8, unop_defn: *u8) -> GrB_Info #foreign libgraphblas;

GB_UnaryOp_new :: (unaryop: *GrB_UnaryOp, function: GxB_unary_function, ztype: GrB_Type, xtype: GrB_Type, unop_name: *u8) -> GrB_Info #foreign libgraphblas;

GxB_UnaryOp_ztype :: (ztype: *GrB_Type, unaryop: GrB_UnaryOp) -> GrB_Info #foreign libgraphblas;

GxB_UnaryOp_ztype_name :: (type_name: *u8, unaryop: GrB_UnaryOp) -> GrB_Info #foreign libgraphblas;

GxB_UnaryOp_xtype :: (xtype: *GrB_Type, unaryop: GrB_UnaryOp) -> GrB_Info #foreign libgraphblas;

GxB_UnaryOp_xtype_name :: (type_name: *u8, unaryop: GrB_UnaryOp) -> GrB_Info #foreign libgraphblas;

GrB_UnaryOp_free :: (unaryop: *GrB_UnaryOp) -> GrB_Info #foreign libgraphblas;

GB_BinaryOp_opaque :: struct {}
GrB_BinaryOp :: *GB_BinaryOp_opaque;

GrB_FIRST_BOOL_: GrB_BinaryOp;
GrB_SECOND_BOOL_: GrB_BinaryOp;
GrB_ONEB_BOOL_: GrB_BinaryOp;
GxB_POW_BOOL_: GrB_BinaryOp;
GrB_FIRST_INT8_: GrB_BinaryOp;
GrB_SECOND_INT8_: GrB_BinaryOp;
GrB_ONEB_INT8_: GrB_BinaryOp;
GxB_POW_INT8_: GrB_BinaryOp;
GrB_FIRST_INT16_: GrB_BinaryOp;
GrB_SECOND_INT16_: GrB_BinaryOp;
GrB_ONEB_INT16_: GrB_BinaryOp;
GxB_POW_INT16_: GrB_BinaryOp;
GrB_FIRST_INT32_: GrB_BinaryOp;
GrB_SECOND_INT32_: GrB_BinaryOp;
GrB_ONEB_INT32_: GrB_BinaryOp;
GxB_POW_INT32_: GrB_BinaryOp;
GrB_FIRST_INT64_: GrB_BinaryOp;
GrB_SECOND_INT64_: GrB_BinaryOp;
GrB_ONEB_INT64_: GrB_BinaryOp;
GxB_POW_INT64_: GrB_BinaryOp;
GrB_FIRST_UINT8_: GrB_BinaryOp;
GrB_SECOND_UINT8_: GrB_BinaryOp;
GrB_ONEB_UINT8_: GrB_BinaryOp;
GxB_POW_UINT8_: GrB_BinaryOp;
GrB_FIRST_UINT16_: GrB_BinaryOp;
GrB_SECOND_UINT16_: GrB_BinaryOp;
GrB_ONEB_UINT16_: GrB_BinaryOp;
GxB_POW_UINT16_: GrB_BinaryOp;
GrB_FIRST_UINT32_: GrB_BinaryOp;
GrB_SECOND_UINT32_: GrB_BinaryOp;
GrB_ONEB_UINT32_: GrB_BinaryOp;
GxB_POW_UINT32_: GrB_BinaryOp;
GrB_FIRST_UINT64_: GrB_BinaryOp;
GrB_SECOND_UINT64_: GrB_BinaryOp;
GrB_ONEB_UINT64_: GrB_BinaryOp;
GxB_POW_UINT64_: GrB_BinaryOp;
GrB_FIRST_FP32_: GrB_BinaryOp;
GrB_SECOND_FP32_: GrB_BinaryOp;
GrB_ONEB_FP32_: GrB_BinaryOp;
GxB_POW_FP32_: GrB_BinaryOp;
GrB_FIRST_FP64_: GrB_BinaryOp;
GrB_SECOND_FP64_: GrB_BinaryOp;
GrB_ONEB_FP64_: GrB_BinaryOp;
GxB_POW_FP64_: GrB_BinaryOp;

GxB_FIRST_FC32_: GrB_BinaryOp;
GxB_SECOND_FC32_: GrB_BinaryOp;
GxB_ONEB_FC32_: GrB_BinaryOp;
GxB_POW_FC32_: GrB_BinaryOp;
GxB_FIRST_FC64_: GrB_BinaryOp;
GxB_SECOND_FC64_: GrB_BinaryOp;
GxB_ONEB_FC64_: GrB_BinaryOp;
GxB_POW_FC64_: GrB_BinaryOp;

GrB_PLUS_BOOL_: GrB_BinaryOp;
GrB_MINUS_BOOL_: GrB_BinaryOp;
GrB_TIMES_BOOL_: GrB_BinaryOp;
GrB_DIV_BOOL_: GrB_BinaryOp;
GrB_PLUS_INT8_: GrB_BinaryOp;
GrB_MINUS_INT8_: GrB_BinaryOp;
GrB_TIMES_INT8_: GrB_BinaryOp;
GrB_DIV_INT8_: GrB_BinaryOp;
GrB_PLUS_INT16_: GrB_BinaryOp;
GrB_MINUS_INT16_: GrB_BinaryOp;
GrB_TIMES_INT16_: GrB_BinaryOp;
GrB_DIV_INT16_: GrB_BinaryOp;
GrB_PLUS_INT32_: GrB_BinaryOp;
GrB_MINUS_INT32_: GrB_BinaryOp;
GrB_TIMES_INT32_: GrB_BinaryOp;
GrB_DIV_INT32_: GrB_BinaryOp;
GrB_PLUS_INT64_: GrB_BinaryOp;
GrB_MINUS_INT64_: GrB_BinaryOp;
GrB_TIMES_INT64_: GrB_BinaryOp;
GrB_DIV_INT64_: GrB_BinaryOp;
GrB_PLUS_UINT8_: GrB_BinaryOp;
GrB_MINUS_UINT8_: GrB_BinaryOp;
GrB_TIMES_UINT8_: GrB_BinaryOp;
GrB_DIV_UINT8_: GrB_BinaryOp;
GrB_PLUS_UINT16_: GrB_BinaryOp;
GrB_MINUS_UINT16_: GrB_BinaryOp;
GrB_TIMES_UINT16_: GrB_BinaryOp;
GrB_DIV_UINT16_: GrB_BinaryOp;
GrB_PLUS_UINT32_: GrB_BinaryOp;
GrB_MINUS_UINT32_: GrB_BinaryOp;
GrB_TIMES_UINT32_: GrB_BinaryOp;
GrB_DIV_UINT32_: GrB_BinaryOp;
GrB_PLUS_UINT64_: GrB_BinaryOp;
GrB_MINUS_UINT64_: GrB_BinaryOp;
GrB_TIMES_UINT64_: GrB_BinaryOp;
GrB_DIV_UINT64_: GrB_BinaryOp;
GrB_PLUS_FP32_: GrB_BinaryOp;
GrB_MINUS_FP32_: GrB_BinaryOp;
GrB_TIMES_FP32_: GrB_BinaryOp;
GrB_DIV_FP32_: GrB_BinaryOp;
GrB_PLUS_FP64_: GrB_BinaryOp;
GrB_MINUS_FP64_: GrB_BinaryOp;
GrB_TIMES_FP64_: GrB_BinaryOp;
GrB_DIV_FP64_: GrB_BinaryOp;

GxB_PLUS_FC32_: GrB_BinaryOp;
GxB_MINUS_FC32_: GrB_BinaryOp;
GxB_TIMES_FC32_: GrB_BinaryOp;
GxB_DIV_FC32_: GrB_BinaryOp;
GxB_PLUS_FC64_: GrB_BinaryOp;
GxB_MINUS_FC64_: GrB_BinaryOp;
GxB_TIMES_FC64_: GrB_BinaryOp;
GxB_DIV_FC64_: GrB_BinaryOp;

GxB_RMINUS_BOOL_: GrB_BinaryOp;
GxB_RDIV_BOOL_: GrB_BinaryOp;
GxB_PAIR_BOOL_: GrB_BinaryOp;
GxB_ANY_BOOL_: GrB_BinaryOp;
GxB_RMINUS_INT8_: GrB_BinaryOp;
GxB_RDIV_INT8_: GrB_BinaryOp;
GxB_PAIR_INT8_: GrB_BinaryOp;
GxB_ANY_INT8_: GrB_BinaryOp;
GxB_RMINUS_INT16_: GrB_BinaryOp;
GxB_RDIV_INT16_: GrB_BinaryOp;
GxB_PAIR_INT16_: GrB_BinaryOp;
GxB_ANY_INT16_: GrB_BinaryOp;
GxB_RMINUS_INT32_: GrB_BinaryOp;
GxB_RDIV_INT32_: GrB_BinaryOp;
GxB_PAIR_INT32_: GrB_BinaryOp;
GxB_ANY_INT32_: GrB_BinaryOp;
GxB_RMINUS_INT64_: GrB_BinaryOp;
GxB_RDIV_INT64_: GrB_BinaryOp;
GxB_PAIR_INT64_: GrB_BinaryOp;
GxB_ANY_INT64_: GrB_BinaryOp;
GxB_RMINUS_UINT8_: GrB_BinaryOp;
GxB_RDIV_UINT8_: GrB_BinaryOp;
GxB_PAIR_UINT8_: GrB_BinaryOp;
GxB_ANY_UINT8_: GrB_BinaryOp;
GxB_RMINUS_UINT16_: GrB_BinaryOp;
GxB_RDIV_UINT16_: GrB_BinaryOp;
GxB_PAIR_UINT16_: GrB_BinaryOp;
GxB_ANY_UINT16_: GrB_BinaryOp;
GxB_RMINUS_UINT32_: GrB_BinaryOp;
GxB_RDIV_UINT32_: GrB_BinaryOp;
GxB_PAIR_UINT32_: GrB_BinaryOp;
GxB_ANY_UINT32_: GrB_BinaryOp;
GxB_RMINUS_UINT64_: GrB_BinaryOp;
GxB_RDIV_UINT64_: GrB_BinaryOp;
GxB_PAIR_UINT64_: GrB_BinaryOp;
GxB_ANY_UINT64_: GrB_BinaryOp;
GxB_RMINUS_FP32_: GrB_BinaryOp;
GxB_RDIV_FP32_: GrB_BinaryOp;
GxB_PAIR_FP32_: GrB_BinaryOp;
GxB_ANY_FP32_: GrB_BinaryOp;
GxB_RMINUS_FP64_: GrB_BinaryOp;
GxB_RDIV_FP64_: GrB_BinaryOp;
GxB_PAIR_FP64_: GrB_BinaryOp;
GxB_ANY_FP64_: GrB_BinaryOp;

GxB_RMINUS_FC32_: GrB_BinaryOp;
GxB_RDIV_FC32_: GrB_BinaryOp;
GxB_PAIR_FC32_: GrB_BinaryOp;
GxB_ANY_FC32_: GrB_BinaryOp;
GxB_RMINUS_FC64_: GrB_BinaryOp;
GxB_RDIV_FC64_: GrB_BinaryOp;
GxB_PAIR_FC64_: GrB_BinaryOp;
GxB_ANY_FC64_: GrB_BinaryOp;

GxB_ISEQ_BOOL_: GrB_BinaryOp;
GxB_ISNE_BOOL_: GrB_BinaryOp;
GxB_ISEQ_INT8_: GrB_BinaryOp;
GxB_ISNE_INT8_: GrB_BinaryOp;
GxB_ISEQ_INT16_: GrB_BinaryOp;
GxB_ISNE_INT16_: GrB_BinaryOp;
GxB_ISEQ_INT32_: GrB_BinaryOp;
GxB_ISNE_INT32_: GrB_BinaryOp;
GxB_ISEQ_INT64_: GrB_BinaryOp;
GxB_ISNE_INT64_: GrB_BinaryOp;
GxB_ISEQ_UINT8_: GrB_BinaryOp;
GxB_ISNE_UINT8_: GrB_BinaryOp;
GxB_ISEQ_UINT16_: GrB_BinaryOp;
GxB_ISNE_UINT16_: GrB_BinaryOp;
GxB_ISEQ_UINT32_: GrB_BinaryOp;
GxB_ISNE_UINT32_: GrB_BinaryOp;
GxB_ISEQ_UINT64_: GrB_BinaryOp;
GxB_ISNE_UINT64_: GrB_BinaryOp;
GxB_ISEQ_FP32_: GrB_BinaryOp;
GxB_ISNE_FP32_: GrB_BinaryOp;
GxB_ISEQ_FP64_: GrB_BinaryOp;
GxB_ISNE_FP64_: GrB_BinaryOp;

GxB_ISEQ_FC32_: GrB_BinaryOp;
GxB_ISNE_FC32_: GrB_BinaryOp;
GxB_ISEQ_FC64_: GrB_BinaryOp;
GxB_ISNE_FC64_: GrB_BinaryOp;

GxB_ISGT_BOOL_: GrB_BinaryOp;
GxB_ISLT_BOOL_: GrB_BinaryOp;
GxB_ISGE_BOOL_: GrB_BinaryOp;
GxB_ISLE_BOOL_: GrB_BinaryOp;
GxB_ISGT_INT8_: GrB_BinaryOp;
GxB_ISLT_INT8_: GrB_BinaryOp;
GxB_ISGE_INT8_: GrB_BinaryOp;
GxB_ISLE_INT8_: GrB_BinaryOp;
GxB_ISGT_INT16_: GrB_BinaryOp;
GxB_ISLT_INT16_: GrB_BinaryOp;
GxB_ISGE_INT16_: GrB_BinaryOp;
GxB_ISLE_INT16_: GrB_BinaryOp;
GxB_ISGT_INT32_: GrB_BinaryOp;
GxB_ISLT_INT32_: GrB_BinaryOp;
GxB_ISGE_INT32_: GrB_BinaryOp;
GxB_ISLE_INT32_: GrB_BinaryOp;
GxB_ISGT_INT64_: GrB_BinaryOp;
GxB_ISLT_INT64_: GrB_BinaryOp;
GxB_ISGE_INT64_: GrB_BinaryOp;
GxB_ISLE_INT64_: GrB_BinaryOp;
GxB_ISGT_UINT8_: GrB_BinaryOp;
GxB_ISLT_UINT8_: GrB_BinaryOp;
GxB_ISGE_UINT8_: GrB_BinaryOp;
GxB_ISLE_UINT8_: GrB_BinaryOp;
GxB_ISGT_UINT16_: GrB_BinaryOp;
GxB_ISLT_UINT16_: GrB_BinaryOp;
GxB_ISGE_UINT16_: GrB_BinaryOp;
GxB_ISLE_UINT16_: GrB_BinaryOp;
GxB_ISGT_UINT32_: GrB_BinaryOp;
GxB_ISLT_UINT32_: GrB_BinaryOp;
GxB_ISGE_UINT32_: GrB_BinaryOp;
GxB_ISLE_UINT32_: GrB_BinaryOp;
GxB_ISGT_UINT64_: GrB_BinaryOp;
GxB_ISLT_UINT64_: GrB_BinaryOp;
GxB_ISGE_UINT64_: GrB_BinaryOp;
GxB_ISLE_UINT64_: GrB_BinaryOp;
GxB_ISGT_FP32_: GrB_BinaryOp;
GxB_ISLT_FP32_: GrB_BinaryOp;
GxB_ISGE_FP32_: GrB_BinaryOp;
GxB_ISLE_FP32_: GrB_BinaryOp;
GxB_ISGT_FP64_: GrB_BinaryOp;
GxB_ISLT_FP64_: GrB_BinaryOp;
GxB_ISGE_FP64_: GrB_BinaryOp;
GxB_ISLE_FP64_: GrB_BinaryOp;

GrB_MIN_BOOL_: GrB_BinaryOp;
GrB_MAX_BOOL_: GrB_BinaryOp;
GrB_MIN_INT8_: GrB_BinaryOp;
GrB_MAX_INT8_: GrB_BinaryOp;
GrB_MIN_INT16_: GrB_BinaryOp;
GrB_MAX_INT16_: GrB_BinaryOp;
GrB_MIN_INT32_: GrB_BinaryOp;
GrB_MAX_INT32_: GrB_BinaryOp;
GrB_MIN_INT64_: GrB_BinaryOp;
GrB_MAX_INT64_: GrB_BinaryOp;
GrB_MIN_UINT8_: GrB_BinaryOp;
GrB_MAX_UINT8_: GrB_BinaryOp;
GrB_MIN_UINT16_: GrB_BinaryOp;
GrB_MAX_UINT16_: GrB_BinaryOp;
GrB_MIN_UINT32_: GrB_BinaryOp;
GrB_MAX_UINT32_: GrB_BinaryOp;
GrB_MIN_UINT64_: GrB_BinaryOp;
GrB_MAX_UINT64_: GrB_BinaryOp;
GrB_MIN_FP32_: GrB_BinaryOp;
GrB_MAX_FP32_: GrB_BinaryOp;
GrB_MIN_FP64_: GrB_BinaryOp;
GrB_MAX_FP64_: GrB_BinaryOp;

GxB_LOR_BOOL_: GrB_BinaryOp;
GxB_LAND_BOOL_: GrB_BinaryOp;
GxB_LXOR_BOOL_: GrB_BinaryOp;
GxB_LOR_INT8_: GrB_BinaryOp;
GxB_LAND_INT8_: GrB_BinaryOp;
GxB_LXOR_INT8_: GrB_BinaryOp;
GxB_LOR_INT16_: GrB_BinaryOp;
GxB_LAND_INT16_: GrB_BinaryOp;
GxB_LXOR_INT16_: GrB_BinaryOp;
GxB_LOR_INT32_: GrB_BinaryOp;
GxB_LAND_INT32_: GrB_BinaryOp;
GxB_LXOR_INT32_: GrB_BinaryOp;
GxB_LOR_INT64_: GrB_BinaryOp;
GxB_LAND_INT64_: GrB_BinaryOp;
GxB_LXOR_INT64_: GrB_BinaryOp;
GxB_LOR_UINT8_: GrB_BinaryOp;
GxB_LAND_UINT8_: GrB_BinaryOp;
GxB_LXOR_UINT8_: GrB_BinaryOp;
GxB_LOR_UINT16_: GrB_BinaryOp;
GxB_LAND_UINT16_: GrB_BinaryOp;
GxB_LXOR_UINT16_: GrB_BinaryOp;
GxB_LOR_UINT32_: GrB_BinaryOp;
GxB_LAND_UINT32_: GrB_BinaryOp;
GxB_LXOR_UINT32_: GrB_BinaryOp;
GxB_LOR_UINT64_: GrB_BinaryOp;
GxB_LAND_UINT64_: GrB_BinaryOp;
GxB_LXOR_UINT64_: GrB_BinaryOp;
GxB_LOR_FP32_: GrB_BinaryOp;
GxB_LAND_FP32_: GrB_BinaryOp;
GxB_LXOR_FP32_: GrB_BinaryOp;
GxB_LOR_FP64_: GrB_BinaryOp;
GxB_LAND_FP64_: GrB_BinaryOp;
GxB_LXOR_FP64_: GrB_BinaryOp;

GrB_LOR_: GrB_BinaryOp;
GrB_LAND_: GrB_BinaryOp;
GrB_LXOR_: GrB_BinaryOp;
GrB_LXNOR_: GrB_BinaryOp;

GxB_ATAN2_FP32_: GrB_BinaryOp;
GxB_HYPOT_FP32_: GrB_BinaryOp;
GxB_FMOD_FP32_: GrB_BinaryOp;
GxB_REMAINDER_FP32_: GrB_BinaryOp;
GxB_ATAN2_FP64_: GrB_BinaryOp;
GxB_HYPOT_FP64_: GrB_BinaryOp;
GxB_FMOD_FP64_: GrB_BinaryOp;
GxB_REMAINDER_FP64_: GrB_BinaryOp;

GxB_LDEXP_FP32_: GrB_BinaryOp;
GxB_COPYSIGN_FP32_: GrB_BinaryOp;
GxB_LDEXP_FP64_: GrB_BinaryOp;
GxB_COPYSIGN_FP64_: GrB_BinaryOp;

GrB_BOR_INT8_: GrB_BinaryOp;
GrB_BAND_INT8_: GrB_BinaryOp;
GrB_BXOR_INT8_: GrB_BinaryOp;
GrB_BXNOR_INT8_: GrB_BinaryOp;
GrB_BOR_INT16_: GrB_BinaryOp;
GrB_BAND_INT16_: GrB_BinaryOp;
GrB_BXOR_INT16_: GrB_BinaryOp;
GrB_BXNOR_INT16_: GrB_BinaryOp;
GrB_BOR_INT32_: GrB_BinaryOp;
GrB_BAND_INT32_: GrB_BinaryOp;
GrB_BXOR_INT32_: GrB_BinaryOp;
GrB_BXNOR_INT32_: GrB_BinaryOp;
GrB_BOR_INT64_: GrB_BinaryOp;
GrB_BAND_INT64_: GrB_BinaryOp;
GrB_BXOR_INT64_: GrB_BinaryOp;
GrB_BXNOR_INT64_: GrB_BinaryOp;
GrB_BOR_UINT8_: GrB_BinaryOp;
GrB_BAND_UINT8_: GrB_BinaryOp;
GrB_BXOR_UINT8_: GrB_BinaryOp;
GrB_BXNOR_UINT8_: GrB_BinaryOp;
GrB_BOR_UINT16_: GrB_BinaryOp;
GrB_BAND_UINT16_: GrB_BinaryOp;
GrB_BXOR_UINT16_: GrB_BinaryOp;
GrB_BXNOR_UINT16_: GrB_BinaryOp;
GrB_BOR_UINT32_: GrB_BinaryOp;
GrB_BAND_UINT32_: GrB_BinaryOp;
GrB_BXOR_UINT32_: GrB_BinaryOp;
GrB_BXNOR_UINT32_: GrB_BinaryOp;
GrB_BOR_UINT64_: GrB_BinaryOp;
GrB_BAND_UINT64_: GrB_BinaryOp;
GrB_BXOR_UINT64_: GrB_BinaryOp;
GrB_BXNOR_UINT64_: GrB_BinaryOp;

GxB_BGET_INT8_: GrB_BinaryOp;
GxB_BSET_INT8_: GrB_BinaryOp;
GxB_BCLR_INT8_: GrB_BinaryOp;
GxB_BGET_INT16_: GrB_BinaryOp;
GxB_BSET_INT16_: GrB_BinaryOp;
GxB_BCLR_INT16_: GrB_BinaryOp;
GxB_BGET_INT32_: GrB_BinaryOp;
GxB_BSET_INT32_: GrB_BinaryOp;
GxB_BCLR_INT32_: GrB_BinaryOp;
GxB_BGET_INT64_: GrB_BinaryOp;
GxB_BSET_INT64_: GrB_BinaryOp;
GxB_BCLR_INT64_: GrB_BinaryOp;
GxB_BGET_UINT8_: GrB_BinaryOp;
GxB_BSET_UINT8_: GrB_BinaryOp;
GxB_BCLR_UINT8_: GrB_BinaryOp;
GxB_BGET_UINT16_: GrB_BinaryOp;
GxB_BSET_UINT16_: GrB_BinaryOp;
GxB_BCLR_UINT16_: GrB_BinaryOp;
GxB_BGET_UINT32_: GrB_BinaryOp;
GxB_BSET_UINT32_: GrB_BinaryOp;
GxB_BCLR_UINT32_: GrB_BinaryOp;
GxB_BGET_UINT64_: GrB_BinaryOp;
GxB_BSET_UINT64_: GrB_BinaryOp;
GxB_BCLR_UINT64_: GrB_BinaryOp;

GxB_BSHIFT_INT8_: GrB_BinaryOp;
GxB_BSHIFT_INT16_: GrB_BinaryOp;
GxB_BSHIFT_INT32_: GrB_BinaryOp;
GxB_BSHIFT_INT64_: GrB_BinaryOp;
GxB_BSHIFT_UINT8_: GrB_BinaryOp;
GxB_BSHIFT_UINT16_: GrB_BinaryOp;
GxB_BSHIFT_UINT32_: GrB_BinaryOp;
GxB_BSHIFT_UINT64_: GrB_BinaryOp;

GrB_EQ_BOOL_: GrB_BinaryOp;
GrB_NE_BOOL_: GrB_BinaryOp;
GrB_GT_BOOL_: GrB_BinaryOp;
GrB_LT_BOOL_: GrB_BinaryOp;
GrB_EQ_INT8_: GrB_BinaryOp;
GrB_NE_INT8_: GrB_BinaryOp;
GrB_GT_INT8_: GrB_BinaryOp;
GrB_LT_INT8_: GrB_BinaryOp;
GrB_EQ_INT16_: GrB_BinaryOp;
GrB_NE_INT16_: GrB_BinaryOp;
GrB_GT_INT16_: GrB_BinaryOp;
GrB_LT_INT16_: GrB_BinaryOp;
GrB_EQ_INT32_: GrB_BinaryOp;
GrB_NE_INT32_: GrB_BinaryOp;
GrB_GT_INT32_: GrB_BinaryOp;
GrB_LT_INT32_: GrB_BinaryOp;
GrB_EQ_INT64_: GrB_BinaryOp;
GrB_NE_INT64_: GrB_BinaryOp;
GrB_GT_INT64_: GrB_BinaryOp;
GrB_LT_INT64_: GrB_BinaryOp;
GrB_EQ_UINT8_: GrB_BinaryOp;
GrB_NE_UINT8_: GrB_BinaryOp;
GrB_GT_UINT8_: GrB_BinaryOp;
GrB_LT_UINT8_: GrB_BinaryOp;
GrB_EQ_UINT16_: GrB_BinaryOp;
GrB_NE_UINT16_: GrB_BinaryOp;
GrB_GT_UINT16_: GrB_BinaryOp;
GrB_LT_UINT16_: GrB_BinaryOp;
GrB_EQ_UINT32_: GrB_BinaryOp;
GrB_NE_UINT32_: GrB_BinaryOp;
GrB_GT_UINT32_: GrB_BinaryOp;
GrB_LT_UINT32_: GrB_BinaryOp;
GrB_EQ_UINT64_: GrB_BinaryOp;
GrB_NE_UINT64_: GrB_BinaryOp;
GrB_GT_UINT64_: GrB_BinaryOp;
GrB_LT_UINT64_: GrB_BinaryOp;
GrB_EQ_FP32_: GrB_BinaryOp;
GrB_NE_FP32_: GrB_BinaryOp;
GrB_GT_FP32_: GrB_BinaryOp;
GrB_LT_FP32_: GrB_BinaryOp;
GrB_EQ_FP64_: GrB_BinaryOp;
GrB_NE_FP64_: GrB_BinaryOp;
GrB_GT_FP64_: GrB_BinaryOp;
GrB_LT_FP64_: GrB_BinaryOp;

GxB_EQ_FC32_: GrB_BinaryOp;
GxB_NE_FC32_: GrB_BinaryOp;
GxB_EQ_FC64_: GrB_BinaryOp;
GxB_NE_FC64_: GrB_BinaryOp;

GrB_GE_BOOL_: GrB_BinaryOp;
GrB_LE_BOOL_: GrB_BinaryOp;
GrB_GE_INT8_: GrB_BinaryOp;
GrB_LE_INT8_: GrB_BinaryOp;
GrB_GE_INT16_: GrB_BinaryOp;
GrB_LE_INT16_: GrB_BinaryOp;
GrB_GE_INT32_: GrB_BinaryOp;
GrB_LE_INT32_: GrB_BinaryOp;
GrB_GE_INT64_: GrB_BinaryOp;
GrB_LE_INT64_: GrB_BinaryOp;
GrB_GE_UINT8_: GrB_BinaryOp;
GrB_LE_UINT8_: GrB_BinaryOp;
GrB_GE_UINT16_: GrB_BinaryOp;
GrB_LE_UINT16_: GrB_BinaryOp;
GrB_GE_UINT32_: GrB_BinaryOp;
GrB_LE_UINT32_: GrB_BinaryOp;
GrB_GE_UINT64_: GrB_BinaryOp;
GrB_LE_UINT64_: GrB_BinaryOp;
GrB_GE_FP32_: GrB_BinaryOp;
GrB_LE_FP32_: GrB_BinaryOp;
GrB_GE_FP64_: GrB_BinaryOp;
GrB_LE_FP64_: GrB_BinaryOp;

GxB_CMPLX_FP32_: GrB_BinaryOp;
GxB_CMPLX_FP64_: GrB_BinaryOp;

GxB_FIRSTI_INT32_: GrB_BinaryOp;
GxB_FIRSTI_INT64_: GrB_BinaryOp;
GxB_FIRSTI1_INT32_: GrB_BinaryOp;
GxB_FIRSTI1_INT64_: GrB_BinaryOp;
GxB_FIRSTJ_INT32_: GrB_BinaryOp;
GxB_FIRSTJ_INT64_: GrB_BinaryOp;
GxB_FIRSTJ1_INT32_: GrB_BinaryOp;
GxB_FIRSTJ1_INT64_: GrB_BinaryOp;
GxB_SECONDI_INT32_: GrB_BinaryOp;
GxB_SECONDI_INT64_: GrB_BinaryOp;
GxB_SECONDI1_INT32_: GrB_BinaryOp;
GxB_SECONDI1_INT64_: GrB_BinaryOp;
GxB_SECONDJ_INT32_: GrB_BinaryOp;
GxB_SECONDJ_INT64_: GrB_BinaryOp;
GxB_SECONDJ1_INT32_: GrB_BinaryOp;
GxB_SECONDJ1_INT64_: GrB_BinaryOp;

GxB_POSITIONI_INT32_: GrB_UnaryOp;
GxB_POSITIONI_INT64_: GrB_UnaryOp;
GxB_POSITIONI1_INT32_: GrB_UnaryOp;
GxB_POSITIONI1_INT64_: GrB_UnaryOp;
GxB_POSITIONJ_INT32_: GrB_UnaryOp;
GxB_POSITIONJ_INT64_: GrB_UnaryOp;
GxB_POSITIONJ1_INT32_: GrB_UnaryOp;
GxB_POSITIONJ1_INT64_: GrB_UnaryOp;

GxB_IGNORE_DUP_: GrB_BinaryOp;

GxB_binary_function :: #type (a0: *void, a1: *void, a2: *void) -> void #c_call;

GrB_BinaryOp_new :: (binaryop: *GrB_BinaryOp, function: GxB_binary_function, ztype: GrB_Type, xtype: GrB_Type, ytype: GrB_Type) -> GrB_Info #foreign libgraphblas;

GxB_BinaryOp_new :: (op: *GrB_BinaryOp, function: GxB_binary_function, ztype: GrB_Type, xtype: GrB_Type, ytype: GrB_Type, binop_name: *u8, binop_defn: *u8) -> GrB_Info #foreign libgraphblas;

GB_BinaryOp_new :: (binaryop: *GrB_BinaryOp, function: GxB_binary_function, ztype: GrB_Type, xtype: GrB_Type, ytype: GrB_Type, binop_name: *u8) -> GrB_Info #foreign libgraphblas;

GxB_BinaryOp_ztype :: (ztype: *GrB_Type, binaryop: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GxB_BinaryOp_ztype_name :: (type_name: *u8, binaryop: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GxB_BinaryOp_xtype :: (xtype: *GrB_Type, binaryop: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GxB_BinaryOp_xtype_name :: (type_name: *u8, binaryop: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GxB_BinaryOp_ytype :: (ytype: *GrB_Type, binaryop: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GxB_BinaryOp_ytype_name :: (type_name: *u8, binaryop: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_BinaryOp_free :: (binaryop: *GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GB_SelectOp_opaque :: struct {}
GxB_SelectOp :: *GB_SelectOp_opaque;

GxB_TRIL_: GxB_SelectOp;
GxB_TRIU_: GxB_SelectOp;
GxB_DIAG_: GxB_SelectOp;
GxB_OFFDIAG_: GxB_SelectOp;

GxB_NONZERO_: GxB_SelectOp;
GxB_EQ_ZERO_: GxB_SelectOp;
GxB_GT_ZERO_: GxB_SelectOp;
GxB_GE_ZERO_: GxB_SelectOp;
GxB_LT_ZERO_: GxB_SelectOp;
GxB_LE_ZERO_: GxB_SelectOp;

GxB_NE_THUNK_: GxB_SelectOp;
GxB_EQ_THUNK_: GxB_SelectOp;
GxB_GT_THUNK_: GxB_SelectOp;
GxB_GE_THUNK_: GxB_SelectOp;
GxB_LT_THUNK_: GxB_SelectOp;
GxB_LE_THUNK_: GxB_SelectOp;

GxB_select_function :: #type (a0: GrB_Index, a1: GrB_Index, a2: *void, a3: *void) -> bool #c_call;

GxB_SelectOp_new :: (selectop: *GxB_SelectOp, function: GxB_select_function, xtype: GrB_Type, ttype: GrB_Type) -> GrB_Info #foreign libgraphblas;

GB_SelectOp_new :: (selectop: *GxB_SelectOp, function: GxB_select_function, xtype: GrB_Type, ttype: GrB_Type, name: *u8) -> GrB_Info #foreign libgraphblas;

GxB_SelectOp_xtype :: (xtype: *GrB_Type, selectop: GxB_SelectOp) -> GrB_Info #foreign libgraphblas;

GxB_SelectOp_ttype :: (ttype: *GrB_Type, selectop: GxB_SelectOp) -> GrB_Info #foreign libgraphblas;

GxB_SelectOp_free :: (selectop: *GxB_SelectOp) -> GrB_Info #foreign libgraphblas;

GB_IndexUnaryOp_opaque :: struct {}
GrB_IndexUnaryOp :: *GB_IndexUnaryOp_opaque;

GxB_index_unary_function :: #type (a0: *void, a1: *void, a2: GrB_Index, a3: GrB_Index, a4: *void) -> void #c_call;

GrB_IndexUnaryOp_new :: (op: *GrB_IndexUnaryOp, function: GxB_index_unary_function, ztype: GrB_Type, xtype: GrB_Type, ytype: GrB_Type) -> GrB_Info #foreign libgraphblas;

GxB_IndexUnaryOp_new :: (op: *GrB_IndexUnaryOp, function: GxB_index_unary_function, ztype: GrB_Type, xtype: GrB_Type, ytype: GrB_Type, idxop_name: *u8, idxop_defn: *u8) -> GrB_Info #foreign libgraphblas;

GxB_IndexUnaryOp_ztype_name :: (type_name: *u8, op: GrB_IndexUnaryOp) -> GrB_Info #foreign libgraphblas;

GxB_IndexUnaryOp_xtype_name :: (type_name: *u8, op: GrB_IndexUnaryOp) -> GrB_Info #foreign libgraphblas;

GxB_IndexUnaryOp_ytype_name :: (type_name: *u8, op: GrB_IndexUnaryOp) -> GrB_Info #foreign libgraphblas;

GrB_IndexUnaryOp_free :: (op: *GrB_IndexUnaryOp) -> GrB_Info #foreign libgraphblas;

GrB_ROWINDEX_INT32_: GrB_IndexUnaryOp;
GrB_ROWINDEX_INT64_: GrB_IndexUnaryOp;

GrB_COLINDEX_INT32_: GrB_IndexUnaryOp;
GrB_COLINDEX_INT64_: GrB_IndexUnaryOp;

GrB_DIAGINDEX_INT32_: GrB_IndexUnaryOp;
GrB_DIAGINDEX_INT64_: GrB_IndexUnaryOp;

GrB_TRIL_: GrB_IndexUnaryOp;

GrB_TRIU_: GrB_IndexUnaryOp;

GrB_DIAG_: GrB_IndexUnaryOp;

GrB_OFFDIAG_: GrB_IndexUnaryOp;

GrB_COLLE_: GrB_IndexUnaryOp;

GrB_COLGT_: GrB_IndexUnaryOp;

GrB_ROWLE_: GrB_IndexUnaryOp;

GrB_ROWGT_: GrB_IndexUnaryOp;

GrB_VALUEEQ_INT8_: GrB_IndexUnaryOp;
GrB_VALUEEQ_UINT8_: GrB_IndexUnaryOp;
GrB_VALUEEQ_FP32_: GrB_IndexUnaryOp;
GrB_VALUEEQ_BOOL_: GrB_IndexUnaryOp;
GrB_VALUEEQ_INT16_: GrB_IndexUnaryOp;
GrB_VALUEEQ_UINT16_: GrB_IndexUnaryOp;
GrB_VALUEEQ_FP64_: GrB_IndexUnaryOp;
GrB_VALUEEQ_INT32_: GrB_IndexUnaryOp;
GrB_VALUEEQ_UINT32_: GrB_IndexUnaryOp;
GxB_VALUEEQ_FC32_: GrB_IndexUnaryOp;
GrB_VALUEEQ_INT64_: GrB_IndexUnaryOp;
GrB_VALUEEQ_UINT64_: GrB_IndexUnaryOp;
GxB_VALUEEQ_FC64_: GrB_IndexUnaryOp;

GrB_VALUENE_INT8_: GrB_IndexUnaryOp;
GrB_VALUENE_UINT8_: GrB_IndexUnaryOp;
GrB_VALUENE_FP32_: GrB_IndexUnaryOp;
GrB_VALUENE_BOOL_: GrB_IndexUnaryOp;
GrB_VALUENE_INT16_: GrB_IndexUnaryOp;
GrB_VALUENE_UINT16_: GrB_IndexUnaryOp;
GrB_VALUENE_FP64_: GrB_IndexUnaryOp;
GrB_VALUENE_INT32_: GrB_IndexUnaryOp;
GrB_VALUENE_UINT32_: GrB_IndexUnaryOp;
GxB_VALUENE_FC32_: GrB_IndexUnaryOp;
GrB_VALUENE_INT64_: GrB_IndexUnaryOp;
GrB_VALUENE_UINT64_: GrB_IndexUnaryOp;
GxB_VALUENE_FC64_: GrB_IndexUnaryOp;

GrB_VALUELT_INT8_: GrB_IndexUnaryOp;
GrB_VALUELT_UINT8_: GrB_IndexUnaryOp;
GrB_VALUELT_FP32_: GrB_IndexUnaryOp;
GrB_VALUELT_BOOL_: GrB_IndexUnaryOp;
GrB_VALUELT_INT16_: GrB_IndexUnaryOp;
GrB_VALUELT_UINT16_: GrB_IndexUnaryOp;
GrB_VALUELT_FP64_: GrB_IndexUnaryOp;
GrB_VALUELT_INT32_: GrB_IndexUnaryOp;
GrB_VALUELT_UINT32_: GrB_IndexUnaryOp;
GrB_VALUELT_INT64_: GrB_IndexUnaryOp;
GrB_VALUELT_UINT64_: GrB_IndexUnaryOp;

GrB_VALUELE_INT8_: GrB_IndexUnaryOp;
GrB_VALUELE_UINT8_: GrB_IndexUnaryOp;
GrB_VALUELE_FP32_: GrB_IndexUnaryOp;
GrB_VALUELE_BOOL_: GrB_IndexUnaryOp;
GrB_VALUELE_INT16_: GrB_IndexUnaryOp;
GrB_VALUELE_UINT16_: GrB_IndexUnaryOp;
GrB_VALUELE_FP64_: GrB_IndexUnaryOp;
GrB_VALUELE_INT32_: GrB_IndexUnaryOp;
GrB_VALUELE_UINT32_: GrB_IndexUnaryOp;
GrB_VALUELE_INT64_: GrB_IndexUnaryOp;
GrB_VALUELE_UINT64_: GrB_IndexUnaryOp;

GrB_VALUEGT_INT8_: GrB_IndexUnaryOp;
GrB_VALUEGT_UINT8_: GrB_IndexUnaryOp;
GrB_VALUEGT_FP32_: GrB_IndexUnaryOp;
GrB_VALUEGT_BOOL_: GrB_IndexUnaryOp;
GrB_VALUEGT_INT16_: GrB_IndexUnaryOp;
GrB_VALUEGT_UINT16_: GrB_IndexUnaryOp;
GrB_VALUEGT_FP64_: GrB_IndexUnaryOp;
GrB_VALUEGT_INT32_: GrB_IndexUnaryOp;
GrB_VALUEGT_UINT32_: GrB_IndexUnaryOp;
GrB_VALUEGT_INT64_: GrB_IndexUnaryOp;
GrB_VALUEGT_UINT64_: GrB_IndexUnaryOp;

GrB_VALUEGE_INT8_: GrB_IndexUnaryOp;
GrB_VALUEGE_UINT8_: GrB_IndexUnaryOp;
GrB_VALUEGE_FP32_: GrB_IndexUnaryOp;
GrB_VALUEGE_BOOL_: GrB_IndexUnaryOp;
GrB_VALUEGE_INT16_: GrB_IndexUnaryOp;
GrB_VALUEGE_UINT16_: GrB_IndexUnaryOp;
GrB_VALUEGE_FP64_: GrB_IndexUnaryOp;
GrB_VALUEGE_INT32_: GrB_IndexUnaryOp;
GrB_VALUEGE_UINT32_: GrB_IndexUnaryOp;
GrB_VALUEGE_INT64_: GrB_IndexUnaryOp;
GrB_VALUEGE_UINT64_: GrB_IndexUnaryOp;

GB_Monoid_opaque :: struct {}
GrB_Monoid :: *GB_Monoid_opaque;

GrB_Monoid_new_BOOL :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: bool) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_INT8 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: int8_t) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_UINT8 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: uint8_t) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_INT16 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: int16_t) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_UINT16 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: uint16_t) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_INT32 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: int32_t) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_UINT32 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: uint32_t) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_INT64 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: int64_t) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_UINT64 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: uint64_t) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_FP32 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: float) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_FP64 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: float64) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_new_UDT :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: *void) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_BOOL :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: bool, terminal: bool) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_INT8 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: int8_t, terminal: int8_t) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_UINT8 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: uint8_t, terminal: uint8_t) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_INT16 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: int16_t, terminal: int16_t) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_UINT16 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: uint16_t, terminal: uint16_t) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_INT32 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: int32_t, terminal: int32_t) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_UINT32 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: uint32_t, terminal: uint32_t) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_INT64 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: int64_t, terminal: int64_t) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_UINT64 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: uint64_t, terminal: uint64_t) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_FP32 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: float, terminal: float) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_FP64 :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: float64, terminal: float64) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal_new_UDT :: (monoid: *GrB_Monoid, op: GrB_BinaryOp, identity: *void, terminal: *void) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_operator :: (op: *GrB_BinaryOp, monoid: GrB_Monoid) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_identity :: (identity: *void, monoid: GrB_Monoid) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_terminal :: (has_terminal: *bool, terminal: *void, monoid: GrB_Monoid) -> GrB_Info #foreign libgraphblas;

GrB_Monoid_free :: (monoid: *GrB_Monoid) -> GrB_Info #foreign libgraphblas;

GB_Semiring_opaque :: struct {}
GrB_Semiring :: *GB_Semiring_opaque;

GrB_Semiring_new :: (semiring: *GrB_Semiring, add: GrB_Monoid, multiply: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GxB_Semiring_add :: (add: *GrB_Monoid, semiring: GrB_Semiring) -> GrB_Info #foreign libgraphblas;

GxB_Semiring_multiply :: (multiply: *GrB_BinaryOp, semiring: GrB_Semiring) -> GrB_Info #foreign libgraphblas;

GrB_Semiring_free :: (semiring: *GrB_Semiring) -> GrB_Info #foreign libgraphblas;

GB_Scalar_opaque :: struct {}
GxB_Scalar :: *GB_Scalar_opaque;
GrB_Scalar :: *GB_Scalar_opaque;

GrB_Scalar_new :: (s: *GrB_Scalar, type: GrB_Type) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_dup :: (s: *GrB_Scalar, t: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_clear :: (s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_nvals :: (nvals: *GrB_Index, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_type :: (type: *GrB_Type, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_type_name :: (type_name: *u8, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_memoryUsage :: (size: *size_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_free :: (s: *GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_new :: (s: *GrB_Scalar, type: GrB_Type) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_dup :: (s: *GrB_Scalar, t: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_clear :: (s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_nvals :: (nvals: *GrB_Index, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_free :: (s: *GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_BOOL :: (s: GrB_Scalar, x: bool) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_INT8 :: (s: GrB_Scalar, x: int8_t) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_UINT8 :: (s: GrB_Scalar, x: uint8_t) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_INT16 :: (s: GrB_Scalar, x: int16_t) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_UINT16 :: (s: GrB_Scalar, x: uint16_t) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_INT32 :: (s: GrB_Scalar, x: int32_t) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_UINT32 :: (s: GrB_Scalar, x: uint32_t) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_INT64 :: (s: GrB_Scalar, x: int64_t) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_UINT64 :: (s: GrB_Scalar, x: uint64_t) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_FP32 :: (s: GrB_Scalar, x: float) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_FP64 :: (s: GrB_Scalar, x: float64) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_setElement_UDT :: (s: GrB_Scalar, x: *void) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_setElement_BOOL :: (s: GrB_Scalar, x: bool) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_INT8 :: (s: GrB_Scalar, x: int8_t) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_INT16 :: (s: GrB_Scalar, x: int16_t) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_INT32 :: (s: GrB_Scalar, x: int32_t) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_INT64 :: (s: GrB_Scalar, x: int64_t) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_UINT8 :: (s: GrB_Scalar, x: uint8_t) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_UINT16 :: (s: GrB_Scalar, x: uint16_t) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_UINT32 :: (s: GrB_Scalar, x: uint32_t) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_UINT64 :: (s: GrB_Scalar, x: uint64_t) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_FP32 :: (s: GrB_Scalar, x: float) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_FP64 :: (s: GrB_Scalar, x: float64) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_setElement_UDT :: (s: GrB_Scalar, x: *void) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_BOOL :: (x: *bool, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_INT8 :: (x: *int8_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_UINT8 :: (x: *uint8_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_INT16 :: (x: *int16_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_UINT16 :: (x: *uint16_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_INT32 :: (x: *int32_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_UINT32 :: (x: *uint32_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_INT64 :: (x: *int64_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_UINT64 :: (x: *uint64_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_FP32 :: (x: *float, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_FP64 :: (x: *float64, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Scalar_extractElement_UDT :: (x: *void, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_extractElement_BOOL :: (x: *bool, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_INT8 :: (x: *int8_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_INT16 :: (x: *int16_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_INT32 :: (x: *int32_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_INT64 :: (x: *int64_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_UINT8 :: (x: *uint8_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_UINT16 :: (x: *uint16_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_UINT32 :: (x: *uint32_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_UINT64 :: (x: *uint64_t, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_FP32 :: (x: *float, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_FP64 :: (x: *float64, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GxB_Scalar_extractElement_UDT :: (x: *void, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GB_Vector_opaque :: struct {}
GrB_Vector :: *GB_Vector_opaque;

GrB_Vector_new :: (v: *GrB_Vector, type: GrB_Type, n: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_dup :: (w: *GrB_Vector, u: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_clear :: (v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_size :: (n: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_nvals :: (nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GxB_Vector_type :: (type: *GrB_Type, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GxB_Vector_type_name :: (type_name: *u8, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GxB_Vector_memoryUsage :: (size: *size_t, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GxB_Vector_iso :: (iso: *bool, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_free :: (v: *GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_BOOL :: (w: GrB_Vector, I: *GrB_Index, X: *bool, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_INT8 :: (w: GrB_Vector, I: *GrB_Index, X: *int8_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_UINT8 :: (w: GrB_Vector, I: *GrB_Index, X: *uint8_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_INT16 :: (w: GrB_Vector, I: *GrB_Index, X: *int16_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_UINT16 :: (w: GrB_Vector, I: *GrB_Index, X: *uint16_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_INT32 :: (w: GrB_Vector, I: *GrB_Index, X: *int32_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_UINT32 :: (w: GrB_Vector, I: *GrB_Index, X: *uint32_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_INT64 :: (w: GrB_Vector, I: *GrB_Index, X: *int64_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_UINT64 :: (w: GrB_Vector, I: *GrB_Index, X: *uint64_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_FP32 :: (w: GrB_Vector, I: *GrB_Index, X: *float, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_FP64 :: (w: GrB_Vector, I: *GrB_Index, X: *float64, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Vector_build_UDT :: (w: GrB_Vector, I: *GrB_Index, X: *void, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GxB_Vector_build_Scalar :: (w: GrB_Vector, I: *GrB_Index, scalar: GrB_Scalar, nvals: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_BOOL :: (w: GrB_Vector, x: bool, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_INT8 :: (w: GrB_Vector, x: int8_t, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_UINT8 :: (w: GrB_Vector, x: uint8_t, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_INT16 :: (w: GrB_Vector, x: int16_t, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_UINT16 :: (w: GrB_Vector, x: uint16_t, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_INT32 :: (w: GrB_Vector, x: int32_t, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_UINT32 :: (w: GrB_Vector, x: uint32_t, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_INT64 :: (w: GrB_Vector, x: int64_t, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_UINT64 :: (w: GrB_Vector, x: uint64_t, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_FP32 :: (w: GrB_Vector, x: float, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_FP64 :: (w: GrB_Vector, x: float64, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_UDT :: (w: GrB_Vector, x: *void, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_setElement_Scalar :: (w: GrB_Vector, x: GrB_Scalar, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_BOOL :: (x: *bool, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_INT8 :: (x: *int8_t, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_UINT8 :: (x: *uint8_t, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_INT16 :: (x: *int16_t, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_UINT16 :: (x: *uint16_t, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_INT32 :: (x: *int32_t, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_UINT32 :: (x: *uint32_t, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_INT64 :: (x: *int64_t, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_UINT64 :: (x: *uint64_t, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_FP32 :: (x: *float, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_FP64 :: (x: *float64, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_UDT :: (x: *void, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractElement_Scalar :: (x: GrB_Scalar, v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_removeElement :: (v: GrB_Vector, i: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_BOOL :: (I: *GrB_Index, X: *bool, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_INT8 :: (I: *GrB_Index, X: *int8_t, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_UINT8 :: (I: *GrB_Index, X: *uint8_t, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_INT16 :: (I: *GrB_Index, X: *int16_t, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_UINT16 :: (I: *GrB_Index, X: *uint16_t, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_INT32 :: (I: *GrB_Index, X: *int32_t, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_UINT32 :: (I: *GrB_Index, X: *uint32_t, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_INT64 :: (I: *GrB_Index, X: *int64_t, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_UINT64 :: (I: *GrB_Index, X: *uint64_t, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_FP32 :: (I: *GrB_Index, X: *float, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_FP64 :: (I: *GrB_Index, X: *float64, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GrB_Vector_extractTuples_UDT :: (I: *GrB_Index, X: *void, nvals: *GrB_Index, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;

GB_Matrix_opaque :: struct {}
GrB_Matrix :: *GB_Matrix_opaque;

GrB_Matrix_new :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_dup :: (C: *GrB_Matrix, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_clear :: (A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_nrows :: (nrows: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_ncols :: (ncols: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_nvals :: (nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_type :: (type: *GrB_Type, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_type_name :: (type_name: *u8, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_memoryUsage :: (size: *size_t, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_iso :: (iso: *bool, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_free :: (A: *GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_BOOL :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *bool, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_INT8 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *int8_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_UINT8 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *uint8_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_INT16 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *int16_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_UINT16 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *uint16_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_INT32 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *int32_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_UINT32 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *uint32_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_INT64 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *int64_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_UINT64 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *uint64_t, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_FP32 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *float, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_FP64 :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *float64, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_build_UDT :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, X: *void, nvals: GrB_Index, dup: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_build_Scalar :: (C: GrB_Matrix, I: *GrB_Index, J: *GrB_Index, scalar: GrB_Scalar, nvals: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_BOOL :: (C: GrB_Matrix, x: bool, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_INT8 :: (C: GrB_Matrix, x: int8_t, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_UINT8 :: (C: GrB_Matrix, x: uint8_t, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_INT16 :: (C: GrB_Matrix, x: int16_t, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_UINT16 :: (C: GrB_Matrix, x: uint16_t, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_INT32 :: (C: GrB_Matrix, x: int32_t, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_UINT32 :: (C: GrB_Matrix, x: uint32_t, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_INT64 :: (C: GrB_Matrix, x: int64_t, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_UINT64 :: (C: GrB_Matrix, x: uint64_t, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_FP32 :: (C: GrB_Matrix, x: float, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_FP64 :: (C: GrB_Matrix, x: float64, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_UDT :: (C: GrB_Matrix, x: *void, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_setElement_Scalar :: (C: GrB_Matrix, x: GrB_Scalar, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_BOOL :: (x: *bool, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_INT8 :: (x: *int8_t, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_UINT8 :: (x: *uint8_t, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_INT16 :: (x: *int16_t, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_UINT16 :: (x: *uint16_t, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_INT32 :: (x: *int32_t, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_UINT32 :: (x: *uint32_t, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_INT64 :: (x: *int64_t, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_UINT64 :: (x: *uint64_t, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_FP32 :: (x: *float, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_FP64 :: (x: *float64, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_UDT :: (x: *void, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractElement_Scalar :: (x: GrB_Scalar, A: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_removeElement :: (C: GrB_Matrix, i: GrB_Index, j: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_BOOL :: (I: *GrB_Index, J: *GrB_Index, X: *bool, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_INT8 :: (I: *GrB_Index, J: *GrB_Index, X: *int8_t, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_UINT8 :: (I: *GrB_Index, J: *GrB_Index, X: *uint8_t, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_INT16 :: (I: *GrB_Index, J: *GrB_Index, X: *int16_t, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_UINT16 :: (I: *GrB_Index, J: *GrB_Index, X: *uint16_t, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_INT32 :: (I: *GrB_Index, J: *GrB_Index, X: *int32_t, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_UINT32 :: (I: *GrB_Index, J: *GrB_Index, X: *uint32_t, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_INT64 :: (I: *GrB_Index, J: *GrB_Index, X: *int64_t, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_UINT64 :: (I: *GrB_Index, J: *GrB_Index, X: *uint64_t, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_FP32 :: (I: *GrB_Index, J: *GrB_Index, X: *float, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_FP64 :: (I: *GrB_Index, J: *GrB_Index, X: *float64, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extractTuples_UDT :: (I: *GrB_Index, J: *GrB_Index, X: *void, nvals: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_concat :: (C: GrB_Matrix, Tiles: *GrB_Matrix, m: GrB_Index, n: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_split :: (Tiles: *GrB_Matrix, m: GrB_Index, n: GrB_Index, Tile_nrows: *GrB_Index, Tile_ncols: *GrB_Index, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_diag :: (C: GrB_Matrix, v: GrB_Vector, k: int64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_diag :: (C: GrB_Matrix, v: GrB_Vector, k: int64_t) -> GrB_Info #foreign libgraphblas;

GxB_Vector_diag :: (v: GrB_Vector, A: GrB_Matrix, k: int64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

anon_enum_4 :: enum u32 {
    GxB_HYPER_SWITCH         :: 0;
    GxB_BITMAP_SWITCH        :: 34;
    GxB_FORMAT               :: 1;

    GxB_MODE                 :: 2;
    GxB_LIBRARY_NAME         :: 8;
    GxB_LIBRARY_VERSION      :: 9;
    GxB_LIBRARY_DATE         :: 10;
    GxB_LIBRARY_ABOUT        :: 11;
    GxB_LIBRARY_URL          :: 12;
    GxB_LIBRARY_LICENSE      :: 13;
    GxB_LIBRARY_COMPILE_DATE :: 14;
    GxB_LIBRARY_COMPILE_TIME :: 15;
    GxB_API_VERSION          :: 16;
    GxB_API_DATE             :: 17;
    GxB_API_ABOUT            :: 18;
    GxB_API_URL              :: 19;

    GxB_GLOBAL_NTHREADS      :: 5;

    GxB_GLOBAL_CHUNK         :: 7;

    GxB_BURBLE               :: 99;
    GxB_PRINTF               :: 101;
    GxB_FLUSH                :: 102;
    GxB_MEMORY_POOL          :: 103;
    GxB_PRINT_1BASED         :: 104;

    GxB_SPARSITY_STATUS      :: 33;
    GxB_IS_HYPER             :: 6;

    GxB_SPARSITY_CONTROL     :: 32;

    GxB_GLOBAL_GPU_CONTROL   :: 21;
    GxB_GLOBAL_GPU_CHUNK     :: 22;
}

GxB_Option_Field :: anon_enum_4;

anon_enum_5 :: enum s32 {
    GxB_BY_ROW    :: 0;
    GxB_BY_COL    :: 1;
    GxB_NO_FORMAT :: -1;
}

GxB_Format_Value :: anon_enum_5;

GxB_FORMAT_DEFAULT_: GxB_Format_Value;

GxB_HYPER_DEFAULT_: float64;

GxB_ALWAYS_HYPER_: float64;
GxB_NEVER_HYPER_: float64;

GxB_Matrix_Option_set :: (A: GrB_Matrix, field: GxB_Option_Field, __args: ..Any) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_Option_get :: (A: GrB_Matrix, field: GxB_Option_Field, __args: ..Any) -> GrB_Info #foreign libgraphblas;

GxB_Vector_Option_set :: (A: GrB_Vector, field: GxB_Option_Field, __args: ..Any) -> GrB_Info #foreign libgraphblas;

GxB_Vector_Option_get :: (A: GrB_Vector, field: GxB_Option_Field, __args: ..Any) -> GrB_Info #foreign libgraphblas;

GxB_Global_Option_set :: (field: GxB_Option_Field, __args: ..Any) -> GrB_Info #foreign libgraphblas;

GxB_Global_Option_get :: (field: GxB_Option_Field, __args: ..Any) -> GrB_Info #foreign libgraphblas;

anon_enum_6 :: enum u32 {
    GrB_COMPLETE    :: 0;
    GrB_MATERIALIZE :: 1;
}

GrB_WaitMode :: anon_enum_6;

GrB_Type_wait :: (type: GrB_Type, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_UnaryOp_wait :: (op: GrB_UnaryOp, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_BinaryOp_wait :: (op: GrB_BinaryOp, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GxB_SelectOp_wait :: (op: GxB_SelectOp, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_IndexUnaryOp_wait :: (op: GrB_IndexUnaryOp, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_Monoid_wait :: (monoid: GrB_Monoid, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_Semiring_wait :: (semiring: GrB_Semiring, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_Descriptor_wait :: (desc: GrB_Descriptor, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_Scalar_wait :: (s: GrB_Scalar, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_Vector_wait :: (v: GrB_Vector, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;
GrB_Matrix_wait :: (A: GrB_Matrix, waitmode: GrB_WaitMode) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_wait :: (s: *GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_Type_error :: (error: **u8, type: GrB_Type) -> GrB_Info #foreign libgraphblas;
GrB_UnaryOp_error :: (error: **u8, op: GrB_UnaryOp) -> GrB_Info #foreign libgraphblas;
GrB_BinaryOp_error :: (error: **u8, op: GrB_BinaryOp) -> GrB_Info #foreign libgraphblas;
GxB_SelectOp_error :: (error: **u8, op: GxB_SelectOp) -> GrB_Info #foreign libgraphblas;
GrB_IndexUnaryOp_error :: (error: **u8, op: GrB_IndexUnaryOp) -> GrB_Info #foreign libgraphblas;
GrB_Monoid_error :: (error: **u8, monoid: GrB_Monoid) -> GrB_Info #foreign libgraphblas;
GrB_Semiring_error :: (error: **u8, semiring: GrB_Semiring) -> GrB_Info #foreign libgraphblas;
GrB_Scalar_error :: (error: **u8, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;
GrB_Vector_error :: (error: **u8, v: GrB_Vector) -> GrB_Info #foreign libgraphblas;
GrB_Matrix_error :: (error: **u8, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;
GrB_Descriptor_error :: (error: **u8, d: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_error :: (error: **u8, s: GrB_Scalar) -> GrB_Info #foreign libgraphblas;

GrB_mxm :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, semiring: GrB_Semiring, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_vxm :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, semiring: GrB_Semiring, u: GrB_Vector, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_mxv :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, semiring: GrB_Semiring, A: GrB_Matrix, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_eWiseMult_Semiring :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, semiring: GrB_Semiring, u: GrB_Vector, v: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_eWiseMult_Monoid :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, v: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_eWiseMult_BinaryOp :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, mult: GrB_BinaryOp, u: GrB_Vector, v: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_eWiseMult_Semiring :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, semiring: GrB_Semiring, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_eWiseMult_Monoid :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_eWiseMult_BinaryOp :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, mult: GrB_BinaryOp, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_eWiseAdd_Semiring :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, semiring: GrB_Semiring, u: GrB_Vector, v: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_eWiseAdd_Monoid :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, v: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_eWiseAdd_BinaryOp :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, add: GrB_BinaryOp, u: GrB_Vector, v: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_eWiseAdd_Semiring :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, semiring: GrB_Semiring, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_eWiseAdd_Monoid :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_eWiseAdd_BinaryOp :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, add: GrB_BinaryOp, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_eWiseUnion :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, add: GrB_BinaryOp, u: GrB_Vector, alpha: GrB_Scalar, v: GrB_Vector, beta: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_eWiseUnion :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, add: GrB_BinaryOp, A: GrB_Matrix, alpha: GrB_Scalar, B: GrB_Matrix, beta: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_ALL_: *uint64_t;

GrB_Vector_extract :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, u: GrB_Vector, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_extract :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, A: GrB_Matrix, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Col_extract :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, A: GrB_Matrix, I: *GrB_Index, ni: GrB_Index, j: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, u: GrB_Vector, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, A: GrB_Matrix, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Col_subassign :: (C: GrB_Matrix, mask: GrB_Vector, accum: GrB_BinaryOp, u: GrB_Vector, I: *GrB_Index, ni: GrB_Index, j: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Row_subassign :: (C: GrB_Matrix, mask: GrB_Vector, accum: GrB_BinaryOp, u: GrB_Vector, i: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_BOOL :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: bool, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_INT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: int8_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_UINT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: uint8_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_INT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: int16_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_UINT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: uint16_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_INT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: int32_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_UINT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: uint32_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_INT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: int64_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_UINT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: uint64_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_FP32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: float, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_FP64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: float64, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_UDT :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: *void, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_subassign_Scalar :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: GrB_Scalar, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_BOOL :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: bool, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_INT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: int8_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_UINT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: uint8_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_INT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: int16_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_UINT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: uint16_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_INT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: int32_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_UINT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: uint32_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_INT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: int64_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_UINT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: uint64_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_FP32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: float, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_FP64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: float64, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_UDT :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: *void, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_subassign_Scalar :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: GrB_Scalar, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, u: GrB_Vector, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, A: GrB_Matrix, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Col_assign :: (C: GrB_Matrix, mask: GrB_Vector, accum: GrB_BinaryOp, u: GrB_Vector, I: *GrB_Index, ni: GrB_Index, j: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Row_assign :: (C: GrB_Matrix, mask: GrB_Vector, accum: GrB_BinaryOp, u: GrB_Vector, i: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_BOOL :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: bool, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_INT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: int8_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_UINT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: uint8_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_INT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: int16_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_UINT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: uint16_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_INT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: int32_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_UINT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: uint32_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_INT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: int64_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_UINT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: uint64_t, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_FP32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: float, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_FP64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: float64, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_UDT :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: *void, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_assign_Scalar :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, x: GrB_Scalar, I: *GrB_Index, ni: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_BOOL :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: bool, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_INT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: int8_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_UINT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: uint8_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_INT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: int16_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_UINT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: uint16_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_INT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: int32_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_UINT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: uint32_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_INT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: int64_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_UINT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: uint64_t, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_FP32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: float, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_FP64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: float64, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_UDT :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: *void, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_assign_Scalar :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, x: GrB_Scalar, I: *GrB_Index, ni: GrB_Index, J: *GrB_Index, nj: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_UnaryOp, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_UnaryOp, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_Scalar :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: GrB_Scalar, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_apply_BinaryOp1st :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: GrB_Scalar, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_BOOL :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: bool, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_INT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: int8_t, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_INT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: int16_t, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_INT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: int32_t, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_INT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: int64_t, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_UINT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: uint8_t, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_UINT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: uint16_t, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_UINT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: uint32_t, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_UINT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: uint64_t, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_FP32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: float, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_FP64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: float64, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp1st_UDT :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: *void, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_Scalar :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_apply_BinaryOp2nd :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_BOOL :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_INT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: int8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_INT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: int16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_INT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: int32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_INT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: int64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_UINT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: uint8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_UINT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: uint16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_UINT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: uint32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_UINT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: uint64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_FP32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: float, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_FP64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: float64, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_BinaryOp2nd_UDT :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, y: *void, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_Scalar :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_BOOL :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_INT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: int8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_INT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: int16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_INT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: int32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_INT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: int64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_UINT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: uint8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_UINT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: uint16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_UINT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: uint32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_UINT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: uint64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_FP32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: float, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_FP64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: float64, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_apply_IndexOp_UDT :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: *void, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_Scalar :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: GrB_Scalar, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_apply_BinaryOp1st :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: GrB_Scalar, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_BOOL :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: bool, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_INT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: int8_t, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_INT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: int16_t, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_INT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: int32_t, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_INT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: int64_t, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_UINT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: uint8_t, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_UINT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: uint16_t, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_UINT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: uint32_t, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_UINT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: uint64_t, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_FP32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: float, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_FP64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: float64, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp1st_UDT :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, x: *void, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_Scalar :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_apply_BinaryOp2nd :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_BOOL :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_INT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: int8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_INT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: int16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_INT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: int32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_INT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: int64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_UINT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: uint8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_UINT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: uint16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_UINT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: uint32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_UINT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: uint64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_FP32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: float, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_FP64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: float64, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_BinaryOp2nd_UDT :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, y: *void, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_Scalar :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_BOOL :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_INT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: int8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_INT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: int16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_INT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: int32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_INT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: int64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_UINT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: uint8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_UINT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: uint16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_UINT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: uint32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_UINT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: uint64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_FP32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: float, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_FP64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: float64, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_apply_IndexOp_UDT :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: *void, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_Scalar :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_BOOL :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_INT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: int8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_INT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: int16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_INT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: int32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_INT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: int64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_UINT8 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: uint8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_UINT16 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: uint16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_UINT32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: uint32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_UINT64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: uint64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_FP32 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: float, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_FP64 :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: float64, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_select_UDT :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, u: GrB_Vector, y: *void, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_Scalar :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_BOOL :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_INT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: int8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_INT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: int16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_INT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: int32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_INT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: int64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_UINT8 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: uint8_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_UINT16 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: uint16_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_UINT32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: uint32_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_UINT64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: uint64_t, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_FP32 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: float, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_FP64 :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: float64, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_select_UDT :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_IndexUnaryOp, A: GrB_Matrix, y: *void, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_select :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GxB_SelectOp, u: GrB_Vector, Thunk: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_select :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GxB_SelectOp, A: GrB_Matrix, Thunk: GrB_Scalar, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_Monoid :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_BinaryOp :: (w: GrB_Vector, mask: GrB_Vector, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_BOOL :: (c: *bool, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_INT8 :: (c: *int8_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_UINT8 :: (c: *uint8_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_INT16 :: (c: *int16_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_UINT16 :: (c: *uint16_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_INT32 :: (c: *int32_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_UINT32 :: (c: *uint32_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_INT64 :: (c: *int64_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_UINT64 :: (c: *uint64_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_FP32 :: (c: *float, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_FP64 :: (c: *float64, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_UDT :: (c: *void, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_Monoid_Scalar :: (c: GrB_Scalar, accum: GrB_BinaryOp, monoid: GrB_Monoid, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Vector_reduce_BinaryOp_Scalar :: (c: GrB_Scalar, accum: GrB_BinaryOp, op: GrB_BinaryOp, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_BOOL :: (c: *bool, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_INT8 :: (c: *int8_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_UINT8 :: (c: *uint8_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_INT16 :: (c: *int16_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_UINT16 :: (c: *uint16_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_INT32 :: (c: *int32_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_UINT32 :: (c: *uint32_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_INT64 :: (c: *int64_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_UINT64 :: (c: *uint64_t, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_FP32 :: (c: *float, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_FP64 :: (c: *float64, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_UDT :: (c: *void, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_Monoid_Scalar :: (c: GrB_Scalar, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_reduce_BinaryOp_Scalar :: (S: GrB_Scalar, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_transpose :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_kron :: (C: GrB_Matrix, Mask: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_kronecker_BinaryOp :: (C: GrB_Matrix, M: GrB_Matrix, accum: GrB_BinaryOp, op: GrB_BinaryOp, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_kronecker_Monoid :: (C: GrB_Matrix, M: GrB_Matrix, accum: GrB_BinaryOp, monoid: GrB_Monoid, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_kronecker_Semiring :: (C: GrB_Matrix, M: GrB_Matrix, accum: GrB_BinaryOp, semiring: GrB_Semiring, A: GrB_Matrix, B: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_MIN_INT8_MONOID_: GrB_Monoid;
GxB_MIN_INT16_MONOID_: GrB_Monoid;
GxB_MIN_INT32_MONOID_: GrB_Monoid;
GxB_MIN_INT64_MONOID_: GrB_Monoid;
GxB_MIN_UINT8_MONOID_: GrB_Monoid;
GxB_MIN_UINT16_MONOID_: GrB_Monoid;
GxB_MIN_UINT32_MONOID_: GrB_Monoid;
GxB_MIN_UINT64_MONOID_: GrB_Monoid;
GxB_MIN_FP32_MONOID_: GrB_Monoid;
GxB_MIN_FP64_MONOID_: GrB_Monoid;

GrB_MIN_MONOID_INT8_: GrB_Monoid;
GrB_MIN_MONOID_INT16_: GrB_Monoid;
GrB_MIN_MONOID_INT32_: GrB_Monoid;
GrB_MIN_MONOID_INT64_: GrB_Monoid;
GrB_MIN_MONOID_UINT8_: GrB_Monoid;
GrB_MIN_MONOID_UINT16_: GrB_Monoid;
GrB_MIN_MONOID_UINT32_: GrB_Monoid;
GrB_MIN_MONOID_UINT64_: GrB_Monoid;
GrB_MIN_MONOID_FP32_: GrB_Monoid;
GrB_MIN_MONOID_FP64_: GrB_Monoid;

GxB_MAX_INT8_MONOID_: GrB_Monoid;
GxB_MAX_INT16_MONOID_: GrB_Monoid;
GxB_MAX_INT32_MONOID_: GrB_Monoid;
GxB_MAX_INT64_MONOID_: GrB_Monoid;
GxB_MAX_UINT8_MONOID_: GrB_Monoid;
GxB_MAX_UINT16_MONOID_: GrB_Monoid;
GxB_MAX_UINT32_MONOID_: GrB_Monoid;
GxB_MAX_UINT64_MONOID_: GrB_Monoid;
GxB_MAX_FP32_MONOID_: GrB_Monoid;
GxB_MAX_FP64_MONOID_: GrB_Monoid;

GrB_MAX_MONOID_INT8_: GrB_Monoid;
GrB_MAX_MONOID_INT16_: GrB_Monoid;
GrB_MAX_MONOID_INT32_: GrB_Monoid;
GrB_MAX_MONOID_INT64_: GrB_Monoid;
GrB_MAX_MONOID_UINT8_: GrB_Monoid;
GrB_MAX_MONOID_UINT16_: GrB_Monoid;
GrB_MAX_MONOID_UINT32_: GrB_Monoid;
GrB_MAX_MONOID_UINT64_: GrB_Monoid;
GrB_MAX_MONOID_FP32_: GrB_Monoid;
GrB_MAX_MONOID_FP64_: GrB_Monoid;

GxB_PLUS_INT8_MONOID_: GrB_Monoid;
GxB_PLUS_INT16_MONOID_: GrB_Monoid;
GxB_PLUS_INT32_MONOID_: GrB_Monoid;
GxB_PLUS_INT64_MONOID_: GrB_Monoid;
GxB_PLUS_UINT8_MONOID_: GrB_Monoid;
GxB_PLUS_UINT16_MONOID_: GrB_Monoid;
GxB_PLUS_UINT32_MONOID_: GrB_Monoid;
GxB_PLUS_UINT64_MONOID_: GrB_Monoid;
GxB_PLUS_FP32_MONOID_: GrB_Monoid;
GxB_PLUS_FP64_MONOID_: GrB_Monoid;

GrB_PLUS_MONOID_INT8_: GrB_Monoid;
GrB_PLUS_MONOID_INT16_: GrB_Monoid;
GrB_PLUS_MONOID_INT32_: GrB_Monoid;
GrB_PLUS_MONOID_INT64_: GrB_Monoid;
GrB_PLUS_MONOID_UINT8_: GrB_Monoid;
GrB_PLUS_MONOID_UINT16_: GrB_Monoid;
GrB_PLUS_MONOID_UINT32_: GrB_Monoid;
GrB_PLUS_MONOID_UINT64_: GrB_Monoid;
GrB_PLUS_MONOID_FP32_: GrB_Monoid;
GrB_PLUS_MONOID_FP64_: GrB_Monoid;

GxB_PLUS_FC32_MONOID_: GrB_Monoid;
GxB_PLUS_FC64_MONOID_: GrB_Monoid;

GxB_TIMES_INT8_MONOID_: GrB_Monoid;
GxB_TIMES_INT16_MONOID_: GrB_Monoid;
GxB_TIMES_INT32_MONOID_: GrB_Monoid;
GxB_TIMES_INT64_MONOID_: GrB_Monoid;
GxB_TIMES_UINT8_MONOID_: GrB_Monoid;
GxB_TIMES_UINT16_MONOID_: GrB_Monoid;
GxB_TIMES_UINT32_MONOID_: GrB_Monoid;
GxB_TIMES_UINT64_MONOID_: GrB_Monoid;
GxB_TIMES_FP32_MONOID_: GrB_Monoid;
GxB_TIMES_FP64_MONOID_: GrB_Monoid;

GrB_TIMES_MONOID_INT8_: GrB_Monoid;
GrB_TIMES_MONOID_INT16_: GrB_Monoid;
GrB_TIMES_MONOID_INT32_: GrB_Monoid;
GrB_TIMES_MONOID_INT64_: GrB_Monoid;
GrB_TIMES_MONOID_UINT8_: GrB_Monoid;
GrB_TIMES_MONOID_UINT16_: GrB_Monoid;
GrB_TIMES_MONOID_UINT32_: GrB_Monoid;
GrB_TIMES_MONOID_UINT64_: GrB_Monoid;
GrB_TIMES_MONOID_FP32_: GrB_Monoid;
GrB_TIMES_MONOID_FP64_: GrB_Monoid;

GxB_TIMES_FC32_MONOID_: GrB_Monoid;
GxB_TIMES_FC64_MONOID_: GrB_Monoid;

GxB_ANY_BOOL_MONOID_: GrB_Monoid;
GxB_ANY_INT8_MONOID_: GrB_Monoid;
GxB_ANY_INT16_MONOID_: GrB_Monoid;
GxB_ANY_INT32_MONOID_: GrB_Monoid;
GxB_ANY_INT64_MONOID_: GrB_Monoid;
GxB_ANY_UINT8_MONOID_: GrB_Monoid;
GxB_ANY_UINT16_MONOID_: GrB_Monoid;
GxB_ANY_UINT32_MONOID_: GrB_Monoid;
GxB_ANY_UINT64_MONOID_: GrB_Monoid;
GxB_ANY_FP32_MONOID_: GrB_Monoid;
GxB_ANY_FP64_MONOID_: GrB_Monoid;
GxB_ANY_FC32_MONOID_: GrB_Monoid;
GxB_ANY_FC64_MONOID_: GrB_Monoid;

GxB_LOR_BOOL_MONOID_: GrB_Monoid;
GxB_LAND_BOOL_MONOID_: GrB_Monoid;
GxB_LXOR_BOOL_MONOID_: GrB_Monoid;
GxB_LXNOR_BOOL_MONOID_: GrB_Monoid;
GxB_EQ_BOOL_MONOID_: GrB_Monoid;

GrB_LOR_MONOID_BOOL_: GrB_Monoid;
GrB_LAND_MONOID_BOOL_: GrB_Monoid;
GrB_LXOR_MONOID_BOOL_: GrB_Monoid;
GrB_LXNOR_MONOID_BOOL_: GrB_Monoid;

GxB_BOR_UINT8_MONOID_: GrB_Monoid;
GxB_BOR_UINT16_MONOID_: GrB_Monoid;
GxB_BOR_UINT32_MONOID_: GrB_Monoid;
GxB_BOR_UINT64_MONOID_: GrB_Monoid;

GxB_BAND_UINT8_MONOID_: GrB_Monoid;
GxB_BAND_UINT16_MONOID_: GrB_Monoid;
GxB_BAND_UINT32_MONOID_: GrB_Monoid;
GxB_BAND_UINT64_MONOID_: GrB_Monoid;

GxB_BXOR_UINT8_MONOID_: GrB_Monoid;
GxB_BXOR_UINT16_MONOID_: GrB_Monoid;
GxB_BXOR_UINT32_MONOID_: GrB_Monoid;
GxB_BXOR_UINT64_MONOID_: GrB_Monoid;

GxB_BXNOR_UINT8_MONOID_: GrB_Monoid;
GxB_BXNOR_UINT16_MONOID_: GrB_Monoid;
GxB_BXNOR_UINT32_MONOID_: GrB_Monoid;
GxB_BXNOR_UINT64_MONOID_: GrB_Monoid;

GxB_MIN_FIRST_INT8_: GrB_Semiring;
GxB_MAX_FIRST_INT8_: GrB_Semiring;
GxB_PLUS_FIRST_INT8_: GrB_Semiring;
GxB_TIMES_FIRST_INT8_: GrB_Semiring;
GxB_ANY_FIRST_INT8_: GrB_Semiring;
GxB_MIN_FIRST_INT16_: GrB_Semiring;
GxB_MAX_FIRST_INT16_: GrB_Semiring;
GxB_PLUS_FIRST_INT16_: GrB_Semiring;
GxB_TIMES_FIRST_INT16_: GrB_Semiring;
GxB_ANY_FIRST_INT16_: GrB_Semiring;
GxB_MIN_FIRST_INT32_: GrB_Semiring;
GxB_MAX_FIRST_INT32_: GrB_Semiring;
GxB_PLUS_FIRST_INT32_: GrB_Semiring;
GxB_TIMES_FIRST_INT32_: GrB_Semiring;
GxB_ANY_FIRST_INT32_: GrB_Semiring;
GxB_MIN_FIRST_INT64_: GrB_Semiring;
GxB_MAX_FIRST_INT64_: GrB_Semiring;
GxB_PLUS_FIRST_INT64_: GrB_Semiring;
GxB_TIMES_FIRST_INT64_: GrB_Semiring;
GxB_ANY_FIRST_INT64_: GrB_Semiring;
GxB_MIN_FIRST_UINT8_: GrB_Semiring;
GxB_MAX_FIRST_UINT8_: GrB_Semiring;
GxB_PLUS_FIRST_UINT8_: GrB_Semiring;
GxB_TIMES_FIRST_UINT8_: GrB_Semiring;
GxB_ANY_FIRST_UINT8_: GrB_Semiring;
GxB_MIN_FIRST_UINT16_: GrB_Semiring;
GxB_MAX_FIRST_UINT16_: GrB_Semiring;
GxB_PLUS_FIRST_UINT16_: GrB_Semiring;
GxB_TIMES_FIRST_UINT16_: GrB_Semiring;
GxB_ANY_FIRST_UINT16_: GrB_Semiring;
GxB_MIN_FIRST_UINT32_: GrB_Semiring;
GxB_MAX_FIRST_UINT32_: GrB_Semiring;
GxB_PLUS_FIRST_UINT32_: GrB_Semiring;
GxB_TIMES_FIRST_UINT32_: GrB_Semiring;
GxB_ANY_FIRST_UINT32_: GrB_Semiring;
GxB_MIN_FIRST_UINT64_: GrB_Semiring;
GxB_MAX_FIRST_UINT64_: GrB_Semiring;
GxB_PLUS_FIRST_UINT64_: GrB_Semiring;
GxB_TIMES_FIRST_UINT64_: GrB_Semiring;
GxB_ANY_FIRST_UINT64_: GrB_Semiring;
GxB_MIN_FIRST_FP32_: GrB_Semiring;
GxB_MAX_FIRST_FP32_: GrB_Semiring;
GxB_PLUS_FIRST_FP32_: GrB_Semiring;
GxB_TIMES_FIRST_FP32_: GrB_Semiring;
GxB_ANY_FIRST_FP32_: GrB_Semiring;
GxB_MIN_FIRST_FP64_: GrB_Semiring;
GxB_MAX_FIRST_FP64_: GrB_Semiring;
GxB_PLUS_FIRST_FP64_: GrB_Semiring;
GxB_TIMES_FIRST_FP64_: GrB_Semiring;
GxB_ANY_FIRST_FP64_: GrB_Semiring;

GxB_MIN_SECOND_INT8_: GrB_Semiring;
GxB_MAX_SECOND_INT8_: GrB_Semiring;
GxB_PLUS_SECOND_INT8_: GrB_Semiring;
GxB_TIMES_SECOND_INT8_: GrB_Semiring;
GxB_ANY_SECOND_INT8_: GrB_Semiring;
GxB_MIN_SECOND_INT16_: GrB_Semiring;
GxB_MAX_SECOND_INT16_: GrB_Semiring;
GxB_PLUS_SECOND_INT16_: GrB_Semiring;
GxB_TIMES_SECOND_INT16_: GrB_Semiring;
GxB_ANY_SECOND_INT16_: GrB_Semiring;
GxB_MIN_SECOND_INT32_: GrB_Semiring;
GxB_MAX_SECOND_INT32_: GrB_Semiring;
GxB_PLUS_SECOND_INT32_: GrB_Semiring;
GxB_TIMES_SECOND_INT32_: GrB_Semiring;
GxB_ANY_SECOND_INT32_: GrB_Semiring;
GxB_MIN_SECOND_INT64_: GrB_Semiring;
GxB_MAX_SECOND_INT64_: GrB_Semiring;
GxB_PLUS_SECOND_INT64_: GrB_Semiring;
GxB_TIMES_SECOND_INT64_: GrB_Semiring;
GxB_ANY_SECOND_INT64_: GrB_Semiring;
GxB_MIN_SECOND_UINT8_: GrB_Semiring;
GxB_MAX_SECOND_UINT8_: GrB_Semiring;
GxB_PLUS_SECOND_UINT8_: GrB_Semiring;
GxB_TIMES_SECOND_UINT8_: GrB_Semiring;
GxB_ANY_SECOND_UINT8_: GrB_Semiring;
GxB_MIN_SECOND_UINT16_: GrB_Semiring;
GxB_MAX_SECOND_UINT16_: GrB_Semiring;
GxB_PLUS_SECOND_UINT16_: GrB_Semiring;
GxB_TIMES_SECOND_UINT16_: GrB_Semiring;
GxB_ANY_SECOND_UINT16_: GrB_Semiring;
GxB_MIN_SECOND_UINT32_: GrB_Semiring;
GxB_MAX_SECOND_UINT32_: GrB_Semiring;
GxB_PLUS_SECOND_UINT32_: GrB_Semiring;
GxB_TIMES_SECOND_UINT32_: GrB_Semiring;
GxB_ANY_SECOND_UINT32_: GrB_Semiring;
GxB_MIN_SECOND_UINT64_: GrB_Semiring;
GxB_MAX_SECOND_UINT64_: GrB_Semiring;
GxB_PLUS_SECOND_UINT64_: GrB_Semiring;
GxB_TIMES_SECOND_UINT64_: GrB_Semiring;
GxB_ANY_SECOND_UINT64_: GrB_Semiring;
GxB_MIN_SECOND_FP32_: GrB_Semiring;
GxB_MAX_SECOND_FP32_: GrB_Semiring;
GxB_PLUS_SECOND_FP32_: GrB_Semiring;
GxB_TIMES_SECOND_FP32_: GrB_Semiring;
GxB_ANY_SECOND_FP32_: GrB_Semiring;
GxB_MIN_SECOND_FP64_: GrB_Semiring;
GxB_MAX_SECOND_FP64_: GrB_Semiring;
GxB_PLUS_SECOND_FP64_: GrB_Semiring;
GxB_TIMES_SECOND_FP64_: GrB_Semiring;
GxB_ANY_SECOND_FP64_: GrB_Semiring;

GxB_MIN_PAIR_INT8_: GrB_Semiring;
GxB_MAX_PAIR_INT8_: GrB_Semiring;
GxB_PLUS_PAIR_INT8_: GrB_Semiring;
GxB_TIMES_PAIR_INT8_: GrB_Semiring;
GxB_ANY_PAIR_INT8_: GrB_Semiring;
GxB_MIN_PAIR_INT16_: GrB_Semiring;
GxB_MAX_PAIR_INT16_: GrB_Semiring;
GxB_PLUS_PAIR_INT16_: GrB_Semiring;
GxB_TIMES_PAIR_INT16_: GrB_Semiring;
GxB_ANY_PAIR_INT16_: GrB_Semiring;
GxB_MIN_PAIR_INT32_: GrB_Semiring;
GxB_MAX_PAIR_INT32_: GrB_Semiring;
GxB_PLUS_PAIR_INT32_: GrB_Semiring;
GxB_TIMES_PAIR_INT32_: GrB_Semiring;
GxB_ANY_PAIR_INT32_: GrB_Semiring;
GxB_MIN_PAIR_INT64_: GrB_Semiring;
GxB_MAX_PAIR_INT64_: GrB_Semiring;
GxB_PLUS_PAIR_INT64_: GrB_Semiring;
GxB_TIMES_PAIR_INT64_: GrB_Semiring;
GxB_ANY_PAIR_INT64_: GrB_Semiring;
GxB_MIN_PAIR_UINT8_: GrB_Semiring;
GxB_MAX_PAIR_UINT8_: GrB_Semiring;
GxB_PLUS_PAIR_UINT8_: GrB_Semiring;
GxB_TIMES_PAIR_UINT8_: GrB_Semiring;
GxB_ANY_PAIR_UINT8_: GrB_Semiring;
GxB_MIN_PAIR_UINT16_: GrB_Semiring;
GxB_MAX_PAIR_UINT16_: GrB_Semiring;
GxB_PLUS_PAIR_UINT16_: GrB_Semiring;
GxB_TIMES_PAIR_UINT16_: GrB_Semiring;
GxB_ANY_PAIR_UINT16_: GrB_Semiring;
GxB_MIN_PAIR_UINT32_: GrB_Semiring;
GxB_MAX_PAIR_UINT32_: GrB_Semiring;
GxB_PLUS_PAIR_UINT32_: GrB_Semiring;
GxB_TIMES_PAIR_UINT32_: GrB_Semiring;
GxB_ANY_PAIR_UINT32_: GrB_Semiring;
GxB_MIN_PAIR_UINT64_: GrB_Semiring;
GxB_MAX_PAIR_UINT64_: GrB_Semiring;
GxB_PLUS_PAIR_UINT64_: GrB_Semiring;
GxB_TIMES_PAIR_UINT64_: GrB_Semiring;
GxB_ANY_PAIR_UINT64_: GrB_Semiring;
GxB_MIN_PAIR_FP32_: GrB_Semiring;
GxB_MAX_PAIR_FP32_: GrB_Semiring;
GxB_PLUS_PAIR_FP32_: GrB_Semiring;
GxB_TIMES_PAIR_FP32_: GrB_Semiring;
GxB_ANY_PAIR_FP32_: GrB_Semiring;
GxB_MIN_PAIR_FP64_: GrB_Semiring;
GxB_MAX_PAIR_FP64_: GrB_Semiring;
GxB_PLUS_PAIR_FP64_: GrB_Semiring;
GxB_TIMES_PAIR_FP64_: GrB_Semiring;
GxB_ANY_PAIR_FP64_: GrB_Semiring;

GxB_MIN_MIN_INT8_: GrB_Semiring;
GxB_MAX_MIN_INT8_: GrB_Semiring;
GxB_PLUS_MIN_INT8_: GrB_Semiring;
GxB_TIMES_MIN_INT8_: GrB_Semiring;
GxB_ANY_MIN_INT8_: GrB_Semiring;
GxB_MIN_MIN_INT16_: GrB_Semiring;
GxB_MAX_MIN_INT16_: GrB_Semiring;
GxB_PLUS_MIN_INT16_: GrB_Semiring;
GxB_TIMES_MIN_INT16_: GrB_Semiring;
GxB_ANY_MIN_INT16_: GrB_Semiring;
GxB_MIN_MIN_INT32_: GrB_Semiring;
GxB_MAX_MIN_INT32_: GrB_Semiring;
GxB_PLUS_MIN_INT32_: GrB_Semiring;
GxB_TIMES_MIN_INT32_: GrB_Semiring;
GxB_ANY_MIN_INT32_: GrB_Semiring;
GxB_MIN_MIN_INT64_: GrB_Semiring;
GxB_MAX_MIN_INT64_: GrB_Semiring;
GxB_PLUS_MIN_INT64_: GrB_Semiring;
GxB_TIMES_MIN_INT64_: GrB_Semiring;
GxB_ANY_MIN_INT64_: GrB_Semiring;
GxB_MIN_MIN_UINT8_: GrB_Semiring;
GxB_MAX_MIN_UINT8_: GrB_Semiring;
GxB_PLUS_MIN_UINT8_: GrB_Semiring;
GxB_TIMES_MIN_UINT8_: GrB_Semiring;
GxB_ANY_MIN_UINT8_: GrB_Semiring;
GxB_MIN_MIN_UINT16_: GrB_Semiring;
GxB_MAX_MIN_UINT16_: GrB_Semiring;
GxB_PLUS_MIN_UINT16_: GrB_Semiring;
GxB_TIMES_MIN_UINT16_: GrB_Semiring;
GxB_ANY_MIN_UINT16_: GrB_Semiring;
GxB_MIN_MIN_UINT32_: GrB_Semiring;
GxB_MAX_MIN_UINT32_: GrB_Semiring;
GxB_PLUS_MIN_UINT32_: GrB_Semiring;
GxB_TIMES_MIN_UINT32_: GrB_Semiring;
GxB_ANY_MIN_UINT32_: GrB_Semiring;
GxB_MIN_MIN_UINT64_: GrB_Semiring;
GxB_MAX_MIN_UINT64_: GrB_Semiring;
GxB_PLUS_MIN_UINT64_: GrB_Semiring;
GxB_TIMES_MIN_UINT64_: GrB_Semiring;
GxB_ANY_MIN_UINT64_: GrB_Semiring;
GxB_MIN_MIN_FP32_: GrB_Semiring;
GxB_MAX_MIN_FP32_: GrB_Semiring;
GxB_PLUS_MIN_FP32_: GrB_Semiring;
GxB_TIMES_MIN_FP32_: GrB_Semiring;
GxB_ANY_MIN_FP32_: GrB_Semiring;
GxB_MIN_MIN_FP64_: GrB_Semiring;
GxB_MAX_MIN_FP64_: GrB_Semiring;
GxB_PLUS_MIN_FP64_: GrB_Semiring;
GxB_TIMES_MIN_FP64_: GrB_Semiring;
GxB_ANY_MIN_FP64_: GrB_Semiring;

GxB_MIN_MAX_INT8_: GrB_Semiring;
GxB_MAX_MAX_INT8_: GrB_Semiring;
GxB_PLUS_MAX_INT8_: GrB_Semiring;
GxB_TIMES_MAX_INT8_: GrB_Semiring;
GxB_ANY_MAX_INT8_: GrB_Semiring;
GxB_MIN_MAX_INT16_: GrB_Semiring;
GxB_MAX_MAX_INT16_: GrB_Semiring;
GxB_PLUS_MAX_INT16_: GrB_Semiring;
GxB_TIMES_MAX_INT16_: GrB_Semiring;
GxB_ANY_MAX_INT16_: GrB_Semiring;
GxB_MIN_MAX_INT32_: GrB_Semiring;
GxB_MAX_MAX_INT32_: GrB_Semiring;
GxB_PLUS_MAX_INT32_: GrB_Semiring;
GxB_TIMES_MAX_INT32_: GrB_Semiring;
GxB_ANY_MAX_INT32_: GrB_Semiring;
GxB_MIN_MAX_INT64_: GrB_Semiring;
GxB_MAX_MAX_INT64_: GrB_Semiring;
GxB_PLUS_MAX_INT64_: GrB_Semiring;
GxB_TIMES_MAX_INT64_: GrB_Semiring;
GxB_ANY_MAX_INT64_: GrB_Semiring;
GxB_MIN_MAX_UINT8_: GrB_Semiring;
GxB_MAX_MAX_UINT8_: GrB_Semiring;
GxB_PLUS_MAX_UINT8_: GrB_Semiring;
GxB_TIMES_MAX_UINT8_: GrB_Semiring;
GxB_ANY_MAX_UINT8_: GrB_Semiring;
GxB_MIN_MAX_UINT16_: GrB_Semiring;
GxB_MAX_MAX_UINT16_: GrB_Semiring;
GxB_PLUS_MAX_UINT16_: GrB_Semiring;
GxB_TIMES_MAX_UINT16_: GrB_Semiring;
GxB_ANY_MAX_UINT16_: GrB_Semiring;
GxB_MIN_MAX_UINT32_: GrB_Semiring;
GxB_MAX_MAX_UINT32_: GrB_Semiring;
GxB_PLUS_MAX_UINT32_: GrB_Semiring;
GxB_TIMES_MAX_UINT32_: GrB_Semiring;
GxB_ANY_MAX_UINT32_: GrB_Semiring;
GxB_MIN_MAX_UINT64_: GrB_Semiring;
GxB_MAX_MAX_UINT64_: GrB_Semiring;
GxB_PLUS_MAX_UINT64_: GrB_Semiring;
GxB_TIMES_MAX_UINT64_: GrB_Semiring;
GxB_ANY_MAX_UINT64_: GrB_Semiring;
GxB_MIN_MAX_FP32_: GrB_Semiring;
GxB_MAX_MAX_FP32_: GrB_Semiring;
GxB_PLUS_MAX_FP32_: GrB_Semiring;
GxB_TIMES_MAX_FP32_: GrB_Semiring;
GxB_ANY_MAX_FP32_: GrB_Semiring;
GxB_MIN_MAX_FP64_: GrB_Semiring;
GxB_MAX_MAX_FP64_: GrB_Semiring;
GxB_PLUS_MAX_FP64_: GrB_Semiring;
GxB_TIMES_MAX_FP64_: GrB_Semiring;
GxB_ANY_MAX_FP64_: GrB_Semiring;

GxB_MIN_PLUS_INT8_: GrB_Semiring;
GxB_MAX_PLUS_INT8_: GrB_Semiring;
GxB_PLUS_PLUS_INT8_: GrB_Semiring;
GxB_TIMES_PLUS_INT8_: GrB_Semiring;
GxB_ANY_PLUS_INT8_: GrB_Semiring;
GxB_MIN_PLUS_INT16_: GrB_Semiring;
GxB_MAX_PLUS_INT16_: GrB_Semiring;
GxB_PLUS_PLUS_INT16_: GrB_Semiring;
GxB_TIMES_PLUS_INT16_: GrB_Semiring;
GxB_ANY_PLUS_INT16_: GrB_Semiring;
GxB_MIN_PLUS_INT32_: GrB_Semiring;
GxB_MAX_PLUS_INT32_: GrB_Semiring;
GxB_PLUS_PLUS_INT32_: GrB_Semiring;
GxB_TIMES_PLUS_INT32_: GrB_Semiring;
GxB_ANY_PLUS_INT32_: GrB_Semiring;
GxB_MIN_PLUS_INT64_: GrB_Semiring;
GxB_MAX_PLUS_INT64_: GrB_Semiring;
GxB_PLUS_PLUS_INT64_: GrB_Semiring;
GxB_TIMES_PLUS_INT64_: GrB_Semiring;
GxB_ANY_PLUS_INT64_: GrB_Semiring;
GxB_MIN_PLUS_UINT8_: GrB_Semiring;
GxB_MAX_PLUS_UINT8_: GrB_Semiring;
GxB_PLUS_PLUS_UINT8_: GrB_Semiring;
GxB_TIMES_PLUS_UINT8_: GrB_Semiring;
GxB_ANY_PLUS_UINT8_: GrB_Semiring;
GxB_MIN_PLUS_UINT16_: GrB_Semiring;
GxB_MAX_PLUS_UINT16_: GrB_Semiring;
GxB_PLUS_PLUS_UINT16_: GrB_Semiring;
GxB_TIMES_PLUS_UINT16_: GrB_Semiring;
GxB_ANY_PLUS_UINT16_: GrB_Semiring;
GxB_MIN_PLUS_UINT32_: GrB_Semiring;
GxB_MAX_PLUS_UINT32_: GrB_Semiring;
GxB_PLUS_PLUS_UINT32_: GrB_Semiring;
GxB_TIMES_PLUS_UINT32_: GrB_Semiring;
GxB_ANY_PLUS_UINT32_: GrB_Semiring;
GxB_MIN_PLUS_UINT64_: GrB_Semiring;
GxB_MAX_PLUS_UINT64_: GrB_Semiring;
GxB_PLUS_PLUS_UINT64_: GrB_Semiring;
GxB_TIMES_PLUS_UINT64_: GrB_Semiring;
GxB_ANY_PLUS_UINT64_: GrB_Semiring;
GxB_MIN_PLUS_FP32_: GrB_Semiring;
GxB_MAX_PLUS_FP32_: GrB_Semiring;
GxB_PLUS_PLUS_FP32_: GrB_Semiring;
GxB_TIMES_PLUS_FP32_: GrB_Semiring;
GxB_ANY_PLUS_FP32_: GrB_Semiring;
GxB_MIN_PLUS_FP64_: GrB_Semiring;
GxB_MAX_PLUS_FP64_: GrB_Semiring;
GxB_PLUS_PLUS_FP64_: GrB_Semiring;
GxB_TIMES_PLUS_FP64_: GrB_Semiring;
GxB_ANY_PLUS_FP64_: GrB_Semiring;

GxB_MIN_MINUS_INT8_: GrB_Semiring;
GxB_MAX_MINUS_INT8_: GrB_Semiring;
GxB_PLUS_MINUS_INT8_: GrB_Semiring;
GxB_TIMES_MINUS_INT8_: GrB_Semiring;
GxB_ANY_MINUS_INT8_: GrB_Semiring;
GxB_MIN_MINUS_INT16_: GrB_Semiring;
GxB_MAX_MINUS_INT16_: GrB_Semiring;
GxB_PLUS_MINUS_INT16_: GrB_Semiring;
GxB_TIMES_MINUS_INT16_: GrB_Semiring;
GxB_ANY_MINUS_INT16_: GrB_Semiring;
GxB_MIN_MINUS_INT32_: GrB_Semiring;
GxB_MAX_MINUS_INT32_: GrB_Semiring;
GxB_PLUS_MINUS_INT32_: GrB_Semiring;
GxB_TIMES_MINUS_INT32_: GrB_Semiring;
GxB_ANY_MINUS_INT32_: GrB_Semiring;
GxB_MIN_MINUS_INT64_: GrB_Semiring;
GxB_MAX_MINUS_INT64_: GrB_Semiring;
GxB_PLUS_MINUS_INT64_: GrB_Semiring;
GxB_TIMES_MINUS_INT64_: GrB_Semiring;
GxB_ANY_MINUS_INT64_: GrB_Semiring;
GxB_MIN_MINUS_UINT8_: GrB_Semiring;
GxB_MAX_MINUS_UINT8_: GrB_Semiring;
GxB_PLUS_MINUS_UINT8_: GrB_Semiring;
GxB_TIMES_MINUS_UINT8_: GrB_Semiring;
GxB_ANY_MINUS_UINT8_: GrB_Semiring;
GxB_MIN_MINUS_UINT16_: GrB_Semiring;
GxB_MAX_MINUS_UINT16_: GrB_Semiring;
GxB_PLUS_MINUS_UINT16_: GrB_Semiring;
GxB_TIMES_MINUS_UINT16_: GrB_Semiring;
GxB_ANY_MINUS_UINT16_: GrB_Semiring;
GxB_MIN_MINUS_UINT32_: GrB_Semiring;
GxB_MAX_MINUS_UINT32_: GrB_Semiring;
GxB_PLUS_MINUS_UINT32_: GrB_Semiring;
GxB_TIMES_MINUS_UINT32_: GrB_Semiring;
GxB_ANY_MINUS_UINT32_: GrB_Semiring;
GxB_MIN_MINUS_UINT64_: GrB_Semiring;
GxB_MAX_MINUS_UINT64_: GrB_Semiring;
GxB_PLUS_MINUS_UINT64_: GrB_Semiring;
GxB_TIMES_MINUS_UINT64_: GrB_Semiring;
GxB_ANY_MINUS_UINT64_: GrB_Semiring;
GxB_MIN_MINUS_FP32_: GrB_Semiring;
GxB_MAX_MINUS_FP32_: GrB_Semiring;
GxB_PLUS_MINUS_FP32_: GrB_Semiring;
GxB_TIMES_MINUS_FP32_: GrB_Semiring;
GxB_ANY_MINUS_FP32_: GrB_Semiring;
GxB_MIN_MINUS_FP64_: GrB_Semiring;
GxB_MAX_MINUS_FP64_: GrB_Semiring;
GxB_PLUS_MINUS_FP64_: GrB_Semiring;
GxB_TIMES_MINUS_FP64_: GrB_Semiring;
GxB_ANY_MINUS_FP64_: GrB_Semiring;

GxB_MIN_TIMES_INT8_: GrB_Semiring;
GxB_MAX_TIMES_INT8_: GrB_Semiring;
GxB_PLUS_TIMES_INT8_: GrB_Semiring;
GxB_TIMES_TIMES_INT8_: GrB_Semiring;
GxB_ANY_TIMES_INT8_: GrB_Semiring;
GxB_MIN_TIMES_INT16_: GrB_Semiring;
GxB_MAX_TIMES_INT16_: GrB_Semiring;
GxB_PLUS_TIMES_INT16_: GrB_Semiring;
GxB_TIMES_TIMES_INT16_: GrB_Semiring;
GxB_ANY_TIMES_INT16_: GrB_Semiring;
GxB_MIN_TIMES_INT32_: GrB_Semiring;
GxB_MAX_TIMES_INT32_: GrB_Semiring;
GxB_PLUS_TIMES_INT32_: GrB_Semiring;
GxB_TIMES_TIMES_INT32_: GrB_Semiring;
GxB_ANY_TIMES_INT32_: GrB_Semiring;
GxB_MIN_TIMES_INT64_: GrB_Semiring;
GxB_MAX_TIMES_INT64_: GrB_Semiring;
GxB_PLUS_TIMES_INT64_: GrB_Semiring;
GxB_TIMES_TIMES_INT64_: GrB_Semiring;
GxB_ANY_TIMES_INT64_: GrB_Semiring;
GxB_MIN_TIMES_UINT8_: GrB_Semiring;
GxB_MAX_TIMES_UINT8_: GrB_Semiring;
GxB_PLUS_TIMES_UINT8_: GrB_Semiring;
GxB_TIMES_TIMES_UINT8_: GrB_Semiring;
GxB_ANY_TIMES_UINT8_: GrB_Semiring;
GxB_MIN_TIMES_UINT16_: GrB_Semiring;
GxB_MAX_TIMES_UINT16_: GrB_Semiring;
GxB_PLUS_TIMES_UINT16_: GrB_Semiring;
GxB_TIMES_TIMES_UINT16_: GrB_Semiring;
GxB_ANY_TIMES_UINT16_: GrB_Semiring;
GxB_MIN_TIMES_UINT32_: GrB_Semiring;
GxB_MAX_TIMES_UINT32_: GrB_Semiring;
GxB_PLUS_TIMES_UINT32_: GrB_Semiring;
GxB_TIMES_TIMES_UINT32_: GrB_Semiring;
GxB_ANY_TIMES_UINT32_: GrB_Semiring;
GxB_MIN_TIMES_UINT64_: GrB_Semiring;
GxB_MAX_TIMES_UINT64_: GrB_Semiring;
GxB_PLUS_TIMES_UINT64_: GrB_Semiring;
GxB_TIMES_TIMES_UINT64_: GrB_Semiring;
GxB_ANY_TIMES_UINT64_: GrB_Semiring;
GxB_MIN_TIMES_FP32_: GrB_Semiring;
GxB_MAX_TIMES_FP32_: GrB_Semiring;
GxB_PLUS_TIMES_FP32_: GrB_Semiring;
GxB_TIMES_TIMES_FP32_: GrB_Semiring;
GxB_ANY_TIMES_FP32_: GrB_Semiring;
GxB_MIN_TIMES_FP64_: GrB_Semiring;
GxB_MAX_TIMES_FP64_: GrB_Semiring;
GxB_PLUS_TIMES_FP64_: GrB_Semiring;
GxB_TIMES_TIMES_FP64_: GrB_Semiring;
GxB_ANY_TIMES_FP64_: GrB_Semiring;

GxB_MIN_DIV_INT8_: GrB_Semiring;
GxB_MAX_DIV_INT8_: GrB_Semiring;
GxB_PLUS_DIV_INT8_: GrB_Semiring;
GxB_TIMES_DIV_INT8_: GrB_Semiring;
GxB_ANY_DIV_INT8_: GrB_Semiring;
GxB_MIN_DIV_INT16_: GrB_Semiring;
GxB_MAX_DIV_INT16_: GrB_Semiring;
GxB_PLUS_DIV_INT16_: GrB_Semiring;
GxB_TIMES_DIV_INT16_: GrB_Semiring;
GxB_ANY_DIV_INT16_: GrB_Semiring;
GxB_MIN_DIV_INT32_: GrB_Semiring;
GxB_MAX_DIV_INT32_: GrB_Semiring;
GxB_PLUS_DIV_INT32_: GrB_Semiring;
GxB_TIMES_DIV_INT32_: GrB_Semiring;
GxB_ANY_DIV_INT32_: GrB_Semiring;
GxB_MIN_DIV_INT64_: GrB_Semiring;
GxB_MAX_DIV_INT64_: GrB_Semiring;
GxB_PLUS_DIV_INT64_: GrB_Semiring;
GxB_TIMES_DIV_INT64_: GrB_Semiring;
GxB_ANY_DIV_INT64_: GrB_Semiring;
GxB_MIN_DIV_UINT8_: GrB_Semiring;
GxB_MAX_DIV_UINT8_: GrB_Semiring;
GxB_PLUS_DIV_UINT8_: GrB_Semiring;
GxB_TIMES_DIV_UINT8_: GrB_Semiring;
GxB_ANY_DIV_UINT8_: GrB_Semiring;
GxB_MIN_DIV_UINT16_: GrB_Semiring;
GxB_MAX_DIV_UINT16_: GrB_Semiring;
GxB_PLUS_DIV_UINT16_: GrB_Semiring;
GxB_TIMES_DIV_UINT16_: GrB_Semiring;
GxB_ANY_DIV_UINT16_: GrB_Semiring;
GxB_MIN_DIV_UINT32_: GrB_Semiring;
GxB_MAX_DIV_UINT32_: GrB_Semiring;
GxB_PLUS_DIV_UINT32_: GrB_Semiring;
GxB_TIMES_DIV_UINT32_: GrB_Semiring;
GxB_ANY_DIV_UINT32_: GrB_Semiring;
GxB_MIN_DIV_UINT64_: GrB_Semiring;
GxB_MAX_DIV_UINT64_: GrB_Semiring;
GxB_PLUS_DIV_UINT64_: GrB_Semiring;
GxB_TIMES_DIV_UINT64_: GrB_Semiring;
GxB_ANY_DIV_UINT64_: GrB_Semiring;
GxB_MIN_DIV_FP32_: GrB_Semiring;
GxB_MAX_DIV_FP32_: GrB_Semiring;
GxB_PLUS_DIV_FP32_: GrB_Semiring;
GxB_TIMES_DIV_FP32_: GrB_Semiring;
GxB_ANY_DIV_FP32_: GrB_Semiring;
GxB_MIN_DIV_FP64_: GrB_Semiring;
GxB_MAX_DIV_FP64_: GrB_Semiring;
GxB_PLUS_DIV_FP64_: GrB_Semiring;
GxB_TIMES_DIV_FP64_: GrB_Semiring;
GxB_ANY_DIV_FP64_: GrB_Semiring;

GxB_MIN_RDIV_INT8_: GrB_Semiring;
GxB_MAX_RDIV_INT8_: GrB_Semiring;
GxB_PLUS_RDIV_INT8_: GrB_Semiring;
GxB_TIMES_RDIV_INT8_: GrB_Semiring;
GxB_ANY_RDIV_INT8_: GrB_Semiring;
GxB_MIN_RDIV_INT16_: GrB_Semiring;
GxB_MAX_RDIV_INT16_: GrB_Semiring;
GxB_PLUS_RDIV_INT16_: GrB_Semiring;
GxB_TIMES_RDIV_INT16_: GrB_Semiring;
GxB_ANY_RDIV_INT16_: GrB_Semiring;
GxB_MIN_RDIV_INT32_: GrB_Semiring;
GxB_MAX_RDIV_INT32_: GrB_Semiring;
GxB_PLUS_RDIV_INT32_: GrB_Semiring;
GxB_TIMES_RDIV_INT32_: GrB_Semiring;
GxB_ANY_RDIV_INT32_: GrB_Semiring;
GxB_MIN_RDIV_INT64_: GrB_Semiring;
GxB_MAX_RDIV_INT64_: GrB_Semiring;
GxB_PLUS_RDIV_INT64_: GrB_Semiring;
GxB_TIMES_RDIV_INT64_: GrB_Semiring;
GxB_ANY_RDIV_INT64_: GrB_Semiring;
GxB_MIN_RDIV_UINT8_: GrB_Semiring;
GxB_MAX_RDIV_UINT8_: GrB_Semiring;
GxB_PLUS_RDIV_UINT8_: GrB_Semiring;
GxB_TIMES_RDIV_UINT8_: GrB_Semiring;
GxB_ANY_RDIV_UINT8_: GrB_Semiring;
GxB_MIN_RDIV_UINT16_: GrB_Semiring;
GxB_MAX_RDIV_UINT16_: GrB_Semiring;
GxB_PLUS_RDIV_UINT16_: GrB_Semiring;
GxB_TIMES_RDIV_UINT16_: GrB_Semiring;
GxB_ANY_RDIV_UINT16_: GrB_Semiring;
GxB_MIN_RDIV_UINT32_: GrB_Semiring;
GxB_MAX_RDIV_UINT32_: GrB_Semiring;
GxB_PLUS_RDIV_UINT32_: GrB_Semiring;
GxB_TIMES_RDIV_UINT32_: GrB_Semiring;
GxB_ANY_RDIV_UINT32_: GrB_Semiring;
GxB_MIN_RDIV_UINT64_: GrB_Semiring;
GxB_MAX_RDIV_UINT64_: GrB_Semiring;
GxB_PLUS_RDIV_UINT64_: GrB_Semiring;
GxB_TIMES_RDIV_UINT64_: GrB_Semiring;
GxB_ANY_RDIV_UINT64_: GrB_Semiring;
GxB_MIN_RDIV_FP32_: GrB_Semiring;
GxB_MAX_RDIV_FP32_: GrB_Semiring;
GxB_PLUS_RDIV_FP32_: GrB_Semiring;
GxB_TIMES_RDIV_FP32_: GrB_Semiring;
GxB_ANY_RDIV_FP32_: GrB_Semiring;
GxB_MIN_RDIV_FP64_: GrB_Semiring;
GxB_MAX_RDIV_FP64_: GrB_Semiring;
GxB_PLUS_RDIV_FP64_: GrB_Semiring;
GxB_TIMES_RDIV_FP64_: GrB_Semiring;
GxB_ANY_RDIV_FP64_: GrB_Semiring;

GxB_MIN_RMINUS_INT8_: GrB_Semiring;
GxB_MAX_RMINUS_INT8_: GrB_Semiring;
GxB_PLUS_RMINUS_INT8_: GrB_Semiring;
GxB_TIMES_RMINUS_INT8_: GrB_Semiring;
GxB_ANY_RMINUS_INT8_: GrB_Semiring;
GxB_MIN_RMINUS_INT16_: GrB_Semiring;
GxB_MAX_RMINUS_INT16_: GrB_Semiring;
GxB_PLUS_RMINUS_INT16_: GrB_Semiring;
GxB_TIMES_RMINUS_INT16_: GrB_Semiring;
GxB_ANY_RMINUS_INT16_: GrB_Semiring;
GxB_MIN_RMINUS_INT32_: GrB_Semiring;
GxB_MAX_RMINUS_INT32_: GrB_Semiring;
GxB_PLUS_RMINUS_INT32_: GrB_Semiring;
GxB_TIMES_RMINUS_INT32_: GrB_Semiring;
GxB_ANY_RMINUS_INT32_: GrB_Semiring;
GxB_MIN_RMINUS_INT64_: GrB_Semiring;
GxB_MAX_RMINUS_INT64_: GrB_Semiring;
GxB_PLUS_RMINUS_INT64_: GrB_Semiring;
GxB_TIMES_RMINUS_INT64_: GrB_Semiring;
GxB_ANY_RMINUS_INT64_: GrB_Semiring;
GxB_MIN_RMINUS_UINT8_: GrB_Semiring;
GxB_MAX_RMINUS_UINT8_: GrB_Semiring;
GxB_PLUS_RMINUS_UINT8_: GrB_Semiring;
GxB_TIMES_RMINUS_UINT8_: GrB_Semiring;
GxB_ANY_RMINUS_UINT8_: GrB_Semiring;
GxB_MIN_RMINUS_UINT16_: GrB_Semiring;
GxB_MAX_RMINUS_UINT16_: GrB_Semiring;
GxB_PLUS_RMINUS_UINT16_: GrB_Semiring;
GxB_TIMES_RMINUS_UINT16_: GrB_Semiring;
GxB_ANY_RMINUS_UINT16_: GrB_Semiring;
GxB_MIN_RMINUS_UINT32_: GrB_Semiring;
GxB_MAX_RMINUS_UINT32_: GrB_Semiring;
GxB_PLUS_RMINUS_UINT32_: GrB_Semiring;
GxB_TIMES_RMINUS_UINT32_: GrB_Semiring;
GxB_ANY_RMINUS_UINT32_: GrB_Semiring;
GxB_MIN_RMINUS_UINT64_: GrB_Semiring;
GxB_MAX_RMINUS_UINT64_: GrB_Semiring;
GxB_PLUS_RMINUS_UINT64_: GrB_Semiring;
GxB_TIMES_RMINUS_UINT64_: GrB_Semiring;
GxB_ANY_RMINUS_UINT64_: GrB_Semiring;
GxB_MIN_RMINUS_FP32_: GrB_Semiring;
GxB_MAX_RMINUS_FP32_: GrB_Semiring;
GxB_PLUS_RMINUS_FP32_: GrB_Semiring;
GxB_TIMES_RMINUS_FP32_: GrB_Semiring;
GxB_ANY_RMINUS_FP32_: GrB_Semiring;
GxB_MIN_RMINUS_FP64_: GrB_Semiring;
GxB_MAX_RMINUS_FP64_: GrB_Semiring;
GxB_PLUS_RMINUS_FP64_: GrB_Semiring;
GxB_TIMES_RMINUS_FP64_: GrB_Semiring;
GxB_ANY_RMINUS_FP64_: GrB_Semiring;

GxB_MIN_ISEQ_INT8_: GrB_Semiring;
GxB_MAX_ISEQ_INT8_: GrB_Semiring;
GxB_PLUS_ISEQ_INT8_: GrB_Semiring;
GxB_TIMES_ISEQ_INT8_: GrB_Semiring;
GxB_ANY_ISEQ_INT8_: GrB_Semiring;
GxB_MIN_ISEQ_INT16_: GrB_Semiring;
GxB_MAX_ISEQ_INT16_: GrB_Semiring;
GxB_PLUS_ISEQ_INT16_: GrB_Semiring;
GxB_TIMES_ISEQ_INT16_: GrB_Semiring;
GxB_ANY_ISEQ_INT16_: GrB_Semiring;
GxB_MIN_ISEQ_INT32_: GrB_Semiring;
GxB_MAX_ISEQ_INT32_: GrB_Semiring;
GxB_PLUS_ISEQ_INT32_: GrB_Semiring;
GxB_TIMES_ISEQ_INT32_: GrB_Semiring;
GxB_ANY_ISEQ_INT32_: GrB_Semiring;
GxB_MIN_ISEQ_INT64_: GrB_Semiring;
GxB_MAX_ISEQ_INT64_: GrB_Semiring;
GxB_PLUS_ISEQ_INT64_: GrB_Semiring;
GxB_TIMES_ISEQ_INT64_: GrB_Semiring;
GxB_ANY_ISEQ_INT64_: GrB_Semiring;
GxB_MIN_ISEQ_UINT8_: GrB_Semiring;
GxB_MAX_ISEQ_UINT8_: GrB_Semiring;
GxB_PLUS_ISEQ_UINT8_: GrB_Semiring;
GxB_TIMES_ISEQ_UINT8_: GrB_Semiring;
GxB_ANY_ISEQ_UINT8_: GrB_Semiring;
GxB_MIN_ISEQ_UINT16_: GrB_Semiring;
GxB_MAX_ISEQ_UINT16_: GrB_Semiring;
GxB_PLUS_ISEQ_UINT16_: GrB_Semiring;
GxB_TIMES_ISEQ_UINT16_: GrB_Semiring;
GxB_ANY_ISEQ_UINT16_: GrB_Semiring;
GxB_MIN_ISEQ_UINT32_: GrB_Semiring;
GxB_MAX_ISEQ_UINT32_: GrB_Semiring;
GxB_PLUS_ISEQ_UINT32_: GrB_Semiring;
GxB_TIMES_ISEQ_UINT32_: GrB_Semiring;
GxB_ANY_ISEQ_UINT32_: GrB_Semiring;
GxB_MIN_ISEQ_UINT64_: GrB_Semiring;
GxB_MAX_ISEQ_UINT64_: GrB_Semiring;
GxB_PLUS_ISEQ_UINT64_: GrB_Semiring;
GxB_TIMES_ISEQ_UINT64_: GrB_Semiring;
GxB_ANY_ISEQ_UINT64_: GrB_Semiring;
GxB_MIN_ISEQ_FP32_: GrB_Semiring;
GxB_MAX_ISEQ_FP32_: GrB_Semiring;
GxB_PLUS_ISEQ_FP32_: GrB_Semiring;
GxB_TIMES_ISEQ_FP32_: GrB_Semiring;
GxB_ANY_ISEQ_FP32_: GrB_Semiring;
GxB_MIN_ISEQ_FP64_: GrB_Semiring;
GxB_MAX_ISEQ_FP64_: GrB_Semiring;
GxB_PLUS_ISEQ_FP64_: GrB_Semiring;
GxB_TIMES_ISEQ_FP64_: GrB_Semiring;
GxB_ANY_ISEQ_FP64_: GrB_Semiring;

GxB_MIN_ISNE_INT8_: GrB_Semiring;
GxB_MAX_ISNE_INT8_: GrB_Semiring;
GxB_PLUS_ISNE_INT8_: GrB_Semiring;
GxB_TIMES_ISNE_INT8_: GrB_Semiring;
GxB_ANY_ISNE_INT8_: GrB_Semiring;
GxB_MIN_ISNE_INT16_: GrB_Semiring;
GxB_MAX_ISNE_INT16_: GrB_Semiring;
GxB_PLUS_ISNE_INT16_: GrB_Semiring;
GxB_TIMES_ISNE_INT16_: GrB_Semiring;
GxB_ANY_ISNE_INT16_: GrB_Semiring;
GxB_MIN_ISNE_INT32_: GrB_Semiring;
GxB_MAX_ISNE_INT32_: GrB_Semiring;
GxB_PLUS_ISNE_INT32_: GrB_Semiring;
GxB_TIMES_ISNE_INT32_: GrB_Semiring;
GxB_ANY_ISNE_INT32_: GrB_Semiring;
GxB_MIN_ISNE_INT64_: GrB_Semiring;
GxB_MAX_ISNE_INT64_: GrB_Semiring;
GxB_PLUS_ISNE_INT64_: GrB_Semiring;
GxB_TIMES_ISNE_INT64_: GrB_Semiring;
GxB_ANY_ISNE_INT64_: GrB_Semiring;
GxB_MIN_ISNE_UINT8_: GrB_Semiring;
GxB_MAX_ISNE_UINT8_: GrB_Semiring;
GxB_PLUS_ISNE_UINT8_: GrB_Semiring;
GxB_TIMES_ISNE_UINT8_: GrB_Semiring;
GxB_ANY_ISNE_UINT8_: GrB_Semiring;
GxB_MIN_ISNE_UINT16_: GrB_Semiring;
GxB_MAX_ISNE_UINT16_: GrB_Semiring;
GxB_PLUS_ISNE_UINT16_: GrB_Semiring;
GxB_TIMES_ISNE_UINT16_: GrB_Semiring;
GxB_ANY_ISNE_UINT16_: GrB_Semiring;
GxB_MIN_ISNE_UINT32_: GrB_Semiring;
GxB_MAX_ISNE_UINT32_: GrB_Semiring;
GxB_PLUS_ISNE_UINT32_: GrB_Semiring;
GxB_TIMES_ISNE_UINT32_: GrB_Semiring;
GxB_ANY_ISNE_UINT32_: GrB_Semiring;
GxB_MIN_ISNE_UINT64_: GrB_Semiring;
GxB_MAX_ISNE_UINT64_: GrB_Semiring;
GxB_PLUS_ISNE_UINT64_: GrB_Semiring;
GxB_TIMES_ISNE_UINT64_: GrB_Semiring;
GxB_ANY_ISNE_UINT64_: GrB_Semiring;
GxB_MIN_ISNE_FP32_: GrB_Semiring;
GxB_MAX_ISNE_FP32_: GrB_Semiring;
GxB_PLUS_ISNE_FP32_: GrB_Semiring;
GxB_TIMES_ISNE_FP32_: GrB_Semiring;
GxB_ANY_ISNE_FP32_: GrB_Semiring;
GxB_MIN_ISNE_FP64_: GrB_Semiring;
GxB_MAX_ISNE_FP64_: GrB_Semiring;
GxB_PLUS_ISNE_FP64_: GrB_Semiring;
GxB_TIMES_ISNE_FP64_: GrB_Semiring;
GxB_ANY_ISNE_FP64_: GrB_Semiring;

GxB_MIN_ISGT_INT8_: GrB_Semiring;
GxB_MAX_ISGT_INT8_: GrB_Semiring;
GxB_PLUS_ISGT_INT8_: GrB_Semiring;
GxB_TIMES_ISGT_INT8_: GrB_Semiring;
GxB_ANY_ISGT_INT8_: GrB_Semiring;
GxB_MIN_ISGT_INT16_: GrB_Semiring;
GxB_MAX_ISGT_INT16_: GrB_Semiring;
GxB_PLUS_ISGT_INT16_: GrB_Semiring;
GxB_TIMES_ISGT_INT16_: GrB_Semiring;
GxB_ANY_ISGT_INT16_: GrB_Semiring;
GxB_MIN_ISGT_INT32_: GrB_Semiring;
GxB_MAX_ISGT_INT32_: GrB_Semiring;
GxB_PLUS_ISGT_INT32_: GrB_Semiring;
GxB_TIMES_ISGT_INT32_: GrB_Semiring;
GxB_ANY_ISGT_INT32_: GrB_Semiring;
GxB_MIN_ISGT_INT64_: GrB_Semiring;
GxB_MAX_ISGT_INT64_: GrB_Semiring;
GxB_PLUS_ISGT_INT64_: GrB_Semiring;
GxB_TIMES_ISGT_INT64_: GrB_Semiring;
GxB_ANY_ISGT_INT64_: GrB_Semiring;
GxB_MIN_ISGT_UINT8_: GrB_Semiring;
GxB_MAX_ISGT_UINT8_: GrB_Semiring;
GxB_PLUS_ISGT_UINT8_: GrB_Semiring;
GxB_TIMES_ISGT_UINT8_: GrB_Semiring;
GxB_ANY_ISGT_UINT8_: GrB_Semiring;
GxB_MIN_ISGT_UINT16_: GrB_Semiring;
GxB_MAX_ISGT_UINT16_: GrB_Semiring;
GxB_PLUS_ISGT_UINT16_: GrB_Semiring;
GxB_TIMES_ISGT_UINT16_: GrB_Semiring;
GxB_ANY_ISGT_UINT16_: GrB_Semiring;
GxB_MIN_ISGT_UINT32_: GrB_Semiring;
GxB_MAX_ISGT_UINT32_: GrB_Semiring;
GxB_PLUS_ISGT_UINT32_: GrB_Semiring;
GxB_TIMES_ISGT_UINT32_: GrB_Semiring;
GxB_ANY_ISGT_UINT32_: GrB_Semiring;
GxB_MIN_ISGT_UINT64_: GrB_Semiring;
GxB_MAX_ISGT_UINT64_: GrB_Semiring;
GxB_PLUS_ISGT_UINT64_: GrB_Semiring;
GxB_TIMES_ISGT_UINT64_: GrB_Semiring;
GxB_ANY_ISGT_UINT64_: GrB_Semiring;
GxB_MIN_ISGT_FP32_: GrB_Semiring;
GxB_MAX_ISGT_FP32_: GrB_Semiring;
GxB_PLUS_ISGT_FP32_: GrB_Semiring;
GxB_TIMES_ISGT_FP32_: GrB_Semiring;
GxB_ANY_ISGT_FP32_: GrB_Semiring;
GxB_MIN_ISGT_FP64_: GrB_Semiring;
GxB_MAX_ISGT_FP64_: GrB_Semiring;
GxB_PLUS_ISGT_FP64_: GrB_Semiring;
GxB_TIMES_ISGT_FP64_: GrB_Semiring;
GxB_ANY_ISGT_FP64_: GrB_Semiring;

GxB_MIN_ISLT_INT8_: GrB_Semiring;
GxB_MAX_ISLT_INT8_: GrB_Semiring;
GxB_PLUS_ISLT_INT8_: GrB_Semiring;
GxB_TIMES_ISLT_INT8_: GrB_Semiring;
GxB_ANY_ISLT_INT8_: GrB_Semiring;
GxB_MIN_ISLT_INT16_: GrB_Semiring;
GxB_MAX_ISLT_INT16_: GrB_Semiring;
GxB_PLUS_ISLT_INT16_: GrB_Semiring;
GxB_TIMES_ISLT_INT16_: GrB_Semiring;
GxB_ANY_ISLT_INT16_: GrB_Semiring;
GxB_MIN_ISLT_INT32_: GrB_Semiring;
GxB_MAX_ISLT_INT32_: GrB_Semiring;
GxB_PLUS_ISLT_INT32_: GrB_Semiring;
GxB_TIMES_ISLT_INT32_: GrB_Semiring;
GxB_ANY_ISLT_INT32_: GrB_Semiring;
GxB_MIN_ISLT_INT64_: GrB_Semiring;
GxB_MAX_ISLT_INT64_: GrB_Semiring;
GxB_PLUS_ISLT_INT64_: GrB_Semiring;
GxB_TIMES_ISLT_INT64_: GrB_Semiring;
GxB_ANY_ISLT_INT64_: GrB_Semiring;
GxB_MIN_ISLT_UINT8_: GrB_Semiring;
GxB_MAX_ISLT_UINT8_: GrB_Semiring;
GxB_PLUS_ISLT_UINT8_: GrB_Semiring;
GxB_TIMES_ISLT_UINT8_: GrB_Semiring;
GxB_ANY_ISLT_UINT8_: GrB_Semiring;
GxB_MIN_ISLT_UINT16_: GrB_Semiring;
GxB_MAX_ISLT_UINT16_: GrB_Semiring;
GxB_PLUS_ISLT_UINT16_: GrB_Semiring;
GxB_TIMES_ISLT_UINT16_: GrB_Semiring;
GxB_ANY_ISLT_UINT16_: GrB_Semiring;
GxB_MIN_ISLT_UINT32_: GrB_Semiring;
GxB_MAX_ISLT_UINT32_: GrB_Semiring;
GxB_PLUS_ISLT_UINT32_: GrB_Semiring;
GxB_TIMES_ISLT_UINT32_: GrB_Semiring;
GxB_ANY_ISLT_UINT32_: GrB_Semiring;
GxB_MIN_ISLT_UINT64_: GrB_Semiring;
GxB_MAX_ISLT_UINT64_: GrB_Semiring;
GxB_PLUS_ISLT_UINT64_: GrB_Semiring;
GxB_TIMES_ISLT_UINT64_: GrB_Semiring;
GxB_ANY_ISLT_UINT64_: GrB_Semiring;
GxB_MIN_ISLT_FP32_: GrB_Semiring;
GxB_MAX_ISLT_FP32_: GrB_Semiring;
GxB_PLUS_ISLT_FP32_: GrB_Semiring;
GxB_TIMES_ISLT_FP32_: GrB_Semiring;
GxB_ANY_ISLT_FP32_: GrB_Semiring;
GxB_MIN_ISLT_FP64_: GrB_Semiring;
GxB_MAX_ISLT_FP64_: GrB_Semiring;
GxB_PLUS_ISLT_FP64_: GrB_Semiring;
GxB_TIMES_ISLT_FP64_: GrB_Semiring;
GxB_ANY_ISLT_FP64_: GrB_Semiring;

GxB_MIN_ISGE_INT8_: GrB_Semiring;
GxB_MAX_ISGE_INT8_: GrB_Semiring;
GxB_PLUS_ISGE_INT8_: GrB_Semiring;
GxB_TIMES_ISGE_INT8_: GrB_Semiring;
GxB_ANY_ISGE_INT8_: GrB_Semiring;
GxB_MIN_ISGE_INT16_: GrB_Semiring;
GxB_MAX_ISGE_INT16_: GrB_Semiring;
GxB_PLUS_ISGE_INT16_: GrB_Semiring;
GxB_TIMES_ISGE_INT16_: GrB_Semiring;
GxB_ANY_ISGE_INT16_: GrB_Semiring;
GxB_MIN_ISGE_INT32_: GrB_Semiring;
GxB_MAX_ISGE_INT32_: GrB_Semiring;
GxB_PLUS_ISGE_INT32_: GrB_Semiring;
GxB_TIMES_ISGE_INT32_: GrB_Semiring;
GxB_ANY_ISGE_INT32_: GrB_Semiring;
GxB_MIN_ISGE_INT64_: GrB_Semiring;
GxB_MAX_ISGE_INT64_: GrB_Semiring;
GxB_PLUS_ISGE_INT64_: GrB_Semiring;
GxB_TIMES_ISGE_INT64_: GrB_Semiring;
GxB_ANY_ISGE_INT64_: GrB_Semiring;
GxB_MIN_ISGE_UINT8_: GrB_Semiring;
GxB_MAX_ISGE_UINT8_: GrB_Semiring;
GxB_PLUS_ISGE_UINT8_: GrB_Semiring;
GxB_TIMES_ISGE_UINT8_: GrB_Semiring;
GxB_ANY_ISGE_UINT8_: GrB_Semiring;
GxB_MIN_ISGE_UINT16_: GrB_Semiring;
GxB_MAX_ISGE_UINT16_: GrB_Semiring;
GxB_PLUS_ISGE_UINT16_: GrB_Semiring;
GxB_TIMES_ISGE_UINT16_: GrB_Semiring;
GxB_ANY_ISGE_UINT16_: GrB_Semiring;
GxB_MIN_ISGE_UINT32_: GrB_Semiring;
GxB_MAX_ISGE_UINT32_: GrB_Semiring;
GxB_PLUS_ISGE_UINT32_: GrB_Semiring;
GxB_TIMES_ISGE_UINT32_: GrB_Semiring;
GxB_ANY_ISGE_UINT32_: GrB_Semiring;
GxB_MIN_ISGE_UINT64_: GrB_Semiring;
GxB_MAX_ISGE_UINT64_: GrB_Semiring;
GxB_PLUS_ISGE_UINT64_: GrB_Semiring;
GxB_TIMES_ISGE_UINT64_: GrB_Semiring;
GxB_ANY_ISGE_UINT64_: GrB_Semiring;
GxB_MIN_ISGE_FP32_: GrB_Semiring;
GxB_MAX_ISGE_FP32_: GrB_Semiring;
GxB_PLUS_ISGE_FP32_: GrB_Semiring;
GxB_TIMES_ISGE_FP32_: GrB_Semiring;
GxB_ANY_ISGE_FP32_: GrB_Semiring;
GxB_MIN_ISGE_FP64_: GrB_Semiring;
GxB_MAX_ISGE_FP64_: GrB_Semiring;
GxB_PLUS_ISGE_FP64_: GrB_Semiring;
GxB_TIMES_ISGE_FP64_: GrB_Semiring;
GxB_ANY_ISGE_FP64_: GrB_Semiring;

GxB_MIN_ISLE_INT8_: GrB_Semiring;
GxB_MAX_ISLE_INT8_: GrB_Semiring;
GxB_PLUS_ISLE_INT8_: GrB_Semiring;
GxB_TIMES_ISLE_INT8_: GrB_Semiring;
GxB_ANY_ISLE_INT8_: GrB_Semiring;
GxB_MIN_ISLE_INT16_: GrB_Semiring;
GxB_MAX_ISLE_INT16_: GrB_Semiring;
GxB_PLUS_ISLE_INT16_: GrB_Semiring;
GxB_TIMES_ISLE_INT16_: GrB_Semiring;
GxB_ANY_ISLE_INT16_: GrB_Semiring;
GxB_MIN_ISLE_INT32_: GrB_Semiring;
GxB_MAX_ISLE_INT32_: GrB_Semiring;
GxB_PLUS_ISLE_INT32_: GrB_Semiring;
GxB_TIMES_ISLE_INT32_: GrB_Semiring;
GxB_ANY_ISLE_INT32_: GrB_Semiring;
GxB_MIN_ISLE_INT64_: GrB_Semiring;
GxB_MAX_ISLE_INT64_: GrB_Semiring;
GxB_PLUS_ISLE_INT64_: GrB_Semiring;
GxB_TIMES_ISLE_INT64_: GrB_Semiring;
GxB_ANY_ISLE_INT64_: GrB_Semiring;
GxB_MIN_ISLE_UINT8_: GrB_Semiring;
GxB_MAX_ISLE_UINT8_: GrB_Semiring;
GxB_PLUS_ISLE_UINT8_: GrB_Semiring;
GxB_TIMES_ISLE_UINT8_: GrB_Semiring;
GxB_ANY_ISLE_UINT8_: GrB_Semiring;
GxB_MIN_ISLE_UINT16_: GrB_Semiring;
GxB_MAX_ISLE_UINT16_: GrB_Semiring;
GxB_PLUS_ISLE_UINT16_: GrB_Semiring;
GxB_TIMES_ISLE_UINT16_: GrB_Semiring;
GxB_ANY_ISLE_UINT16_: GrB_Semiring;
GxB_MIN_ISLE_UINT32_: GrB_Semiring;
GxB_MAX_ISLE_UINT32_: GrB_Semiring;
GxB_PLUS_ISLE_UINT32_: GrB_Semiring;
GxB_TIMES_ISLE_UINT32_: GrB_Semiring;
GxB_ANY_ISLE_UINT32_: GrB_Semiring;
GxB_MIN_ISLE_UINT64_: GrB_Semiring;
GxB_MAX_ISLE_UINT64_: GrB_Semiring;
GxB_PLUS_ISLE_UINT64_: GrB_Semiring;
GxB_TIMES_ISLE_UINT64_: GrB_Semiring;
GxB_ANY_ISLE_UINT64_: GrB_Semiring;
GxB_MIN_ISLE_FP32_: GrB_Semiring;
GxB_MAX_ISLE_FP32_: GrB_Semiring;
GxB_PLUS_ISLE_FP32_: GrB_Semiring;
GxB_TIMES_ISLE_FP32_: GrB_Semiring;
GxB_ANY_ISLE_FP32_: GrB_Semiring;
GxB_MIN_ISLE_FP64_: GrB_Semiring;
GxB_MAX_ISLE_FP64_: GrB_Semiring;
GxB_PLUS_ISLE_FP64_: GrB_Semiring;
GxB_TIMES_ISLE_FP64_: GrB_Semiring;
GxB_ANY_ISLE_FP64_: GrB_Semiring;

GxB_MIN_LOR_INT8_: GrB_Semiring;
GxB_MAX_LOR_INT8_: GrB_Semiring;
GxB_PLUS_LOR_INT8_: GrB_Semiring;
GxB_TIMES_LOR_INT8_: GrB_Semiring;
GxB_ANY_LOR_INT8_: GrB_Semiring;
GxB_MIN_LOR_INT16_: GrB_Semiring;
GxB_MAX_LOR_INT16_: GrB_Semiring;
GxB_PLUS_LOR_INT16_: GrB_Semiring;
GxB_TIMES_LOR_INT16_: GrB_Semiring;
GxB_ANY_LOR_INT16_: GrB_Semiring;
GxB_MIN_LOR_INT32_: GrB_Semiring;
GxB_MAX_LOR_INT32_: GrB_Semiring;
GxB_PLUS_LOR_INT32_: GrB_Semiring;
GxB_TIMES_LOR_INT32_: GrB_Semiring;
GxB_ANY_LOR_INT32_: GrB_Semiring;
GxB_MIN_LOR_INT64_: GrB_Semiring;
GxB_MAX_LOR_INT64_: GrB_Semiring;
GxB_PLUS_LOR_INT64_: GrB_Semiring;
GxB_TIMES_LOR_INT64_: GrB_Semiring;
GxB_ANY_LOR_INT64_: GrB_Semiring;
GxB_MIN_LOR_UINT8_: GrB_Semiring;
GxB_MAX_LOR_UINT8_: GrB_Semiring;
GxB_PLUS_LOR_UINT8_: GrB_Semiring;
GxB_TIMES_LOR_UINT8_: GrB_Semiring;
GxB_ANY_LOR_UINT8_: GrB_Semiring;
GxB_MIN_LOR_UINT16_: GrB_Semiring;
GxB_MAX_LOR_UINT16_: GrB_Semiring;
GxB_PLUS_LOR_UINT16_: GrB_Semiring;
GxB_TIMES_LOR_UINT16_: GrB_Semiring;
GxB_ANY_LOR_UINT16_: GrB_Semiring;
GxB_MIN_LOR_UINT32_: GrB_Semiring;
GxB_MAX_LOR_UINT32_: GrB_Semiring;
GxB_PLUS_LOR_UINT32_: GrB_Semiring;
GxB_TIMES_LOR_UINT32_: GrB_Semiring;
GxB_ANY_LOR_UINT32_: GrB_Semiring;
GxB_MIN_LOR_UINT64_: GrB_Semiring;
GxB_MAX_LOR_UINT64_: GrB_Semiring;
GxB_PLUS_LOR_UINT64_: GrB_Semiring;
GxB_TIMES_LOR_UINT64_: GrB_Semiring;
GxB_ANY_LOR_UINT64_: GrB_Semiring;
GxB_MIN_LOR_FP32_: GrB_Semiring;
GxB_MAX_LOR_FP32_: GrB_Semiring;
GxB_PLUS_LOR_FP32_: GrB_Semiring;
GxB_TIMES_LOR_FP32_: GrB_Semiring;
GxB_ANY_LOR_FP32_: GrB_Semiring;
GxB_MIN_LOR_FP64_: GrB_Semiring;
GxB_MAX_LOR_FP64_: GrB_Semiring;
GxB_PLUS_LOR_FP64_: GrB_Semiring;
GxB_TIMES_LOR_FP64_: GrB_Semiring;
GxB_ANY_LOR_FP64_: GrB_Semiring;

GxB_MIN_LAND_INT8_: GrB_Semiring;
GxB_MAX_LAND_INT8_: GrB_Semiring;
GxB_PLUS_LAND_INT8_: GrB_Semiring;
GxB_TIMES_LAND_INT8_: GrB_Semiring;
GxB_ANY_LAND_INT8_: GrB_Semiring;
GxB_MIN_LAND_INT16_: GrB_Semiring;
GxB_MAX_LAND_INT16_: GrB_Semiring;
GxB_PLUS_LAND_INT16_: GrB_Semiring;
GxB_TIMES_LAND_INT16_: GrB_Semiring;
GxB_ANY_LAND_INT16_: GrB_Semiring;
GxB_MIN_LAND_INT32_: GrB_Semiring;
GxB_MAX_LAND_INT32_: GrB_Semiring;
GxB_PLUS_LAND_INT32_: GrB_Semiring;
GxB_TIMES_LAND_INT32_: GrB_Semiring;
GxB_ANY_LAND_INT32_: GrB_Semiring;
GxB_MIN_LAND_INT64_: GrB_Semiring;
GxB_MAX_LAND_INT64_: GrB_Semiring;
GxB_PLUS_LAND_INT64_: GrB_Semiring;
GxB_TIMES_LAND_INT64_: GrB_Semiring;
GxB_ANY_LAND_INT64_: GrB_Semiring;
GxB_MIN_LAND_UINT8_: GrB_Semiring;
GxB_MAX_LAND_UINT8_: GrB_Semiring;
GxB_PLUS_LAND_UINT8_: GrB_Semiring;
GxB_TIMES_LAND_UINT8_: GrB_Semiring;
GxB_ANY_LAND_UINT8_: GrB_Semiring;
GxB_MIN_LAND_UINT16_: GrB_Semiring;
GxB_MAX_LAND_UINT16_: GrB_Semiring;
GxB_PLUS_LAND_UINT16_: GrB_Semiring;
GxB_TIMES_LAND_UINT16_: GrB_Semiring;
GxB_ANY_LAND_UINT16_: GrB_Semiring;
GxB_MIN_LAND_UINT32_: GrB_Semiring;
GxB_MAX_LAND_UINT32_: GrB_Semiring;
GxB_PLUS_LAND_UINT32_: GrB_Semiring;
GxB_TIMES_LAND_UINT32_: GrB_Semiring;
GxB_ANY_LAND_UINT32_: GrB_Semiring;
GxB_MIN_LAND_UINT64_: GrB_Semiring;
GxB_MAX_LAND_UINT64_: GrB_Semiring;
GxB_PLUS_LAND_UINT64_: GrB_Semiring;
GxB_TIMES_LAND_UINT64_: GrB_Semiring;
GxB_ANY_LAND_UINT64_: GrB_Semiring;
GxB_MIN_LAND_FP32_: GrB_Semiring;
GxB_MAX_LAND_FP32_: GrB_Semiring;
GxB_PLUS_LAND_FP32_: GrB_Semiring;
GxB_TIMES_LAND_FP32_: GrB_Semiring;
GxB_ANY_LAND_FP32_: GrB_Semiring;
GxB_MIN_LAND_FP64_: GrB_Semiring;
GxB_MAX_LAND_FP64_: GrB_Semiring;
GxB_PLUS_LAND_FP64_: GrB_Semiring;
GxB_TIMES_LAND_FP64_: GrB_Semiring;
GxB_ANY_LAND_FP64_: GrB_Semiring;

GxB_MIN_LXOR_INT8_: GrB_Semiring;
GxB_MAX_LXOR_INT8_: GrB_Semiring;
GxB_PLUS_LXOR_INT8_: GrB_Semiring;
GxB_TIMES_LXOR_INT8_: GrB_Semiring;
GxB_ANY_LXOR_INT8_: GrB_Semiring;
GxB_MIN_LXOR_INT16_: GrB_Semiring;
GxB_MAX_LXOR_INT16_: GrB_Semiring;
GxB_PLUS_LXOR_INT16_: GrB_Semiring;
GxB_TIMES_LXOR_INT16_: GrB_Semiring;
GxB_ANY_LXOR_INT16_: GrB_Semiring;
GxB_MIN_LXOR_INT32_: GrB_Semiring;
GxB_MAX_LXOR_INT32_: GrB_Semiring;
GxB_PLUS_LXOR_INT32_: GrB_Semiring;
GxB_TIMES_LXOR_INT32_: GrB_Semiring;
GxB_ANY_LXOR_INT32_: GrB_Semiring;
GxB_MIN_LXOR_INT64_: GrB_Semiring;
GxB_MAX_LXOR_INT64_: GrB_Semiring;
GxB_PLUS_LXOR_INT64_: GrB_Semiring;
GxB_TIMES_LXOR_INT64_: GrB_Semiring;
GxB_ANY_LXOR_INT64_: GrB_Semiring;
GxB_MIN_LXOR_UINT8_: GrB_Semiring;
GxB_MAX_LXOR_UINT8_: GrB_Semiring;
GxB_PLUS_LXOR_UINT8_: GrB_Semiring;
GxB_TIMES_LXOR_UINT8_: GrB_Semiring;
GxB_ANY_LXOR_UINT8_: GrB_Semiring;
GxB_MIN_LXOR_UINT16_: GrB_Semiring;
GxB_MAX_LXOR_UINT16_: GrB_Semiring;
GxB_PLUS_LXOR_UINT16_: GrB_Semiring;
GxB_TIMES_LXOR_UINT16_: GrB_Semiring;
GxB_ANY_LXOR_UINT16_: GrB_Semiring;
GxB_MIN_LXOR_UINT32_: GrB_Semiring;
GxB_MAX_LXOR_UINT32_: GrB_Semiring;
GxB_PLUS_LXOR_UINT32_: GrB_Semiring;
GxB_TIMES_LXOR_UINT32_: GrB_Semiring;
GxB_ANY_LXOR_UINT32_: GrB_Semiring;
GxB_MIN_LXOR_UINT64_: GrB_Semiring;
GxB_MAX_LXOR_UINT64_: GrB_Semiring;
GxB_PLUS_LXOR_UINT64_: GrB_Semiring;
GxB_TIMES_LXOR_UINT64_: GrB_Semiring;
GxB_ANY_LXOR_UINT64_: GrB_Semiring;
GxB_MIN_LXOR_FP32_: GrB_Semiring;
GxB_MAX_LXOR_FP32_: GrB_Semiring;
GxB_PLUS_LXOR_FP32_: GrB_Semiring;
GxB_TIMES_LXOR_FP32_: GrB_Semiring;
GxB_ANY_LXOR_FP32_: GrB_Semiring;
GxB_MIN_LXOR_FP64_: GrB_Semiring;
GxB_MAX_LXOR_FP64_: GrB_Semiring;
GxB_PLUS_LXOR_FP64_: GrB_Semiring;
GxB_TIMES_LXOR_FP64_: GrB_Semiring;
GxB_ANY_LXOR_FP64_: GrB_Semiring;

GxB_LOR_EQ_INT8_: GrB_Semiring;
GxB_LAND_EQ_INT8_: GrB_Semiring;
GxB_LXOR_EQ_INT8_: GrB_Semiring;
GxB_EQ_EQ_INT8_: GrB_Semiring;
GxB_ANY_EQ_INT8_: GrB_Semiring;
GxB_LOR_EQ_INT16_: GrB_Semiring;
GxB_LAND_EQ_INT16_: GrB_Semiring;
GxB_LXOR_EQ_INT16_: GrB_Semiring;
GxB_EQ_EQ_INT16_: GrB_Semiring;
GxB_ANY_EQ_INT16_: GrB_Semiring;
GxB_LOR_EQ_INT32_: GrB_Semiring;
GxB_LAND_EQ_INT32_: GrB_Semiring;
GxB_LXOR_EQ_INT32_: GrB_Semiring;
GxB_EQ_EQ_INT32_: GrB_Semiring;
GxB_ANY_EQ_INT32_: GrB_Semiring;
GxB_LOR_EQ_INT64_: GrB_Semiring;
GxB_LAND_EQ_INT64_: GrB_Semiring;
GxB_LXOR_EQ_INT64_: GrB_Semiring;
GxB_EQ_EQ_INT64_: GrB_Semiring;
GxB_ANY_EQ_INT64_: GrB_Semiring;
GxB_LOR_EQ_UINT8_: GrB_Semiring;
GxB_LAND_EQ_UINT8_: GrB_Semiring;
GxB_LXOR_EQ_UINT8_: GrB_Semiring;
GxB_EQ_EQ_UINT8_: GrB_Semiring;
GxB_ANY_EQ_UINT8_: GrB_Semiring;
GxB_LOR_EQ_UINT16_: GrB_Semiring;
GxB_LAND_EQ_UINT16_: GrB_Semiring;
GxB_LXOR_EQ_UINT16_: GrB_Semiring;
GxB_EQ_EQ_UINT16_: GrB_Semiring;
GxB_ANY_EQ_UINT16_: GrB_Semiring;
GxB_LOR_EQ_UINT32_: GrB_Semiring;
GxB_LAND_EQ_UINT32_: GrB_Semiring;
GxB_LXOR_EQ_UINT32_: GrB_Semiring;
GxB_EQ_EQ_UINT32_: GrB_Semiring;
GxB_ANY_EQ_UINT32_: GrB_Semiring;
GxB_LOR_EQ_UINT64_: GrB_Semiring;
GxB_LAND_EQ_UINT64_: GrB_Semiring;
GxB_LXOR_EQ_UINT64_: GrB_Semiring;
GxB_EQ_EQ_UINT64_: GrB_Semiring;
GxB_ANY_EQ_UINT64_: GrB_Semiring;
GxB_LOR_EQ_FP32_: GrB_Semiring;
GxB_LAND_EQ_FP32_: GrB_Semiring;
GxB_LXOR_EQ_FP32_: GrB_Semiring;
GxB_EQ_EQ_FP32_: GrB_Semiring;
GxB_ANY_EQ_FP32_: GrB_Semiring;
GxB_LOR_EQ_FP64_: GrB_Semiring;
GxB_LAND_EQ_FP64_: GrB_Semiring;
GxB_LXOR_EQ_FP64_: GrB_Semiring;
GxB_EQ_EQ_FP64_: GrB_Semiring;
GxB_ANY_EQ_FP64_: GrB_Semiring;

GxB_LOR_NE_INT8_: GrB_Semiring;
GxB_LAND_NE_INT8_: GrB_Semiring;
GxB_LXOR_NE_INT8_: GrB_Semiring;
GxB_EQ_NE_INT8_: GrB_Semiring;
GxB_ANY_NE_INT8_: GrB_Semiring;
GxB_LOR_NE_INT16_: GrB_Semiring;
GxB_LAND_NE_INT16_: GrB_Semiring;
GxB_LXOR_NE_INT16_: GrB_Semiring;
GxB_EQ_NE_INT16_: GrB_Semiring;
GxB_ANY_NE_INT16_: GrB_Semiring;
GxB_LOR_NE_INT32_: GrB_Semiring;
GxB_LAND_NE_INT32_: GrB_Semiring;
GxB_LXOR_NE_INT32_: GrB_Semiring;
GxB_EQ_NE_INT32_: GrB_Semiring;
GxB_ANY_NE_INT32_: GrB_Semiring;
GxB_LOR_NE_INT64_: GrB_Semiring;
GxB_LAND_NE_INT64_: GrB_Semiring;
GxB_LXOR_NE_INT64_: GrB_Semiring;
GxB_EQ_NE_INT64_: GrB_Semiring;
GxB_ANY_NE_INT64_: GrB_Semiring;
GxB_LOR_NE_UINT8_: GrB_Semiring;
GxB_LAND_NE_UINT8_: GrB_Semiring;
GxB_LXOR_NE_UINT8_: GrB_Semiring;
GxB_EQ_NE_UINT8_: GrB_Semiring;
GxB_ANY_NE_UINT8_: GrB_Semiring;
GxB_LOR_NE_UINT16_: GrB_Semiring;
GxB_LAND_NE_UINT16_: GrB_Semiring;
GxB_LXOR_NE_UINT16_: GrB_Semiring;
GxB_EQ_NE_UINT16_: GrB_Semiring;
GxB_ANY_NE_UINT16_: GrB_Semiring;
GxB_LOR_NE_UINT32_: GrB_Semiring;
GxB_LAND_NE_UINT32_: GrB_Semiring;
GxB_LXOR_NE_UINT32_: GrB_Semiring;
GxB_EQ_NE_UINT32_: GrB_Semiring;
GxB_ANY_NE_UINT32_: GrB_Semiring;
GxB_LOR_NE_UINT64_: GrB_Semiring;
GxB_LAND_NE_UINT64_: GrB_Semiring;
GxB_LXOR_NE_UINT64_: GrB_Semiring;
GxB_EQ_NE_UINT64_: GrB_Semiring;
GxB_ANY_NE_UINT64_: GrB_Semiring;
GxB_LOR_NE_FP32_: GrB_Semiring;
GxB_LAND_NE_FP32_: GrB_Semiring;
GxB_LXOR_NE_FP32_: GrB_Semiring;
GxB_EQ_NE_FP32_: GrB_Semiring;
GxB_ANY_NE_FP32_: GrB_Semiring;
GxB_LOR_NE_FP64_: GrB_Semiring;
GxB_LAND_NE_FP64_: GrB_Semiring;
GxB_LXOR_NE_FP64_: GrB_Semiring;
GxB_EQ_NE_FP64_: GrB_Semiring;
GxB_ANY_NE_FP64_: GrB_Semiring;

GxB_LOR_GT_INT8_: GrB_Semiring;
GxB_LAND_GT_INT8_: GrB_Semiring;
GxB_LXOR_GT_INT8_: GrB_Semiring;
GxB_EQ_GT_INT8_: GrB_Semiring;
GxB_ANY_GT_INT8_: GrB_Semiring;
GxB_LOR_GT_INT16_: GrB_Semiring;
GxB_LAND_GT_INT16_: GrB_Semiring;
GxB_LXOR_GT_INT16_: GrB_Semiring;
GxB_EQ_GT_INT16_: GrB_Semiring;
GxB_ANY_GT_INT16_: GrB_Semiring;
GxB_LOR_GT_INT32_: GrB_Semiring;
GxB_LAND_GT_INT32_: GrB_Semiring;
GxB_LXOR_GT_INT32_: GrB_Semiring;
GxB_EQ_GT_INT32_: GrB_Semiring;
GxB_ANY_GT_INT32_: GrB_Semiring;
GxB_LOR_GT_INT64_: GrB_Semiring;
GxB_LAND_GT_INT64_: GrB_Semiring;
GxB_LXOR_GT_INT64_: GrB_Semiring;
GxB_EQ_GT_INT64_: GrB_Semiring;
GxB_ANY_GT_INT64_: GrB_Semiring;
GxB_LOR_GT_UINT8_: GrB_Semiring;
GxB_LAND_GT_UINT8_: GrB_Semiring;
GxB_LXOR_GT_UINT8_: GrB_Semiring;
GxB_EQ_GT_UINT8_: GrB_Semiring;
GxB_ANY_GT_UINT8_: GrB_Semiring;
GxB_LOR_GT_UINT16_: GrB_Semiring;
GxB_LAND_GT_UINT16_: GrB_Semiring;
GxB_LXOR_GT_UINT16_: GrB_Semiring;
GxB_EQ_GT_UINT16_: GrB_Semiring;
GxB_ANY_GT_UINT16_: GrB_Semiring;
GxB_LOR_GT_UINT32_: GrB_Semiring;
GxB_LAND_GT_UINT32_: GrB_Semiring;
GxB_LXOR_GT_UINT32_: GrB_Semiring;
GxB_EQ_GT_UINT32_: GrB_Semiring;
GxB_ANY_GT_UINT32_: GrB_Semiring;
GxB_LOR_GT_UINT64_: GrB_Semiring;
GxB_LAND_GT_UINT64_: GrB_Semiring;
GxB_LXOR_GT_UINT64_: GrB_Semiring;
GxB_EQ_GT_UINT64_: GrB_Semiring;
GxB_ANY_GT_UINT64_: GrB_Semiring;
GxB_LOR_GT_FP32_: GrB_Semiring;
GxB_LAND_GT_FP32_: GrB_Semiring;
GxB_LXOR_GT_FP32_: GrB_Semiring;
GxB_EQ_GT_FP32_: GrB_Semiring;
GxB_ANY_GT_FP32_: GrB_Semiring;
GxB_LOR_GT_FP64_: GrB_Semiring;
GxB_LAND_GT_FP64_: GrB_Semiring;
GxB_LXOR_GT_FP64_: GrB_Semiring;
GxB_EQ_GT_FP64_: GrB_Semiring;
GxB_ANY_GT_FP64_: GrB_Semiring;

GxB_LOR_LT_INT8_: GrB_Semiring;
GxB_LAND_LT_INT8_: GrB_Semiring;
GxB_LXOR_LT_INT8_: GrB_Semiring;
GxB_EQ_LT_INT8_: GrB_Semiring;
GxB_ANY_LT_INT8_: GrB_Semiring;
GxB_LOR_LT_INT16_: GrB_Semiring;
GxB_LAND_LT_INT16_: GrB_Semiring;
GxB_LXOR_LT_INT16_: GrB_Semiring;
GxB_EQ_LT_INT16_: GrB_Semiring;
GxB_ANY_LT_INT16_: GrB_Semiring;
GxB_LOR_LT_INT32_: GrB_Semiring;
GxB_LAND_LT_INT32_: GrB_Semiring;
GxB_LXOR_LT_INT32_: GrB_Semiring;
GxB_EQ_LT_INT32_: GrB_Semiring;
GxB_ANY_LT_INT32_: GrB_Semiring;
GxB_LOR_LT_INT64_: GrB_Semiring;
GxB_LAND_LT_INT64_: GrB_Semiring;
GxB_LXOR_LT_INT64_: GrB_Semiring;
GxB_EQ_LT_INT64_: GrB_Semiring;
GxB_ANY_LT_INT64_: GrB_Semiring;
GxB_LOR_LT_UINT8_: GrB_Semiring;
GxB_LAND_LT_UINT8_: GrB_Semiring;
GxB_LXOR_LT_UINT8_: GrB_Semiring;
GxB_EQ_LT_UINT8_: GrB_Semiring;
GxB_ANY_LT_UINT8_: GrB_Semiring;
GxB_LOR_LT_UINT16_: GrB_Semiring;
GxB_LAND_LT_UINT16_: GrB_Semiring;
GxB_LXOR_LT_UINT16_: GrB_Semiring;
GxB_EQ_LT_UINT16_: GrB_Semiring;
GxB_ANY_LT_UINT16_: GrB_Semiring;
GxB_LOR_LT_UINT32_: GrB_Semiring;
GxB_LAND_LT_UINT32_: GrB_Semiring;
GxB_LXOR_LT_UINT32_: GrB_Semiring;
GxB_EQ_LT_UINT32_: GrB_Semiring;
GxB_ANY_LT_UINT32_: GrB_Semiring;
GxB_LOR_LT_UINT64_: GrB_Semiring;
GxB_LAND_LT_UINT64_: GrB_Semiring;
GxB_LXOR_LT_UINT64_: GrB_Semiring;
GxB_EQ_LT_UINT64_: GrB_Semiring;
GxB_ANY_LT_UINT64_: GrB_Semiring;
GxB_LOR_LT_FP32_: GrB_Semiring;
GxB_LAND_LT_FP32_: GrB_Semiring;
GxB_LXOR_LT_FP32_: GrB_Semiring;
GxB_EQ_LT_FP32_: GrB_Semiring;
GxB_ANY_LT_FP32_: GrB_Semiring;
GxB_LOR_LT_FP64_: GrB_Semiring;
GxB_LAND_LT_FP64_: GrB_Semiring;
GxB_LXOR_LT_FP64_: GrB_Semiring;
GxB_EQ_LT_FP64_: GrB_Semiring;
GxB_ANY_LT_FP64_: GrB_Semiring;

GxB_LOR_GE_INT8_: GrB_Semiring;
GxB_LAND_GE_INT8_: GrB_Semiring;
GxB_LXOR_GE_INT8_: GrB_Semiring;
GxB_EQ_GE_INT8_: GrB_Semiring;
GxB_ANY_GE_INT8_: GrB_Semiring;
GxB_LOR_GE_INT16_: GrB_Semiring;
GxB_LAND_GE_INT16_: GrB_Semiring;
GxB_LXOR_GE_INT16_: GrB_Semiring;
GxB_EQ_GE_INT16_: GrB_Semiring;
GxB_ANY_GE_INT16_: GrB_Semiring;
GxB_LOR_GE_INT32_: GrB_Semiring;
GxB_LAND_GE_INT32_: GrB_Semiring;
GxB_LXOR_GE_INT32_: GrB_Semiring;
GxB_EQ_GE_INT32_: GrB_Semiring;
GxB_ANY_GE_INT32_: GrB_Semiring;
GxB_LOR_GE_INT64_: GrB_Semiring;
GxB_LAND_GE_INT64_: GrB_Semiring;
GxB_LXOR_GE_INT64_: GrB_Semiring;
GxB_EQ_GE_INT64_: GrB_Semiring;
GxB_ANY_GE_INT64_: GrB_Semiring;
GxB_LOR_GE_UINT8_: GrB_Semiring;
GxB_LAND_GE_UINT8_: GrB_Semiring;
GxB_LXOR_GE_UINT8_: GrB_Semiring;
GxB_EQ_GE_UINT8_: GrB_Semiring;
GxB_ANY_GE_UINT8_: GrB_Semiring;
GxB_LOR_GE_UINT16_: GrB_Semiring;
GxB_LAND_GE_UINT16_: GrB_Semiring;
GxB_LXOR_GE_UINT16_: GrB_Semiring;
GxB_EQ_GE_UINT16_: GrB_Semiring;
GxB_ANY_GE_UINT16_: GrB_Semiring;
GxB_LOR_GE_UINT32_: GrB_Semiring;
GxB_LAND_GE_UINT32_: GrB_Semiring;
GxB_LXOR_GE_UINT32_: GrB_Semiring;
GxB_EQ_GE_UINT32_: GrB_Semiring;
GxB_ANY_GE_UINT32_: GrB_Semiring;
GxB_LOR_GE_UINT64_: GrB_Semiring;
GxB_LAND_GE_UINT64_: GrB_Semiring;
GxB_LXOR_GE_UINT64_: GrB_Semiring;
GxB_EQ_GE_UINT64_: GrB_Semiring;
GxB_ANY_GE_UINT64_: GrB_Semiring;
GxB_LOR_GE_FP32_: GrB_Semiring;
GxB_LAND_GE_FP32_: GrB_Semiring;
GxB_LXOR_GE_FP32_: GrB_Semiring;
GxB_EQ_GE_FP32_: GrB_Semiring;
GxB_ANY_GE_FP32_: GrB_Semiring;
GxB_LOR_GE_FP64_: GrB_Semiring;
GxB_LAND_GE_FP64_: GrB_Semiring;
GxB_LXOR_GE_FP64_: GrB_Semiring;
GxB_EQ_GE_FP64_: GrB_Semiring;
GxB_ANY_GE_FP64_: GrB_Semiring;

GxB_LOR_LE_INT8_: GrB_Semiring;
GxB_LAND_LE_INT8_: GrB_Semiring;
GxB_LXOR_LE_INT8_: GrB_Semiring;
GxB_EQ_LE_INT8_: GrB_Semiring;
GxB_ANY_LE_INT8_: GrB_Semiring;
GxB_LOR_LE_INT16_: GrB_Semiring;
GxB_LAND_LE_INT16_: GrB_Semiring;
GxB_LXOR_LE_INT16_: GrB_Semiring;
GxB_EQ_LE_INT16_: GrB_Semiring;
GxB_ANY_LE_INT16_: GrB_Semiring;
GxB_LOR_LE_INT32_: GrB_Semiring;
GxB_LAND_LE_INT32_: GrB_Semiring;
GxB_LXOR_LE_INT32_: GrB_Semiring;
GxB_EQ_LE_INT32_: GrB_Semiring;
GxB_ANY_LE_INT32_: GrB_Semiring;
GxB_LOR_LE_INT64_: GrB_Semiring;
GxB_LAND_LE_INT64_: GrB_Semiring;
GxB_LXOR_LE_INT64_: GrB_Semiring;
GxB_EQ_LE_INT64_: GrB_Semiring;
GxB_ANY_LE_INT64_: GrB_Semiring;
GxB_LOR_LE_UINT8_: GrB_Semiring;
GxB_LAND_LE_UINT8_: GrB_Semiring;
GxB_LXOR_LE_UINT8_: GrB_Semiring;
GxB_EQ_LE_UINT8_: GrB_Semiring;
GxB_ANY_LE_UINT8_: GrB_Semiring;
GxB_LOR_LE_UINT16_: GrB_Semiring;
GxB_LAND_LE_UINT16_: GrB_Semiring;
GxB_LXOR_LE_UINT16_: GrB_Semiring;
GxB_EQ_LE_UINT16_: GrB_Semiring;
GxB_ANY_LE_UINT16_: GrB_Semiring;
GxB_LOR_LE_UINT32_: GrB_Semiring;
GxB_LAND_LE_UINT32_: GrB_Semiring;
GxB_LXOR_LE_UINT32_: GrB_Semiring;
GxB_EQ_LE_UINT32_: GrB_Semiring;
GxB_ANY_LE_UINT32_: GrB_Semiring;
GxB_LOR_LE_UINT64_: GrB_Semiring;
GxB_LAND_LE_UINT64_: GrB_Semiring;
GxB_LXOR_LE_UINT64_: GrB_Semiring;
GxB_EQ_LE_UINT64_: GrB_Semiring;
GxB_ANY_LE_UINT64_: GrB_Semiring;
GxB_LOR_LE_FP32_: GrB_Semiring;
GxB_LAND_LE_FP32_: GrB_Semiring;
GxB_LXOR_LE_FP32_: GrB_Semiring;
GxB_EQ_LE_FP32_: GrB_Semiring;
GxB_ANY_LE_FP32_: GrB_Semiring;
GxB_LOR_LE_FP64_: GrB_Semiring;
GxB_LAND_LE_FP64_: GrB_Semiring;
GxB_LXOR_LE_FP64_: GrB_Semiring;
GxB_EQ_LE_FP64_: GrB_Semiring;
GxB_ANY_LE_FP64_: GrB_Semiring;

GxB_LOR_FIRST_BOOL_: GrB_Semiring;
GxB_LAND_FIRST_BOOL_: GrB_Semiring;
GxB_LXOR_FIRST_BOOL_: GrB_Semiring;
GxB_EQ_FIRST_BOOL_: GrB_Semiring;
GxB_ANY_FIRST_BOOL_: GrB_Semiring;
GxB_LOR_SECOND_BOOL_: GrB_Semiring;
GxB_LAND_SECOND_BOOL_: GrB_Semiring;
GxB_LXOR_SECOND_BOOL_: GrB_Semiring;
GxB_EQ_SECOND_BOOL_: GrB_Semiring;
GxB_ANY_SECOND_BOOL_: GrB_Semiring;
GxB_LOR_PAIR_BOOL_: GrB_Semiring;
GxB_LAND_PAIR_BOOL_: GrB_Semiring;
GxB_LXOR_PAIR_BOOL_: GrB_Semiring;
GxB_EQ_PAIR_BOOL_: GrB_Semiring;
GxB_ANY_PAIR_BOOL_: GrB_Semiring;
GxB_LOR_LOR_BOOL_: GrB_Semiring;
GxB_LAND_LOR_BOOL_: GrB_Semiring;
GxB_LXOR_LOR_BOOL_: GrB_Semiring;
GxB_EQ_LOR_BOOL_: GrB_Semiring;
GxB_ANY_LOR_BOOL_: GrB_Semiring;
GxB_LOR_LAND_BOOL_: GrB_Semiring;
GxB_LAND_LAND_BOOL_: GrB_Semiring;
GxB_LXOR_LAND_BOOL_: GrB_Semiring;
GxB_EQ_LAND_BOOL_: GrB_Semiring;
GxB_ANY_LAND_BOOL_: GrB_Semiring;
GxB_LOR_LXOR_BOOL_: GrB_Semiring;
GxB_LAND_LXOR_BOOL_: GrB_Semiring;
GxB_LXOR_LXOR_BOOL_: GrB_Semiring;
GxB_EQ_LXOR_BOOL_: GrB_Semiring;
GxB_ANY_LXOR_BOOL_: GrB_Semiring;
GxB_LOR_EQ_BOOL_: GrB_Semiring;
GxB_LAND_EQ_BOOL_: GrB_Semiring;
GxB_LXOR_EQ_BOOL_: GrB_Semiring;
GxB_EQ_EQ_BOOL_: GrB_Semiring;
GxB_ANY_EQ_BOOL_: GrB_Semiring;
GxB_LOR_GT_BOOL_: GrB_Semiring;
GxB_LAND_GT_BOOL_: GrB_Semiring;
GxB_LXOR_GT_BOOL_: GrB_Semiring;
GxB_EQ_GT_BOOL_: GrB_Semiring;
GxB_ANY_GT_BOOL_: GrB_Semiring;
GxB_LOR_LT_BOOL_: GrB_Semiring;
GxB_LAND_LT_BOOL_: GrB_Semiring;
GxB_LXOR_LT_BOOL_: GrB_Semiring;
GxB_EQ_LT_BOOL_: GrB_Semiring;
GxB_ANY_LT_BOOL_: GrB_Semiring;
GxB_LOR_GE_BOOL_: GrB_Semiring;
GxB_LAND_GE_BOOL_: GrB_Semiring;
GxB_LXOR_GE_BOOL_: GrB_Semiring;
GxB_EQ_GE_BOOL_: GrB_Semiring;
GxB_ANY_GE_BOOL_: GrB_Semiring;
GxB_LOR_LE_BOOL_: GrB_Semiring;
GxB_LAND_LE_BOOL_: GrB_Semiring;
GxB_LXOR_LE_BOOL_: GrB_Semiring;
GxB_EQ_LE_BOOL_: GrB_Semiring;
GxB_ANY_LE_BOOL_: GrB_Semiring;

GxB_PLUS_FIRST_FC32_: GrB_Semiring;
GxB_TIMES_FIRST_FC32_: GrB_Semiring;
GxB_ANY_FIRST_FC32_: GrB_Semiring;
GxB_PLUS_FIRST_FC64_: GrB_Semiring;
GxB_TIMES_FIRST_FC64_: GrB_Semiring;
GxB_ANY_FIRST_FC64_: GrB_Semiring;

GxB_PLUS_SECOND_FC32_: GrB_Semiring;
GxB_TIMES_SECOND_FC32_: GrB_Semiring;
GxB_ANY_SECOND_FC32_: GrB_Semiring;
GxB_PLUS_SECOND_FC64_: GrB_Semiring;
GxB_TIMES_SECOND_FC64_: GrB_Semiring;
GxB_ANY_SECOND_FC64_: GrB_Semiring;

GxB_PLUS_PAIR_FC32_: GrB_Semiring;
GxB_TIMES_PAIR_FC32_: GrB_Semiring;
GxB_ANY_PAIR_FC32_: GrB_Semiring;
GxB_PLUS_PAIR_FC64_: GrB_Semiring;
GxB_TIMES_PAIR_FC64_: GrB_Semiring;
GxB_ANY_PAIR_FC64_: GrB_Semiring;

GxB_PLUS_PLUS_FC32_: GrB_Semiring;
GxB_TIMES_PLUS_FC32_: GrB_Semiring;
GxB_ANY_PLUS_FC32_: GrB_Semiring;
GxB_PLUS_PLUS_FC64_: GrB_Semiring;
GxB_TIMES_PLUS_FC64_: GrB_Semiring;
GxB_ANY_PLUS_FC64_: GrB_Semiring;

GxB_PLUS_MINUS_FC32_: GrB_Semiring;
GxB_TIMES_MINUS_FC32_: GrB_Semiring;
GxB_ANY_MINUS_FC32_: GrB_Semiring;
GxB_PLUS_MINUS_FC64_: GrB_Semiring;
GxB_TIMES_MINUS_FC64_: GrB_Semiring;
GxB_ANY_MINUS_FC64_: GrB_Semiring;

GxB_PLUS_TIMES_FC32_: GrB_Semiring;
GxB_TIMES_TIMES_FC32_: GrB_Semiring;
GxB_ANY_TIMES_FC32_: GrB_Semiring;
GxB_PLUS_TIMES_FC64_: GrB_Semiring;
GxB_TIMES_TIMES_FC64_: GrB_Semiring;
GxB_ANY_TIMES_FC64_: GrB_Semiring;

GxB_PLUS_DIV_FC32_: GrB_Semiring;
GxB_TIMES_DIV_FC32_: GrB_Semiring;
GxB_ANY_DIV_FC32_: GrB_Semiring;
GxB_PLUS_DIV_FC64_: GrB_Semiring;
GxB_TIMES_DIV_FC64_: GrB_Semiring;
GxB_ANY_DIV_FC64_: GrB_Semiring;

GxB_PLUS_RDIV_FC32_: GrB_Semiring;
GxB_TIMES_RDIV_FC32_: GrB_Semiring;
GxB_ANY_RDIV_FC32_: GrB_Semiring;
GxB_PLUS_RDIV_FC64_: GrB_Semiring;
GxB_TIMES_RDIV_FC64_: GrB_Semiring;
GxB_ANY_RDIV_FC64_: GrB_Semiring;

GxB_PLUS_RMINUS_FC32_: GrB_Semiring;
GxB_TIMES_RMINUS_FC32_: GrB_Semiring;
GxB_ANY_RMINUS_FC32_: GrB_Semiring;
GxB_PLUS_RMINUS_FC64_: GrB_Semiring;
GxB_TIMES_RMINUS_FC64_: GrB_Semiring;
GxB_ANY_RMINUS_FC64_: GrB_Semiring;

GxB_BOR_BOR_UINT8_: GrB_Semiring;
GxB_BOR_BOR_UINT16_: GrB_Semiring;
GxB_BOR_BOR_UINT32_: GrB_Semiring;
GxB_BOR_BOR_UINT64_: GrB_Semiring;
GxB_BOR_BAND_UINT8_: GrB_Semiring;
GxB_BOR_BAND_UINT16_: GrB_Semiring;
GxB_BOR_BAND_UINT32_: GrB_Semiring;
GxB_BOR_BAND_UINT64_: GrB_Semiring;
GxB_BOR_BXOR_UINT8_: GrB_Semiring;
GxB_BOR_BXOR_UINT16_: GrB_Semiring;
GxB_BOR_BXOR_UINT32_: GrB_Semiring;
GxB_BOR_BXOR_UINT64_: GrB_Semiring;
GxB_BOR_BXNOR_UINT8_: GrB_Semiring;
GxB_BOR_BXNOR_UINT16_: GrB_Semiring;
GxB_BOR_BXNOR_UINT32_: GrB_Semiring;
GxB_BOR_BXNOR_UINT64_: GrB_Semiring;

GxB_BAND_BOR_UINT8_: GrB_Semiring;
GxB_BAND_BOR_UINT16_: GrB_Semiring;
GxB_BAND_BOR_UINT32_: GrB_Semiring;
GxB_BAND_BOR_UINT64_: GrB_Semiring;
GxB_BAND_BAND_UINT8_: GrB_Semiring;
GxB_BAND_BAND_UINT16_: GrB_Semiring;
GxB_BAND_BAND_UINT32_: GrB_Semiring;
GxB_BAND_BAND_UINT64_: GrB_Semiring;
GxB_BAND_BXOR_UINT8_: GrB_Semiring;
GxB_BAND_BXOR_UINT16_: GrB_Semiring;
GxB_BAND_BXOR_UINT32_: GrB_Semiring;
GxB_BAND_BXOR_UINT64_: GrB_Semiring;
GxB_BAND_BXNOR_UINT8_: GrB_Semiring;
GxB_BAND_BXNOR_UINT16_: GrB_Semiring;
GxB_BAND_BXNOR_UINT32_: GrB_Semiring;
GxB_BAND_BXNOR_UINT64_: GrB_Semiring;

GxB_BXOR_BOR_UINT8_: GrB_Semiring;
GxB_BXOR_BOR_UINT16_: GrB_Semiring;
GxB_BXOR_BOR_UINT32_: GrB_Semiring;
GxB_BXOR_BOR_UINT64_: GrB_Semiring;
GxB_BXOR_BAND_UINT8_: GrB_Semiring;
GxB_BXOR_BAND_UINT16_: GrB_Semiring;
GxB_BXOR_BAND_UINT32_: GrB_Semiring;
GxB_BXOR_BAND_UINT64_: GrB_Semiring;
GxB_BXOR_BXOR_UINT8_: GrB_Semiring;
GxB_BXOR_BXOR_UINT16_: GrB_Semiring;
GxB_BXOR_BXOR_UINT32_: GrB_Semiring;
GxB_BXOR_BXOR_UINT64_: GrB_Semiring;
GxB_BXOR_BXNOR_UINT8_: GrB_Semiring;
GxB_BXOR_BXNOR_UINT16_: GrB_Semiring;
GxB_BXOR_BXNOR_UINT32_: GrB_Semiring;
GxB_BXOR_BXNOR_UINT64_: GrB_Semiring;

GxB_BXNOR_BOR_UINT8_: GrB_Semiring;
GxB_BXNOR_BOR_UINT16_: GrB_Semiring;
GxB_BXNOR_BOR_UINT32_: GrB_Semiring;
GxB_BXNOR_BOR_UINT64_: GrB_Semiring;
GxB_BXNOR_BAND_UINT8_: GrB_Semiring;
GxB_BXNOR_BAND_UINT16_: GrB_Semiring;
GxB_BXNOR_BAND_UINT32_: GrB_Semiring;
GxB_BXNOR_BAND_UINT64_: GrB_Semiring;
GxB_BXNOR_BXOR_UINT8_: GrB_Semiring;
GxB_BXNOR_BXOR_UINT16_: GrB_Semiring;
GxB_BXNOR_BXOR_UINT32_: GrB_Semiring;
GxB_BXNOR_BXOR_UINT64_: GrB_Semiring;
GxB_BXNOR_BXNOR_UINT8_: GrB_Semiring;
GxB_BXNOR_BXNOR_UINT16_: GrB_Semiring;
GxB_BXNOR_BXNOR_UINT32_: GrB_Semiring;
GxB_BXNOR_BXNOR_UINT64_: GrB_Semiring;

GxB_MIN_FIRSTI_INT32_: GrB_Semiring;
GxB_MIN_FIRSTI_INT64_: GrB_Semiring;
GxB_MAX_FIRSTI_INT32_: GrB_Semiring;
GxB_MAX_FIRSTI_INT64_: GrB_Semiring;
GxB_ANY_FIRSTI_INT32_: GrB_Semiring;
GxB_ANY_FIRSTI_INT64_: GrB_Semiring;
GxB_PLUS_FIRSTI_INT32_: GrB_Semiring;
GxB_PLUS_FIRSTI_INT64_: GrB_Semiring;
GxB_TIMES_FIRSTI_INT32_: GrB_Semiring;
GxB_TIMES_FIRSTI_INT64_: GrB_Semiring;

GxB_MIN_FIRSTI1_INT32_: GrB_Semiring;
GxB_MIN_FIRSTI1_INT64_: GrB_Semiring;
GxB_MAX_FIRSTI1_INT32_: GrB_Semiring;
GxB_MAX_FIRSTI1_INT64_: GrB_Semiring;
GxB_ANY_FIRSTI1_INT32_: GrB_Semiring;
GxB_ANY_FIRSTI1_INT64_: GrB_Semiring;
GxB_PLUS_FIRSTI1_INT32_: GrB_Semiring;
GxB_PLUS_FIRSTI1_INT64_: GrB_Semiring;
GxB_TIMES_FIRSTI1_INT32_: GrB_Semiring;
GxB_TIMES_FIRSTI1_INT64_: GrB_Semiring;

GxB_MIN_FIRSTJ_INT32_: GrB_Semiring;
GxB_MIN_FIRSTJ_INT64_: GrB_Semiring;
GxB_MAX_FIRSTJ_INT32_: GrB_Semiring;
GxB_MAX_FIRSTJ_INT64_: GrB_Semiring;
GxB_ANY_FIRSTJ_INT32_: GrB_Semiring;
GxB_ANY_FIRSTJ_INT64_: GrB_Semiring;
GxB_PLUS_FIRSTJ_INT32_: GrB_Semiring;
GxB_PLUS_FIRSTJ_INT64_: GrB_Semiring;
GxB_TIMES_FIRSTJ_INT32_: GrB_Semiring;
GxB_TIMES_FIRSTJ_INT64_: GrB_Semiring;

GxB_MIN_FIRSTJ1_INT32_: GrB_Semiring;
GxB_MIN_FIRSTJ1_INT64_: GrB_Semiring;
GxB_MAX_FIRSTJ1_INT32_: GrB_Semiring;
GxB_MAX_FIRSTJ1_INT64_: GrB_Semiring;
GxB_ANY_FIRSTJ1_INT32_: GrB_Semiring;
GxB_ANY_FIRSTJ1_INT64_: GrB_Semiring;
GxB_PLUS_FIRSTJ1_INT32_: GrB_Semiring;
GxB_PLUS_FIRSTJ1_INT64_: GrB_Semiring;
GxB_TIMES_FIRSTJ1_INT32_: GrB_Semiring;
GxB_TIMES_FIRSTJ1_INT64_: GrB_Semiring;

GxB_MIN_SECONDI_INT32_: GrB_Semiring;
GxB_MIN_SECONDI_INT64_: GrB_Semiring;
GxB_MAX_SECONDI_INT32_: GrB_Semiring;
GxB_MAX_SECONDI_INT64_: GrB_Semiring;
GxB_ANY_SECONDI_INT32_: GrB_Semiring;
GxB_ANY_SECONDI_INT64_: GrB_Semiring;
GxB_PLUS_SECONDI_INT32_: GrB_Semiring;
GxB_PLUS_SECONDI_INT64_: GrB_Semiring;
GxB_TIMES_SECONDI_INT32_: GrB_Semiring;
GxB_TIMES_SECONDI_INT64_: GrB_Semiring;

GxB_MIN_SECONDI1_INT32_: GrB_Semiring;
GxB_MIN_SECONDI1_INT64_: GrB_Semiring;
GxB_MAX_SECONDI1_INT32_: GrB_Semiring;
GxB_MAX_SECONDI1_INT64_: GrB_Semiring;
GxB_ANY_SECONDI1_INT32_: GrB_Semiring;
GxB_ANY_SECONDI1_INT64_: GrB_Semiring;
GxB_PLUS_SECONDI1_INT32_: GrB_Semiring;
GxB_PLUS_SECONDI1_INT64_: GrB_Semiring;
GxB_TIMES_SECONDI1_INT32_: GrB_Semiring;
GxB_TIMES_SECONDI1_INT64_: GrB_Semiring;

GxB_MIN_SECONDJ_INT32_: GrB_Semiring;
GxB_MIN_SECONDJ_INT64_: GrB_Semiring;
GxB_MAX_SECONDJ_INT32_: GrB_Semiring;
GxB_MAX_SECONDJ_INT64_: GrB_Semiring;
GxB_ANY_SECONDJ_INT32_: GrB_Semiring;
GxB_ANY_SECONDJ_INT64_: GrB_Semiring;
GxB_PLUS_SECONDJ_INT32_: GrB_Semiring;
GxB_PLUS_SECONDJ_INT64_: GrB_Semiring;
GxB_TIMES_SECONDJ_INT32_: GrB_Semiring;
GxB_TIMES_SECONDJ_INT64_: GrB_Semiring;

GxB_MIN_SECONDJ1_INT32_: GrB_Semiring;
GxB_MIN_SECONDJ1_INT64_: GrB_Semiring;
GxB_MAX_SECONDJ1_INT32_: GrB_Semiring;
GxB_MAX_SECONDJ1_INT64_: GrB_Semiring;
GxB_ANY_SECONDJ1_INT32_: GrB_Semiring;
GxB_ANY_SECONDJ1_INT64_: GrB_Semiring;
GxB_PLUS_SECONDJ1_INT32_: GrB_Semiring;
GxB_PLUS_SECONDJ1_INT64_: GrB_Semiring;
GxB_TIMES_SECONDJ1_INT32_: GrB_Semiring;
GxB_TIMES_SECONDJ1_INT64_: GrB_Semiring;

GrB_PLUS_TIMES_SEMIRING_INT8_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_INT16_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_INT32_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_INT64_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_UINT8_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_UINT16_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_UINT32_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_UINT64_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_FP32_: GrB_Semiring;
GrB_PLUS_TIMES_SEMIRING_FP64_: GrB_Semiring;

GrB_PLUS_MIN_SEMIRING_INT8_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_INT16_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_INT32_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_INT64_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_UINT8_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_UINT16_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_UINT32_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_UINT64_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_FP32_: GrB_Semiring;
GrB_PLUS_MIN_SEMIRING_FP64_: GrB_Semiring;

GrB_MIN_PLUS_SEMIRING_INT8_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_INT16_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_INT32_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_INT64_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_UINT8_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_UINT16_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_UINT32_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_UINT64_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_FP32_: GrB_Semiring;
GrB_MIN_PLUS_SEMIRING_FP64_: GrB_Semiring;

GrB_MIN_TIMES_SEMIRING_INT8_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_INT16_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_INT32_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_INT64_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_UINT8_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_UINT16_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_UINT32_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_UINT64_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_FP32_: GrB_Semiring;
GrB_MIN_TIMES_SEMIRING_FP64_: GrB_Semiring;

GrB_MIN_FIRST_SEMIRING_INT8_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_INT16_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_INT32_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_INT64_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_UINT8_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_UINT16_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_UINT32_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_UINT64_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_FP32_: GrB_Semiring;
GrB_MIN_FIRST_SEMIRING_FP64_: GrB_Semiring;

GrB_MIN_SECOND_SEMIRING_INT8_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_INT16_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_INT32_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_INT64_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_UINT8_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_UINT16_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_UINT32_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_UINT64_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_FP32_: GrB_Semiring;
GrB_MIN_SECOND_SEMIRING_FP64_: GrB_Semiring;

GrB_MIN_MAX_SEMIRING_INT8_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_INT16_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_INT32_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_INT64_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_UINT8_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_UINT16_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_UINT32_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_UINT64_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_FP32_: GrB_Semiring;
GrB_MIN_MAX_SEMIRING_FP64_: GrB_Semiring;

GrB_MAX_PLUS_SEMIRING_INT8_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_INT16_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_INT32_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_INT64_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_UINT8_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_UINT16_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_UINT32_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_UINT64_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_FP32_: GrB_Semiring;
GrB_MAX_PLUS_SEMIRING_FP64_: GrB_Semiring;

GrB_MAX_TIMES_SEMIRING_INT8_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_INT16_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_INT32_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_INT64_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_UINT8_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_UINT16_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_UINT32_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_UINT64_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_FP32_: GrB_Semiring;
GrB_MAX_TIMES_SEMIRING_FP64_: GrB_Semiring;

GrB_MAX_FIRST_SEMIRING_INT8_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_INT16_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_INT32_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_INT64_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_UINT8_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_UINT16_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_UINT32_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_UINT64_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_FP32_: GrB_Semiring;
GrB_MAX_FIRST_SEMIRING_FP64_: GrB_Semiring;

GrB_MAX_SECOND_SEMIRING_INT8_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_INT16_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_INT32_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_INT64_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_UINT8_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_UINT16_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_UINT32_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_UINT64_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_FP32_: GrB_Semiring;
GrB_MAX_SECOND_SEMIRING_FP64_: GrB_Semiring;

GrB_MAX_MIN_SEMIRING_INT8_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_INT16_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_INT32_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_INT64_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_UINT8_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_UINT16_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_UINT32_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_UINT64_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_FP32_: GrB_Semiring;
GrB_MAX_MIN_SEMIRING_FP64_: GrB_Semiring;

GrB_LOR_LAND_SEMIRING_BOOL_: GrB_Semiring;
GrB_LAND_LOR_SEMIRING_BOOL_: GrB_Semiring;
GrB_LXOR_LAND_SEMIRING_BOOL_: GrB_Semiring;
GrB_LXNOR_LOR_SEMIRING_BOOL_: GrB_Semiring;

GrB_Matrix_resize :: (C: GrB_Matrix, nrows_new: GrB_Index, ncols_new: GrB_Index) -> GrB_Info #foreign libgraphblas;

GrB_Vector_resize :: (w: GrB_Vector, nrows_new: GrB_Index) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_resize :: (C: GrB_Matrix, nrows_new: GrB_Index, ncols_new: GrB_Index) -> GrB_Info #foreign libgraphblas;

GxB_Vector_resize :: (w: GrB_Vector, nrows_new: GrB_Index) -> GrB_Info #foreign libgraphblas;

anon_enum_7 :: enum u32 {
    GxB_SILENT           :: 0;
    GxB_SUMMARY          :: 1;
    GxB_SHORT            :: 2;
    GxB_COMPLETE         :: 3;
    GxB_SHORT_VERBOSE    :: 4;
    GxB_COMPLETE_VERBOSE :: 5;
}

GxB_Print_Level :: anon_enum_7;

GxB_Type_fprint :: (type: GrB_Type, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_UnaryOp_fprint :: (unaryop: GrB_UnaryOp, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_BinaryOp_fprint :: (binaryop: GrB_BinaryOp, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_IndexUnaryOp_fprint :: (op: GrB_IndexUnaryOp, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_SelectOp_fprint :: (selectop: GxB_SelectOp, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_Monoid_fprint :: (monoid: GrB_Monoid, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_Semiring_fprint :: (semiring: GrB_Semiring, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_Descriptor_fprint :: (descriptor: GrB_Descriptor, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_fprint :: (A: GrB_Matrix, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_Vector_fprint :: (v: GrB_Vector, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_Scalar_fprint :: (s: GrB_Scalar, name: *u8, pr: GxB_Print_Level, f: *FILE) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_import_CSR :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: **GrB_Index, Aj: **GrB_Index, Ax: **void, Ap_size: GrB_Index, Aj_size: GrB_Index, Ax_size: GrB_Index, iso: bool, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_pack_CSR :: (A: GrB_Matrix, Ap: **GrB_Index, Aj: **GrB_Index, Ax: **void, Ap_size: GrB_Index, Aj_size: GrB_Index, Ax_size: GrB_Index, iso: bool, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_import_CSC :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: **GrB_Index, Ai: **GrB_Index, Ax: **void, Ap_size: GrB_Index, Ai_size: GrB_Index, Ax_size: GrB_Index, iso: bool, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_pack_CSC :: (A: GrB_Matrix, Ap: **GrB_Index, Ai: **GrB_Index, Ax: **void, Ap_size: GrB_Index, Ai_size: GrB_Index, Ax_size: GrB_Index, iso: bool, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_import_HyperCSR :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: **GrB_Index, Ah: **GrB_Index, Aj: **GrB_Index, Ax: **void, Ap_size: GrB_Index, Ah_size: GrB_Index, Aj_size: GrB_Index, Ax_size: GrB_Index, iso: bool, nvec: GrB_Index, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_pack_HyperCSR :: (A: GrB_Matrix, Ap: **GrB_Index, Ah: **GrB_Index, Aj: **GrB_Index, Ax: **void, Ap_size: GrB_Index, Ah_size: GrB_Index, Aj_size: GrB_Index, Ax_size: GrB_Index, iso: bool, nvec: GrB_Index, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_import_HyperCSC :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: **GrB_Index, Ah: **GrB_Index, Ai: **GrB_Index, Ax: **void, Ap_size: GrB_Index, Ah_size: GrB_Index, Ai_size: GrB_Index, Ax_size: GrB_Index, iso: bool, nvec: GrB_Index, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_pack_HyperCSC :: (A: GrB_Matrix, Ap: **GrB_Index, Ah: **GrB_Index, Ai: **GrB_Index, Ax: **void, Ap_size: GrB_Index, Ah_size: GrB_Index, Ai_size: GrB_Index, Ax_size: GrB_Index, iso: bool, nvec: GrB_Index, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_import_BitmapR :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ab: **int8_t, Ax: **void, Ab_size: GrB_Index, Ax_size: GrB_Index, iso: bool, nvals: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_pack_BitmapR :: (A: GrB_Matrix, Ab: **int8_t, Ax: **void, Ab_size: GrB_Index, Ax_size: GrB_Index, iso: bool, nvals: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_import_BitmapC :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ab: **int8_t, Ax: **void, Ab_size: GrB_Index, Ax_size: GrB_Index, iso: bool, nvals: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_pack_BitmapC :: (A: GrB_Matrix, Ab: **int8_t, Ax: **void, Ab_size: GrB_Index, Ax_size: GrB_Index, iso: bool, nvals: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_import_FullR :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ax: **void, Ax_size: GrB_Index, iso: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_pack_FullR :: (A: GrB_Matrix, Ax: **void, Ax_size: GrB_Index, iso: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_import_FullC :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ax: **void, Ax_size: GrB_Index, iso: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_pack_FullC :: (A: GrB_Matrix, Ax: **void, Ax_size: GrB_Index, iso: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_import_CSC :: (v: *GrB_Vector, type: GrB_Type, n: GrB_Index, vi: **GrB_Index, vx: **void, vi_size: GrB_Index, vx_size: GrB_Index, iso: bool, nvals: GrB_Index, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_pack_CSC :: (v: GrB_Vector, vi: **GrB_Index, vx: **void, vi_size: GrB_Index, vx_size: GrB_Index, iso: bool, nvals: GrB_Index, jumbled: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_import_Bitmap :: (v: *GrB_Vector, type: GrB_Type, n: GrB_Index, vb: **int8_t, vx: **void, vb_size: GrB_Index, vx_size: GrB_Index, iso: bool, nvals: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_pack_Bitmap :: (v: GrB_Vector, vb: **int8_t, vx: **void, vb_size: GrB_Index, vx_size: GrB_Index, iso: bool, nvals: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_import_Full :: (v: *GrB_Vector, type: GrB_Type, n: GrB_Index, vx: **void, vx_size: GrB_Index, iso: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_pack_Full :: (v: GrB_Vector, vx: **void, vx_size: GrB_Index, iso: bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_export_CSR :: (A: *GrB_Matrix, type: *GrB_Type, nrows: *GrB_Index, ncols: *GrB_Index, Ap: **GrB_Index, Aj: **GrB_Index, Ax: **void, Ap_size: *GrB_Index, Aj_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_unpack_CSR :: (A: GrB_Matrix, Ap: **GrB_Index, Aj: **GrB_Index, Ax: **void, Ap_size: *GrB_Index, Aj_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_export_CSC :: (A: *GrB_Matrix, type: *GrB_Type, nrows: *GrB_Index, ncols: *GrB_Index, Ap: **GrB_Index, Ai: **GrB_Index, Ax: **void, Ap_size: *GrB_Index, Ai_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_unpack_CSC :: (A: GrB_Matrix, Ap: **GrB_Index, Ai: **GrB_Index, Ax: **void, Ap_size: *GrB_Index, Ai_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_export_HyperCSR :: (A: *GrB_Matrix, type: *GrB_Type, nrows: *GrB_Index, ncols: *GrB_Index, Ap: **GrB_Index, Ah: **GrB_Index, Aj: **GrB_Index, Ax: **void, Ap_size: *GrB_Index, Ah_size: *GrB_Index, Aj_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, nvec: *GrB_Index, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_unpack_HyperCSR :: (A: GrB_Matrix, Ap: **GrB_Index, Ah: **GrB_Index, Aj: **GrB_Index, Ax: **void, Ap_size: *GrB_Index, Ah_size: *GrB_Index, Aj_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, nvec: *GrB_Index, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_export_HyperCSC :: (A: *GrB_Matrix, type: *GrB_Type, nrows: *GrB_Index, ncols: *GrB_Index, Ap: **GrB_Index, Ah: **GrB_Index, Ai: **GrB_Index, Ax: **void, Ap_size: *GrB_Index, Ah_size: *GrB_Index, Ai_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, nvec: *GrB_Index, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_unpack_HyperCSC :: (A: GrB_Matrix, Ap: **GrB_Index, Ah: **GrB_Index, Ai: **GrB_Index, Ax: **void, Ap_size: *GrB_Index, Ah_size: *GrB_Index, Ai_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, nvec: *GrB_Index, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_export_BitmapR :: (A: *GrB_Matrix, type: *GrB_Type, nrows: *GrB_Index, ncols: *GrB_Index, Ab: **int8_t, Ax: **void, Ab_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, nvals: *GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_unpack_BitmapR :: (A: GrB_Matrix, Ab: **int8_t, Ax: **void, Ab_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, nvals: *GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_export_BitmapC :: (A: *GrB_Matrix, type: *GrB_Type, nrows: *GrB_Index, ncols: *GrB_Index, Ab: **int8_t, Ax: **void, Ab_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, nvals: *GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_unpack_BitmapC :: (A: GrB_Matrix, Ab: **int8_t, Ax: **void, Ab_size: *GrB_Index, Ax_size: *GrB_Index, iso: *bool, nvals: *GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_export_FullR :: (A: *GrB_Matrix, type: *GrB_Type, nrows: *GrB_Index, ncols: *GrB_Index, Ax: **void, Ax_size: *GrB_Index, iso: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_unpack_FullR :: (A: GrB_Matrix, Ax: **void, Ax_size: *GrB_Index, iso: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_export_FullC :: (A: *GrB_Matrix, type: *GrB_Type, nrows: *GrB_Index, ncols: *GrB_Index, Ax: **void, Ax_size: *GrB_Index, iso: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_unpack_FullC :: (A: GrB_Matrix, Ax: **void, Ax_size: *GrB_Index, iso: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_export_CSC :: (v: *GrB_Vector, type: *GrB_Type, n: *GrB_Index, vi: **GrB_Index, vx: **void, vi_size: *GrB_Index, vx_size: *GrB_Index, iso: *bool, nvals: *GrB_Index, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_unpack_CSC :: (v: GrB_Vector, vi: **GrB_Index, vx: **void, vi_size: *GrB_Index, vx_size: *GrB_Index, iso: *bool, nvals: *GrB_Index, jumbled: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_export_Bitmap :: (v: *GrB_Vector, type: *GrB_Type, n: *GrB_Index, vb: **int8_t, vx: **void, vb_size: *GrB_Index, vx_size: *GrB_Index, iso: *bool, nvals: *GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_unpack_Bitmap :: (v: GrB_Vector, vb: **int8_t, vx: **void, vb_size: *GrB_Index, vx_size: *GrB_Index, iso: *bool, nvals: *GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_export_Full :: (v: *GrB_Vector, type: *GrB_Type, n: *GrB_Index, vx: **void, vx_size: *GrB_Index, iso: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Vector_unpack_Full :: (v: GrB_Vector, vx: **void, vx_size: *GrB_Index, iso: *bool, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

anon_enum_8 :: enum u32 {
    GrB_CSR_FORMAT :: 0;
    GrB_CSC_FORMAT :: 1;
    GrB_COO_FORMAT :: 2;
}

GrB_Format :: anon_enum_8;

GrB_Matrix_import_BOOL :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *bool, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_INT8 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *int8_t, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_INT16 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *int16_t, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_INT32 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *int32_t, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_INT64 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *int64_t, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_UINT8 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *uint8_t, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_UINT16 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *uint16_t, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_UINT32 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *uint32_t, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_UINT64 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *uint64_t, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_FP32 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *float, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_FP64 :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *float64, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_import_UDT :: (A: *GrB_Matrix, type: GrB_Type, nrows: GrB_Index, ncols: GrB_Index, Ap: *GrB_Index, Ai: *GrB_Index, Ax: *void, Ap_len: GrB_Index, Ai_len: GrB_Index, Ax_len: GrB_Index, format: GrB_Format) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_BOOL :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *bool, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_INT8 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *int8_t, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_INT16 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *int16_t, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_INT32 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *int32_t, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_INT64 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *int64_t, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_UINT8 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *uint8_t, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_UINT16 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *uint16_t, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_UINT32 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *uint32_t, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_UINT64 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *uint64_t, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_FP32 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *float, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_FP64 :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *float64, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_export_UDT :: (Ap: *GrB_Index, Ai: *GrB_Index, Ax: *void, Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_exportSize :: (Ap_len: *GrB_Index, Ai_len: *GrB_Index, Ax_len: *GrB_Index, format: GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_exportHint :: (format: *GrB_Format, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_serialize :: (blob_handle: **void, blob_size_handle: *GrB_Index, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_serialize :: (blob: *void, blob_size_handle: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GxB_Vector_serialize :: (blob_handle: **void, blob_size_handle: *GrB_Index, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_serializeSize :: (blob_size_handle: *GrB_Index, A: GrB_Matrix) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_deserialize :: (C: *GrB_Matrix, type: GrB_Type, blob: *void, blob_size: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GrB_Matrix_deserialize :: (C: *GrB_Matrix, type: GrB_Type, blob: *void, blob_size: GrB_Index) -> GrB_Info #foreign libgraphblas;

GxB_Vector_deserialize :: (w: *GrB_Vector, type: GrB_Type, blob: *void, blob_size: GrB_Index, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_deserialize_type_name :: (type_name: *u8, blob: *void, blob_size: GrB_Index) -> GrB_Info #foreign libgraphblas;

GxB_Vector_sort :: (w: GrB_Vector, p: GrB_Vector, op: GrB_BinaryOp, u: GrB_Vector, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

GxB_Matrix_sort :: (C: GrB_Matrix, P: GrB_Matrix, op: GrB_BinaryOp, A: GrB_Matrix, desc: GrB_Descriptor) -> GrB_Info #foreign libgraphblas;

#scope_file

libgraphblas :: #foreign_library "linux/libgraphblas";
