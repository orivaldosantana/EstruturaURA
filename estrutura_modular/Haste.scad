
use <TrapezioFurado.scad>
use <TrapezioIsoceles.scad>

module Haste(largura,altura,comprimento,suportes) {
 
profundidadeTrapezio = 5; 
larguraTrapezio = largura; 

if (suportes) {
// Suportes laterais 
for (a = [0:180:181]) {
    rotate([0,0,a])
    translate([profundidadeTrapezio/2+altura/2-1,0,0]) {
        difference(){
            cube([altura-1,larguraTrapezio+8,altura],true);
            rotate([90,0,90])
            TrapezioIsoceles(profundidadeTrapezio,largura+1,altura,1);
        }

    }
}
}
// Haste principal furada 
difference() {
    cube([largura,comprimento,altura],true);
    if (suportes) {
    rotate([0,90,0]) 
    cylinder (larguraTrapezio+1, r=1, center = true, $fn=10);
    }
    translate([0,comprimento/4,0])   
    cylinder (larguraTrapezio+1, r=1, center = true, $fn=10);
    translate([0,-comprimento/4,0])   
    cylinder (larguraTrapezio+1, r=1, center = true, $fn=10);
}

// Extremidades da haste 
for (a = [0:180:181]) {
    rotate([0,0,a])
    translate([0,comprimento/2+profundidadeTrapezio/2 ,0])
    TrapezioFurado(profundidadeTrapezio,larguraTrapezio,altura);  
}
}

//Haste(5.6,4,30,false); 
