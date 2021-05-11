using Bhaskara, Test

function tests()
  @testset "Raízes reais e diferentes" begin #agrupa os testes
    @test bhaskara(1, 0, -4) == (-2.0, 2.0) 
    @test bhaskara(1, -5, 6) == (2.0, 3.0) #realiza o testes
    @test bhaskara(2, -10, 12) == (2.0, 3.0)
    @test bhaskara(1, 1, 0) == (-1.0, 0.0)
    @test bhaskara(1, -1, -1) == ((1 - √5)/2, (1 + √5)/2)
  end
  @testset "Raízes iguais" begin #agrupa os testes
    @test bhaskara(1, 2, 1) == (-1.0, -1.0) 
    @test bhaskara(1, -4, 4) == (2.0, 2.0) #realiza o testes
    @test bhaskara(1, -6, 9) == (3.0, 3.0)
    @test bhaskara(4,-4, 1) == (0.5, 0.5)
  end
  @testset "Raízes complexas" begin #agrupa os testes
    @test bhaskara(1, 0, 4) == (-2im, 2im) 
    @test bhaskara(1, -2, 5) == (1-2im, 1+2im) #realiza o testes
    @test bhaskara(1, 1, 2) == ((-1 - √7im)/2, (-1 + √7im)/2)
  end
  @testset "a = 0" begin
    @test_throws ArgumentError bhaskara(0, 1, 1)
    @test_throws ArgumentError bhaskara(0, 2, 3)
    @test_throws ArgumentError bhaskara(0, 4, 5)
  end
end

tests()