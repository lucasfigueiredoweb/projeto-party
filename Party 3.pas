Program Pzim ;
type 
 	cadastro = record
 		nome:string;
 		cpf:integer;
 		dn:real;
 		sexo:string;
 		endereco:string;
 		fp:string
end;
arquivo = file of cadastro;
var i:integer;
    pacote,opcao:string;
    pessoa:cadastro;
    banco_dados: arquivo;
    
//Cadastro
Procedure registro;
begin
		begin
          
          append(banco_dados);
	     	Writeln('Para prosseguir com a compra insira seus dados');                                             
 	     Writeln;
 	     Write('Informe o nome: ');
 	     readln(pessoa.nome);
 	     Write('Informe o cpf: ');
 	     readln(pessoa.cpf);
 	     Write('Informe a sua data de nascimento: ');
 	     readln(pessoa.dn);
 	     Write('Informe o sexo: ');
 	     readln(pessoa.sexo);
 	     Write('Informe seu endere�o: ');
 	     readln(pessoa.endereco);
 	     Write( 'Informe a forma de pagamento: ');
 	     readln(pessoa.fp);
 	     write(banco_dados,pessoa);
 	     close(banco_dados);
 	     Writeln;
 	     Writeln('Dados registrados com sucesso.');
 	     delay(800);
       clrscr;    
          end;
end;    
    
    
    



//BuscaCadastro   
Procedure busca_cadastro;

 var continua:char;
     codigo,b:integer;
     a:integer;
     vlr:string;

Begin
 repeat
  clrscr;
  reset(banco_dados);
  
   writeln('======= CONSULTA DE CADASTRO =======');
   writeln;
   gotoxy(1,22);
    writeln('Quantidade de clientes cadastrados:',filesize(banco_dados)); 
   gotoxy(1,3);
   write('Digite o c�digo do cliente:');
    readln(codigo);
     
 
   clrscr; 
   
  codigo:=codigo-1;
  
  seek(banco_dados,codigo);
  
   writeln('======= CONSULTA DE CLIENTE =======');
   writeln;
   readln(banco_dados,pessoa);
    writeln('Codigo:',codigo+1);
    writeln('Nome:',pessoa.nome);
    writeln('Data de nascimento:',pessoa.dn);
    writeln('CPF:',pessoa.cpf);
    writeln('Sexo:',pessoa.sexo);
    writeln('Pagamento:',pessoa.fp);
    writeln('Endere�o:',pessoa.endereco);
    writeln;
    
  close(banco_dados);
   
  write('Deseja consultar outro cadastro? (S/N):');   
   continua:=upcase(readkey);
  while(continua<>'S') and (continua<>'N') do
  begin
   continua:=upcase(readkey);
  end;     
  until(continua='N');  
 clrscr;     
End;        
   

//Pizzaria
Procedure pizzaria;
var	adquirirp,add_pizzaria:string;
	pizzariap:integer;
	pizzaria,totalpizzaria:real;

Begin
	 begin
	 Writeln('Rod�zio Completo');
	 Writeln('15L de Refrigerante');
	 Writeln('Para 30 pessoas');
	 Writeln('O pacote da Pizzaria custa R$660,00');
	 Writeln;
	 Writeln('Deseja adquirir o pacote?[S/N]');
	 read(adquirirp);
	 adquirirp:=UpCase(adquirirp);
	 clrscr;
	 end;
	 
	 if(adquirirp = 'S')then
	 begin
	 registro;
	 Writeln('Deseja adicionar mais alguma pessoa?  OBS: Ser� cobrado R$24.80 por pessoa!.[S/N]');
	 read(add_pizzaria);
	 add_pizzaria:=UpCase(add_pizzaria);
	 clrscr;
	 end;
	 
	 if(add_pizzaria = 'N')then
	 begin
	 Writeln('Compra realizada com sucesso...');
	 Writeln('=============NOTA FISCAL============');
	 Writeln('O pacote contratado foi: ',pacote);
	 Writeln('Valor total a ser pago � de R$660,00');
	 Writeln('Volte sempre!');
	 Writeln('====================================');
	 readln;
	 readkey;
	 clrscr;
	 end;
	 	 
	 if(add_pizzaria = 'S')then
	 begin
	 Writeln('Quantas pessoas deseja adicionar?');
	 read(pizzariap);
	 clrscr;
	 pizzaria:= pizzariap * 24.80;
	 totalpizzaria:= pizzaria + 660;
	 Writeln('Compra realizada com sucesso...');
	 Writeln('=============NOTA FISCAL============');
	 Writeln('O pacote contratado foi: ',pacote);
	 Writeln('Valor total a ser pago � de:R$ ',totalpizzaria);
	 Writeln('Volte sempre!');
	 Writeln('====================================');
	 readln;
	 clrscr;
	 end;
	 		 
	 if(add_pizzaria = 'N')then
	 begin
	 Writeln('Compra realizada com sucesso...');
	 Writeln('=============NOTA FISCAL============');
	 Writeln('O pacote contratado foi: ',pacote);
	 Writeln('Valor total a ser pago � de R$660,00 ');
	 Writeln('Volte sempre!');
	 Writeln('====================================');
	 readln;
	 clrscr;
	 end;    
End;        
    
//Churrascaria
Procedure churrascaria;
var adquirirc,add_churrasco:string;
    churrascop:integer;
    churrasco,totalchurrasco:real;

Begin 
      begin
	 Writeln('Churrasco completo');
	 Writeln('Com direito a 60 pessoas');
	 Writeln('Sobremesa');
	 Writeln('30 Litros de refrigerante');
	 Writeln('O pacote Churrascaria Boi Gordo custa R$1,800.00');
	 Writeln;
	 Writeln('Deseja adiquirir o pacote?[S/N]');
	 read(adquirirc);
 	 adquirirc:=UpCase(adquirirc);
 	 clrscr;
	 end;
	 
	 if(adquirirc = 'S')then
 	begin 
	 registro;
	 Writeln('Deseja adicionar mais alguma pessoa? [S/N]');
	 read(add_churrasco);
	 clrscr;
	 add_churrasco:=UpCase(add_churrasco);
	 end;
	 
	 if(add_churrasco = 'S')then
	 begin
	 Writeln('Quantas pessoas ira adicionar?   OBS: Ser� cobrado R$32,00 por pessoa!. ');
	 read(churrascop);
	 clrscr;
	 churrasco:= churrascop * 24.80;
	 totalchurrasco:= churrasco + 1800;
	 Writeln('Compra realizada com sucesso...');
	 Writeln('=============NOTA FISCAL============');
	 Writeln('O pacote contratado foi: ',pacote);
	 Writeln('Valor total a ser pago � de: ',totalchurrasco);
	 Writeln('Volte sempre!');
	 Writeln('====================================');
	 readln;
	 clrscr;
	 end;
	 
	 if(add_churrasco = 'N')then
	 begin
	 Writeln('Compra realizada com sucesso...');
	 Writeln('=============NOTA FISCAL============');
	 Writeln('O pacote contratado foi: ',pacote);
	 Writeln('Valor total a ser pago � de R$1,800.00');
	 Writeln('Volte sempre!');
	 Writeln('====================================');
	 readln;
	 clrscr;
	 end;
   clrscr;   
End;

    
//Pacote Master
Procedure pacotemaster;
var  adquirirm,brinquedo,animador,addm,opcao_addm:string;
	add_bolo2,bolo2,add_lembrancinhas2,lembrancinhas2,add_docinhos2,docinhos2,add_salgados2,salgados2,add_refrigerantes2:integer;
	refrigerantes2,total2:real;


Begin
	 begin
 	 Writeln('O pacote Master oferece: ');
 	 Writeln;
 	 Writeln('Um bolo de 10kg');
 	 Writeln('120 Lembrancinhas');
 	 Writeln('500 Salgados');
 	 Writeln('700 docinhos');
 	 Writeln('50 litros de refrigerante');
 	 Writeln('Um brinquedo a sua escolha: Pula-Pula / Cama El�stica / Piscina de bolinha');
 	 Writeln('Com direito tamb�m a um animador, seja um Palha�o ou M�gico');
 	 Writeln('O pacote Master custa R$1,500,00');
 	 Writeln;
 	 Writeln('Deseja adquirir este pacote? [S/N]');
 	 read(adquirirm);
 	 adquirirm:=UpCase(adquirirm);
 	 clrscr;
 	 end;
 	
 	    if(adquirirm = 'S')then
 	    begin
 	    registro;	
 	    Writeln('Qual brinquedo deseja? [Pula-Pula / Cama El�stica / Piscina de bolinha] ');
 	    read(brinquedo);
 	    Writeln('Qual animador deseja? [Palha�o / M�gico] ');
 	    read(animador);
 	    Writeln('Informa��es salvas com sucesso.');
 	    delay(800);
 	    clrscr;
 	    Writeln('Deseja adicionar mais alguma coisa? [S/N] ');                                     
 	    read(addm);
	    addm:=UpCase(addm);                                            
 	    end;
 	    
 	       if(addm = 'N')then
 	       begin
 	       Writeln('Compra realizada com sucesso...');
	       Writeln('=============NOTA FISCAL============');
	       Writeln('O pacote contratado foi: ',pacote);
	       Writeln('Valor total a ser pago � de R$1,500,00');
	       Writeln('Volte sempre!');
	       Writeln('====================================');
	       readln;
	       clrscr;
	       end;
	       
 	       if(addm = 'S')then
		   begin                                       
		   Repeat                                             
 	        Writeln('[1] - Kg do bolo R$13,00');                
 	        Writeln('[2] - Lembrancinha R$8,00');               
 	        Writeln('[3] - 100 Docinhos R$18,00');              
 	        Writeln('[4] - 100 Salgados R$23,00');              
 	        Writeln('[5] - Refrigerante(unidade de 2L) R$4,50');
 	        Writeln('[6] - Finalizar');                                            
 	        Write('==>');                                    
 	        read(opcao_addm);                                  
 	              
	     if(opcao_addm = '1')then
		begin
 	     Writeln('Quantos kg de bolo deseja adicionar?');
 	     read(add_bolo2);
 	     clrscr;
 	     bolo2:=add_bolo2 * 13;
 	     end;
 	     
 	     if(opcao_addm = '2')then
		begin
		Writeln('Quantas lembrancinhas deseja adicionar?');
		read(add_lembrancinhas2);
		clrscr;
		lembrancinhas2:=add_lembrancinhas2 * 8;
		end;
		
		if(opcao_addm = '3')then 
		begin
		Writeln('Quantos centos de docinhos deseja adicionar?');
		read(add_docinhos2);
		clrscr;
		docinhos2:=add_docinhos2 * 18;
		end;
		
		if(opcao_addm = '4')then  
		begin
		Writeln('Quantos centos de salgados deseja adicionar?');
		read(add_salgados2);
		clrscr;
		salgados2:= add_salgados2 * 23;
		end;
		
		if(opcao_addm = '5')then
		begin  
		Writeln('Quantos refrigerantes de 2L deseja adicionar?');
		read(add_refrigerantes2); 
		clrscr;
		refrigerantes2:= add_refrigerantes2 * 4.50;    
 	     end;
		 			 
		total2:= refrigerantes2 + salgados2 + docinhos2 + lembrancinhas2 + bolo2 + 1500.00;
    	     until (opcao_addm ='6');
    	     
          if(opcao_addm = '6')then
          begin
          clrscr;
          Writeln('Compra realizada com sucesso...');
	     Writeln('=============NOTA FISCAL============');
	     Writeln('O pacote contratado foi: ',pacote);
	     Writeln('Valor total a ser pago � de: ',total2);
	     Writeln('Volte sempre!');
	     Writeln('====================================');
		readln;
		clrscr;
		end;
		end;
End;

//Pacote B�sico    
Procedure pacotebasico;
var opcao:char;
    pacote,adquirirb,addb,opcao_addb:string;
    bolo,add_bolo,add_lembrancinhas,lembrancinhas,add_docinhos,docinhos,add_salgados,salgados,add_refrigerantes:integer;
    refrigerantes,total:real;


Begin 
	 begin
	 Writeln('O pacote B�sico oferece: ');
 	 writeln;
 	 Writeln('Um bolo de 2 � 5kg');
 	 Writeln('40 Lembrancinhas');
 	 Writeln('40 Convites');
 	 Writeln('120 Salgados');
 	 Writeln('20 Litros de Refrigerante');
 	 Writeln('40 Docinhos');
 	 Writeln('O pacote b�sico custa R$600,00');
 	 Writeln;
 	 Writeln('Deseja adquirir este pacote? [S/N]');
 	 read(adquirirb);
 	 adquirirb:=UpCase(adquirirb);
 	 end;
 	 clrscr;

		if(adquirirb = 'S')then
  		begin
 		 registro;
 	 	Writeln('Deseja adicionar mais algum produto na sua compra? [S/N] ');
 	 	read(addb);
 	 	addb:=UpCase(addb);
 	 	end;
 	 	
 	 	if(addb = 'S')then
 	 	begin
 	 	Repeat
 	     Writeln('[1] - Kg do bolo R$13,00');
 	     Writeln('[2] - Lembrancinha R$8,00');
 	     Writeln('[3] - 100 Docinhos R$18,00');
 	     Writeln('[4] - 100 Salgados R$23,00');
 	     Writeln('[5] - Refrigerante(unidade de 2L) R$4,50');
 	     Writeln('[6] - Finalizar');
 	     Write('==>');
 	     read(opcao_addb);
 	     clrscr;
 	     
		if(opcao_addb = '1')then
		begin
 	     Writeln('Quantos kg de bolo deseja adicionar?');
 	     read(add_bolo);
 	     clrscr;
 	     bolo:=add_bolo * 13;
 	     end;
 	     
 	     if(opcao_addb = '2')then
		begin
		Writeln('Quantas lembrancinhas deseja adicionar?');
		read(add_lembrancinhas);
		clrscr;
		lembrancinhas:=add_lembrancinhas * 8;
		end;
		
		if(opcao_addb = '3')then 
		begin
		Writeln('Quantos centos de docinhos deseja adicionar?');
		read(add_docinhos);
		clrscr;
		docinhos:=add_docinhos * 18;                                                     
		end;
		
		if(opcao_addb = '4')then  
		begin
		Writeln('Quantos centos de salgados deseja adicionar?');
		read(add_salgados);
		clrscr;
		salgados:= add_salgados * 23;
		end;
		
		if(opcao_addb = '5')then
		begin  
		Writeln('Quantos refrigerantes de 2L deseja adicionar?');
		read(add_refrigerantes);
		clrscr;
		refrigerantes:= add_refrigerantes * 4.50;    
 	     end;
 	     
 	until (opcao_addb = '6');
 	total:= refrigerantes + salgados + docinhos + lembrancinhas + bolo + 600;
 	     
 	     if(opcao_addb = '6') then
		begin
	 clrscr;	
		Writeln('Compra realizada com sucesso...');
		Writeln;
		Writeln;
		Writeln('=============NOTA FISCAL=============');
		Writeln('O pacote contratado foi: ',pacote);
		Writeln('Valor total a ser pago � de ',total);
		Writeln('Volte sempre!');
		Writeln('=====================================');
		readln;
		clrscr;
		end;
		end;
		
		if(addb = 'N') then
		begin
	     clrscr;	
		Writeln('Compra realizada com sucesso...');
		Writeln;
		Writeln;
		Writeln('=============NOTA FISCAL=============');
		Writeln('O pacote contratado foi ',pacote);
		Writeln('Valor total a ser pago � de R$600,00' );
		Writeln('Volte sempre!');
		Writeln('=====================================');
		readln;
		clrscr;
		end;
End;	 

//MENU
 Procedure menu;
 var i:integer;
     opcao:char;
  
 Begin
        begin
    Repeat
    gotoxy(10,5);
    Writeln(' ||||||||     //\\      |||||||||   |||||||||||   \\      // ');
    gotoxy(10,6);
    Writeln(' ||    ||    //  \\     ||     //       ||         \\    //  ');
    gotoxy(10,7); 
    Writeln(' ||||||||   //    \\    ||    //        ||          \\  //  ');
    gotoxy(10,8);
    Writeln(' ||        /||||||||\   ||||||\\        ||           \\//    ');
    gotoxy(10,9); 
    Writeln(' ||       //        \\  ||     \\       ||            //     ');
    gotoxy(10,10);
    Writeln(' ||      //          \\ ||      \\      ||           //      ');
    gotoxy(10,11);
    gotoxy(27,14);
    Writeln('Escolha o tipo de evento:');
    gotoxy(27,15);
    Writeln('[1] - Festa Infantil');
    gotoxy(27,16);
    Writeln('[2] - Confraterniza�ao');
    gotoxy(27,17);
    Writeln('[3] - Sair do programa');
    gotoxy(27,18);
    writeln('[4] - Consultar cadastro');
    write('==> ');
    readln(opcao);
    clrscr;
    
    if (opcao= '4') then
     busca_cadastro;

    if(opcao = '1')then
    begin
 	 Writeln('Pacote B�sico ou Pacote Master?');
 	 read(pacote);
 	 pacote:=UpCase(pacote);
 	 
 	 clrscr;
 	 
 	 
	 if(pacote = 'PACOTE BASICO') or (pacote= 'BASICO') then
	 pacotebasico;
	 
	 if(pacote= 'PACOTE MASTER') or (pacote = 'MASTER') then
	 pacotemaster;
     clrscr;
   menu;
    end;
    
    if( opcao = '2')then
	 begin
	 Writeln('Churrascaria Boi Gordo ou Pizzaria do Bairro?');
	 read(pacote);
	 pacote:=UpCase(pacote);
	 clrscr;          
	
	 
	if(pacote = 'CHURRASCARIA BOI GORDO') or (pacote = 'CHURRASCARIA') or (pacote = 'CHURRASCO')then
	churrascaria;
     
     if(pacote = 'PIZZARIA DO BAIRRO') or (pacote = 'PIZZARIA') or (pacote = 'PIZZA') then
     pizzaria;
     clrscr;
     menu;
   end;  
     if(opcao = '3')then
     begin
     	gotoxy(1,11);
     Writeln('________________________________________________________________________________');
     gotoxy(1,12);
     Writeln(' ))))                                                                      (((( ');
	gotoxy(1,13); 
     Writeln('________________________________________________________________________________');
     delay(600);
     clrscr;
     gotoxy(1,11);
     Writeln('________________________________________________________________________________');
     gotoxy(1,12);
     Writeln('               ))))   Obrigado por usar nossos servi�os   ((((');
     gotoxy(1,13);
     Writeln('________________________________________________________________________________');
     delay(600);
     clrscr;
     gotoxy(1,11);
     Writeln('________________________________________________________________________________');
     gotoxy(1,12);
     Writeln(' ))))                                                                      (((( ');
     gotoxy(1,13);
     Writeln('________________________________________________________________________________');
     delay(600);
     clrscr;
     gotoxy(1,11);
     Writeln('________________________________________________________________________________');
     gotoxy(1,12);
     Writeln('               ))))   Obrigado por usar nossos servi�os   ((((');
     gotoxy(1,13);
     Writeln('________________________________________________________________________________');
     delay(600);
     clrscr;
     gotoxy(1,11);
     Writeln('________________________________________________________________________________'); 
     gotoxy(1,12);
     Writeln(' ))))                                                                      (((( '); 
     gotoxy(1,13);
     Writeln('________________________________________________________________________________');
     delay(600);
     clrscr;
     gotoxy(1,11);
     Writeln('________________________________________________________________________________');
     gotoxy(1,12);                                                            
     Writeln('               ))))   Obrigado por usar nossos servi�os   ((((');   
     gotoxy(1,13);
     Writeln('________________________________________________________________________________');
     delay(600);
     clrscr;
     end;
   until (opcao ='3'); 
  end;
   end;
 
 Begin     
 assign(banco_dados, 'C:\Users\Marta\Desktop\cadastro.dat');
 	textcolor(10);
 	 Writeln('Conectando aos servidores...');
 	 delay(100);
	 Writeln('Procurando banco de dados...');
	 delay(100);
	 Writeln('Carregando cadastros...');
	 delay(100);
	 Writeln('Inicializando...');
      delay(100);
 	 gotoxy(1,28);
 	 Writeln('Carregando...');
 	 for i:= 1 to 80 do
 	 begin
 	 write(#177);
 	 end;
 	 gotoxy(1,29);                                                         
 	 for i:= 1 to 80 do
 	 begin
 	 write(#219);  
 	 delay(10);
  	 end;
 	clrscr;
 	
  menu;
End.
