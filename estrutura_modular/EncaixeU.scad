use <TrapezioIsoceles.scad>


module EncaixeU(tamCubo)  {

altura = 4; 
//tamCubo = 24; 

profundidadeTrapezio = 5; 
larguraTrapezio = 6; 
posTrapezio = tamCubo/2 - altura/2;
hFuros = profundidadeTrapezio;

tamCuboSuperior = tamCubo - 2*altura ; 
posTrapezioSuperior = tamCuboSuperior/2 - profundidadeTrapezio/2;

union() {
// Base da estrutra de encaixe 
difference() {
    cube([tamCubo,tamCubo,altura],center=true);
    for ( a = [0:90:270]) {
        rotate([0,0,a])
        translate([0,posTrapezio+0.1,0])
        rotate([270,0,0]) 
        TrapezioIsoceles(profundidadeTrapezio,larguraTrapezio,altura,1);
        // Furos para hastes perpendiculares 
        rotate([0,0,a])
        translate([posTrapezio-altura,0,0])
        rotate([0,90,0]) 
        cylinder (hFuros, r=1, center = true, $fn=10);
        // Furos para hastes paralelas 
        rotate([0,0,a])
        translate([posTrapezioSuperior,0,0])
        cylinder (hFuros, r=1, center = true, $fn=10);
        // Furos para chapa de plástico
        rotate([0,0,a])
        translate([tamCuboSuperior/2,tamCuboSuperior/2,0])
        cylinder (hFuros, r=1, center = true, $fn=10);
    }
}


// Parte superior da estrutra 
translate([0,0,(2*altura-1)/2]) {
    difference() { 
        cube( [tamCuboSuperior,tamCuboSuperior,altura-1], center=true);
        for ( a = [0:90:270]) {
            rotate([0,0,a]) 
            translate([0,posTrapezioSuperior+0.1,0.4])
            TrapezioIsoceles(profundidadeTrapezio,larguraTrapezio,altura,1);
        }
    }
}
}

}