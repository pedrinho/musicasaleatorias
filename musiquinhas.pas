program musiquinhas;
type
	ListaDeMusicas = record
		jaFoiTocada : Boolean;
		nomeDaMusica : string
	end;
		
type arrayDeMusicas = array [0..9] of ListaDeMusicas;

var 
	musicas : arrayDeMusicas;
	sorteio : integer;
	musicasTocadas : integer;
begin
		
	musicas[0].nomeDaMusica := 'Karma police';
	musicas[1].nomeDaMusica := 'Michael Douglas';
	musicas[2].nomeDaMusica := 'Adoleta';
	musicas[3].nomeDaMusica := 'Dona Felicidade';
	musicas[4].nomeDaMusica := 'Hallowed Be Thy Name';
	musicas[5].nomeDaMusica := 'Ejaculação Precoce';
	musicas[6].nomeDaMusica := 'Hey';
	musicas[7].nomeDaMusica := 'Rato';
	musicas[8].nomeDaMusica := 'Coffe Shop';
	musicas[9].nomeDaMusica := 'Quando';
	
	musicasTocadas := 0;
	
	repeat
		sorteio := random(10);
		if (musicas[sorteio].jaFoiTocada = false) then
			begin
				musicas[sorteio].jaFoiTocada := true;
				writeln('tocando musica ', sorteio, ' ', musicas[sorteio].nomeDaMusica);
				musicasTocadas := musicasTocadas + 1;
			end;				
	until musicasTocadas > 9;
	
	readln();
end.