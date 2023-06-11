unit Fortes.Tests.Abastecimento.CalculoAbastecimento;

interface

uses
  DUnitX.TestFramework, Fortes.Abastecimento.Utils;

type
  [TestFixture]
  TCalculoAbastecimento = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure ValidarCalculoDoValorDeICMS;
  end;

implementation

procedure TCalculoAbastecimento.Setup;
begin
end;

procedure TCalculoAbastecimento.TearDown;
begin
end;

procedure TCalculoAbastecimento.ValidarCalculoDoValorDeICMS;
var
  ValorTotalItem: Double;
  AliquotaDeICMS: Double;
  ValorEsperado: Double;
  Resultado: Double;
begin
  //Arrange
  ValorTotalItem := 100.00;
  AliquotaDeICMS := 15.00;
  ValorEsperado := 15.00;

  //Act
  Resultado := TAbastecimentoUtils.CalcularIcmsSobreAbastecimento
    (ValorTotalItem, AliquotaDeICMS);

  //Assert
  Assert.AreEqual(ValorEsperado, Resultado, 'Valor esperado difere do valor retornado!');

end;

initialization
  TDUnitX.RegisterTestFixture(TCalculoAbastecimento);

end.
