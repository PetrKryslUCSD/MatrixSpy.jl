module MatrixSpy

using PlotlyLight
using SparseArrays

function spy_matrix(A::SparseMatrixCSC, name="")
    I, J, V = findnz(A)
    p = PlotlyLight.Plot()
    p(x=J, y=I, mode="markers")
    p.layout.title = name
    p.layout.yaxis.title = "Row"
    p.layout.yaxis.range = [size(A, 1) + 1, 0]
    p.layout.xaxis.title = "Column"
    p.layout.xaxis.range = [0, size(A, 2) + 1]
    p.layout.xaxis.side = "top"
    p.layout.margin.pad = 10
    p
end


end # module MatrixSpy
