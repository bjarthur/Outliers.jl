using Outliers
using Base.Test

@testset "Tukey Fences" begin
    tukey_fences([1,100,101,102,200]) == (97.0,105.0)
end
