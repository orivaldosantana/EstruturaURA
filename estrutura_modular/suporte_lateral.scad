module suporte_lateral() {

    altura_yz = 300; 
    largura_yz = 200;
    corte = 100; 
    espessura_mdf = 15; 


    giro_corte = asin((largura_yz-corte)/(altura_yz-corte)); 

    rotate([90,0,0])

    difference() {
        cube([largura_yz,altura_yz,espessura_mdf]);

        translate([largura_yz,corte,0])
        rotate([0,0,giro_corte])
        cube([largura_yz,altura_yz,espessura_mdf]);
    }

}

//suporte_lateral(); 