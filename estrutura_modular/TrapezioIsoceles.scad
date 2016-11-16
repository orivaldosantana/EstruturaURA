
module TrapezioIsoceles(profundidade,largura,altura,deslocamento) {

//altura = 4;
//profundidade = 5; 
//largura = 6;
//deslocamento = 1; 
//altura=altura+0.2;
deslocamentoZ = -altura/2;
deslocamentoX = -largura/2; 
deslocamentoY = -profundidade/2;

pontosTrapezio = [
  [ deslocamentoX, deslocamentoY,  deslocamentoZ ],  //0
  [ deslocamentoX+largura, deslocamentoY,  deslocamentoZ ],  //1
  [ deslocamentoX+largura, deslocamentoY+profundidade,  deslocamentoZ ],  //2
  [ deslocamentoX+0, deslocamentoY+profundidade, deslocamentoZ ],  //3
  [ deslocamentoX+deslocamento,  deslocamentoY, deslocamentoZ+altura ],  //4
  [ deslocamentoX+largura-deslocamento,  deslocamentoY, deslocamentoZ+altura ],  //5
  [ deslocamentoX+largura-deslocamento,deslocamentoY+profundidade, deslocamentoZ+altura ],  //6
  [ deslocamentoX+deslocamento,  deslocamentoY+profundidade, deslocamentoZ+altura ]]; //7
  
facesTrapezio = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]; // left
  
polyhedron( pontosTrapezio, facesTrapezio );


//polygon([[0,0],[5,0],[4,3],[1,3]]);

//cube([17,17,3]);
}


