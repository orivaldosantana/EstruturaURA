lp = 3; // largura  da parede 
dc = 30; // distância para o chassis 
a = 10; // altura
ca = 15; // comprimento do apoio 
df = 3; //deslocamento do furo 

$fn = 12; 



union() {
    cube([dc,lp,a]);
    
    difference(){
        cube([lp,ca,a]);
            
        translate([-1,ca-df,a/2])
        rotate([0,90,0])
        cylinder(lp+2,r=1.6,true);
    }
    
    translate([dc-lp,-ca+lp,0])
        
     difference(){
        cube([lp,ca,a]);
            
        translate([-1,df,a/2])
        rotate([0,90,0])
        cylinder(lp+2,r=1.6,true);
    }
    
}

    
