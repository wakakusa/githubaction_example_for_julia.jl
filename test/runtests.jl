using githubaction_example_for_julia
using Test

@testset "githubaction_example_for_julia.jl" begin
    # Write your tests here.
    @test examplefunction(1,1)==2
end
