module mbas001
using Test
using SparseArrays
using MatrixSpy
using LinearAlgebra
function test()
    A = sprand(100, 310, 0.1) + LinearAlgebra.I
    p = MatrixSpy.spy_matrix(A, "Test")
    display(p)
    @test 1 == 1
    true
end
test()
nothing
end
