Program Pzim ;
var i:integer;
    pacote,opcao:string;
    
//MENU
 Procedure menu;
 var i,opcao:integer;
 
 Begin
    clrscr;
    textcolor(10);   
    begin
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
    Writeln('[2] - Confraternizaçao');
    gotoxy(27,17);
    Writeln('[3] - Sair do programa');
    gotoxy(27,18);
    write('==> ');
    gotoxy(27,19);
    read(opcao);
    clrscr;
    end;
   end;
   

//Pizzaria
Procedure pizzaria;
var	adquirirp,add_pizzaria:string;
	pizzariap:integer;
	pizzaria,totalpizzaria:real;

Begin
	 begin
	 Writeln('Rodízio Completo');
	 Writeln('15L de Refrigerante');
	 Writeln('Para 30 pessoas');
	 Writeln('O pacote da Pizzaria custa R$660,00');
	 Writeln;
	 Writeln('Deseja adiquirir o pacote?[S/N]');
	 read(adquirirp);
	 adquirirp:=UpCase(adquirirp);
	 clrscr;
	 end;
	 
	 if(adquirirp = 'S')then
	 begin
	 Writeln('Deseja adicionar mais alguma pessoa? [S/N]');
	 read(add_pizzaria);
	 add_pizzaria:=UpCase(add_pizzaria);
	 clrscr;
	 end;
	 
	 if(add_pizzaria = 'N')then
	 begin
	 Writeln('Compra realizada com sucesso...');
	 Writeln('=============NOTA FISCAL============');
	 Writeln('O pacote contratado foi: ',pacote);
	 Writeln('Valor total a ser pago é de R$660,00');
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
	 Writeln('Valor total a ser pago é de:R$ ',totalpizzaria);
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
	 Writeln('Valor total a ser pago é de R$660,00 ');
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
	 Writeln('Deseja adicionar mais alguma pessoa? [S/N]');
	 read(add_churrasco);
	 clrscr;
	 add_churrasco:=UpCase(add_churrasco);
	 end;
	 
	 if(add_churrasco = 'S')then
	 begin
	 Writeln('Quantas pessoas ira adicionar?   OBS: Será cobrado R$24.80 por pessoa!. ');
	 read(churrascop);
	 clrscr;
	 churrasco:= churrascop * 24.80;
	 totalchurrasco:= churrasco + 1800;
	 Writeln('Compra realizada com sucesso...');
	 Writeln('=============NOTA FISCAL============');
	 Writeln('O pacote contratado foi: ',pacote);
	 Writeln('Valor total a ser pago é de: ',totalchurrasco);
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
	 Writeln('Valor total a ser pago é de R$1,800.00');
	 Writeln('Volte sempre!');
	 Writeln('====================================');
	 readln;
	 clrscr;
	 end;   
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
 	 Writeln('Um brinquedo a sua escolha: Pula-Pula / Cama Elástica / Piscina de bolinha');
 	 Writeln('Com direito também a um animador, seja um Palhaço ou Mágico');
 	 Writeln('O pacote Master custa R$1,500,00');
 	 Writeln;
 	 Writeln('Deseja adquirir este pacote? [S/N]');
 	 read(adquirirm);
 	 adquirirm:=UpCase(adquirirm);
 	 clrscr;
 	 end;
 	
 	    if(adquirirm = 'S')then
 	    begin		
 	    Writeln('Qual brinquedo deseja? [Pula-Pula / Cama Elástica / Piscina de bolinha] ');
 	    read(brinquedo);
 	    Writeln('Qual animador deseja? [Palhaço / Mágico] ');
 	    read(animador);
 	    Writeln('Informações salvas com sucesso.');
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
	       Writeln('Valor total a ser pago é de R$1,500,00');
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
	     Writeln('Valor total a ser pago é de: ',total2);
	     Writeln('Volte sempre!');
	     Writeln('====================================');
		readln;
		clrscr;
		end;
		end;
End;

//Pacote Básico    
Procedure pacotebasico;
var opcao:char;
    pacote,adquirirb,addb,opcao_addb:string;
    bolo,add_bolo,add_lembrancinhas,lembrancinhas,add_docinhos,docinhos,add_salgados,salgados,add_refrigerantes:integer;
    refrigerantes,total:real;


Begin 
	 begin
	 Writeln('O pacote Básico oferece: ');
 	 writeln;
 	 Writeln('Um bolo de 2 á 5kg');
 	 Writeln('40 Lembrancinhas');
 	 Writeln('40 Convites');
 	 Writeln('120 Salgados');
 	 Writeln('20 Litros de Refrigerante');
 	 Writeln('40 Docinhos');
 	 Writeln('O pacote básico custa R$600,00');
 	 Writeln;
 	 Writeln('Deseja adquirir este pacote? [S/N]');
 	 read(adquirirb);
 	 adquirirb:=UpCase(adquirirb);
 	 end;
 	 clrscr;

		if(adquirirb = 'S')then
 	     begin
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
		Writeln('Valor total a ser pago é de ',total);
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
		Writeln('Valor total a ser pago é de R$600,00' );
		Writeln('Volte sempre!');
		Writeln('=====================================');
		readln;
		clrscr;
		end;
End;	 

 
 Begin
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
    Writeln('[2] - Confraternizaçao');
    gotoxy(27,17);
    Writeln('[3] - Sair do programa');
    gotoxy(27,18);
    write('==> ');
    read(opcao);
    clrscr;
    

    if(opcao = '1')then
    begin
 	 Writeln('Pacote Básico ou Pacote Master?');
 	 read(pacote);
 	 pacote:=UpCase(pacote);
 	 end;
 	 clrscr;
 	 
 	 
	 if(pacote = 'PACOTE BASICO') or (pacote= 'BASICO') then
	 pacotebasico;
	 
	 if(pacote= 'PACOTE MASTER') or (pacote = 'MASTER') then
	 pacotemaster;
     
   
    
    if( opcao = '2')then
	 begin
	 Writeln('Churrascaria Boi Gordo ou Pizzaria do Bairro?');
	 read(pacote);
	 pacote:=UpCase(pacote);
	 clrscr;          
	 end;
	 
	if(pacote = 'CHURRASCARIA BOI GORDO') or (pacote = 'CHURRASCARIA') or (pacote = 'CHURRASCO')then
	churrascaria;
     
     if(pacote = 'PIZZARIA DO BAIRRO') or (pacote = 'PIZZARIA') or (pacote = 'PIZZA') then
     pizzaria;
     
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
     Writeln('               ))))   Obrigado por usar nossos serviços   ((((');
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
     Writeln('               ))))   Obrigado por usar nossos serviços   ((((');
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
     Writeln('               ))))   Obrigado por usar nossos serviços   ((((');   
     gotoxy(1,13);
     Writeln('________________________________________________________________________________');
     delay(600);
     clrscr;
     end;
   until (opcao ='3'); 
  end;  
End.
