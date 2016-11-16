use <Haste.scad> 



altura = 4; 
largura = 5.6; 
suporte_lateral = false; 

// Gera uma haste com as propriedades descritas nas variáveis 'largura', 'altura' e 'tamanho'. 
// 4 laterais horizontais 
tamanho = 80;
// 4 para partes inferiores e superiores 
//tamanho = 100;
// 4 laterias verticais 
//tamanho = 20;
//suporte_lateral = true; 
Haste(largura,altura,tamanho,suporte_lateral); 
