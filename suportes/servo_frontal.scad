parede_lateral = 8;
parede_frontal = 2; 
largura_interna = 24;  // tamanho interno 
prof_interna = 22; 
altura = 4; 
desloc_m = 2.5; // posicão do furo do motor na profundidade 



difference(){
    difference(){
        cube([largura_interna+2*parede_lateral, prof_interna+parede_frontal,altura],true);   

        translate([0,parede_frontal/2+0.01])
        cube([largura_interna,prof_interna,altura+2],true);    
        
    }

    {
    translate([largura_interna/2+2.5,-12/2+parede_frontal,-altura/2-1])
    cylinder(altura+2,1,true);
        
    translate([-(largura_interna/2+2.5),-12/2+parede_frontal,-altura/2-1])
    cylinder(altura+2,1,true);
        
    translate([-(largura_interna/2+parede_lateral/2),prof_interna/2 - parede_lateral/2,-altura/2-1])
    cylinder(altura+2,r=1.6,true);
        
    translate([(largura_interna/2+parede_lateral/2),prof_interna/2 - parede_lateral/2,-altura/2-1])
    cylinder(altura+2,r=1.6,true);
    }
}