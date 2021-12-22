# GraphBLAS bindings for Jai

This is a work in progress, featuring automatically generated GraphBLAS bindings and a few convenience things on top.

## Instructions

Only tested on Linux. In order for this to work, you will have to have GraphBLAS installed on your system.

Clone this repository into your Jai modules directory as `GraphBLAS`. Then just `#import "GraphBLAS";` and go wild.

## TODO

 * [ ] Stop generating with `int32_t`, etc types; replace during the generation step.
 * [ ] Do something to handle complex valued types.
 * [ ] Intercept and fix the anonymous enum types.
 * [ ] Make Jai-style convenience functions where appropriate.
