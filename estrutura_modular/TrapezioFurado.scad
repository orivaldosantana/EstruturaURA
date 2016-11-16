

use <TrapezioIsoceles.scad>


module TrapezioFurado(profundidade,largura,altura) {

    //altura = 4; 
    tamCubo = 24; 
    deslocamento = 1;

    //profundidade = 5; 
    //largura = 6; 
    posTrapezio = tamCubo/2 - altura/2;
    hFuros = profundidade;

    difference() {
        TrapezioIsoceles(profundidade,largura,altura,deslocamento); 

        cylinder (altura+0.1, r=1, center = true, $fn=10);
        translate([0,0,altura-2])
        cylinder (altura, r=2, center = true, $fn=10);
    }
}

//TrapezioFurado(5,5,4); 