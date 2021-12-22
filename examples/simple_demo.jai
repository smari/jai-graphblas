// This demo doesn't do much yet, sorry.

main :: () {
    A : GrB_Matrix;
    info : GrB_Info;

    GrB_init(.GrB_NONBLOCKING);

    nthreads : u32;
    GxB_Global_Option_get(.GxB_GLOBAL_NTHREADS, *nthreads);

    print("threads: %\n", nthreads);

    

    GrB_finalize();
}


#import "GraphBLAS";
#import "Basic";
