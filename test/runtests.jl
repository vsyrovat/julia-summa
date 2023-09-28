using Revise
using Summa
using Test

@testset "summa" begin
    @test summa(2) == 2
    @test summa("2") == 2
    @test summa("dva") == [(1,)]
    @test summa(("olo",)) == [(1,1)]

    @test summa(1, 2, 3, 4, 5) == 15 #
    @test summa(1, 2, 3.0, 4, "5") == 15.0 #
    @test summa(1, 2, "ololo", 4, 5) == [(3,)]
    @test summa((1, 2, "ololo", 4, 5)) == [(1, 3,)]
    @test summa((1, 2, 3.0), [4, "5"]) == 15.0 #
    @test summa((1, 2, "tri"), [4, "pyat"]) == [(1, 3), (2, 2)] #
end
