module base () {
espessura_mdf = 15; 
tam_z = 80; 
tam_y = 300; 
tam_x = 430; 


translate([0,espessura_mdf,0]) {

// base 
color("white")
cube([tam_x - 2*espessura_mdf,tam_y - 2*espessura_mdf, espessura_mdf]);

// fundo base 
color("white")
translate( [0,-espessura_mdf,0] ) {
    rotate( [0,-90,0] ) {
        cube([tam_z,tam_y,espessura_mdf]); 
    }
}

// frente base 
color("white")
translate( [tam_x-espessura_mdf,-espessura_mdf,0] ) {
    rotate( [0,-90,0] ) {
        cube([tam_z,tam_y,espessura_mdf]); 
    }
}

// lateral esquerda 
color("white")
rotate( [90,0,0] ) {
    cube([tam_x - 2*espessura_mdf, tam_z,espessura_mdf]);
} 


// lateral direita 
color("white")
translate( [0,tam_y-espessura_mdf,0] ) {
    rotate( [90,0,0] ) {
        cube([tam_x - 2*espessura_mdf, tam_z,espessura_mdf]);
    }
}
}
}

//base();