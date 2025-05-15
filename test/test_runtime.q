@testcase "Runtime Initialization"
@run engine
@expect vmhandler to_start
@assert runtime_blocks > 0