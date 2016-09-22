

key_pitch_x = 19;
key_pitch_y = 19;
hole_x = 14;
hole_y = 14;
panel_thick = 5;

front_height = 15;
angle = 8;

gap1 = 0.01;
gap2 = gap1 * 2;

row5_y = 5;
row4_y = 4;
row3_y = 3;
row2_y = 2;
row1_y = 1;
row0_y = 0;

l_func5_x = 0;
l_func4_x = 0;
l_func3_x = 0;
l_func2a_x = -0.25;
l_func2b_x = 0.75;
l_func1a_x = -0.25;
l_func1b_x = 0.75;
l_func0_x = 0;
l_row5_x = 1;
l_row4_x = 1;
l_row3_x = 1.5;
l_row2_x = 1.75;
l_row1_x = 2.25;
l_row0_x = 1.75;

r_row5_x = 0;
r_row4_x = 0;
r_row3_x = 0.5;
r_row2_x = 0.75;
r_row1_x = 1.25;
r_row0_x = 1.25;
r_func3_x = r_row3_x + 7;
r_func2_x = r_row2_x + 7;
r_func1_x = r_row1_x + 6;



translate( [key_pitch_x*0.25, 0, 0] ){
    difference(){
        union(){
            key( l_func5_x, row5_y );
            key( l_func4_x, row4_y );
            key( l_func3_x, row3_y, 1.5 );
            key( l_func2a_x, row2_y );
            key( l_func2b_x, row2_y );
            key( l_func1a_x, row1_y );
            key( l_func1b_x, row1_y, 1.5 );
            key( l_func0_x, row0_y, 1.5 );
            fill( l_func0_x + 1.5, row0_y, 0.25 );
            for( i = [0:4] ) key( l_row5_x + i, row5_y );
            for( i = [0:4] ) key( l_row4_x + i, row4_y );
            for( i = [0:4] ) key( l_row3_x + i, row3_y );
            for( i = [0:4] ) key( l_row2_x + i, row2_y );
            for( i = [0:4] ) key( l_row1_x + i, row1_y );
            key( l_row0_x, row0_y, 1.25 );
            key( l_row0_x + 1.25, row0_y );
            key( l_row0_x + 2.25, row0_y );
            key( l_row0_x + 3.25, row0_y, 1.25);
            key( l_row0_x + 4.5, row0_y );
            
            difference(){
                union(){
                    wall_x( 0, 6, 6 );
                    wall_y( 0, 3, 6 );
                    wall_x( -0.25, 0, 3 );
                    wall_y( -0.25, 1, 3 );
                    wall_x( -0.25, 0, 1 );
                    wall_y( 0, 0, 1 );
                    wall_y( 6, 4, 6 );
                    wall_x( 6, 6.5, 4 );
                    wall_y( 6.5, 3, 4 );
                    wall_x( 6.5, 6.75, 3 );
                    wall_y( 6.75, 2, 3 );
                    wall_x( 6.75, 7.25, 2 );
                    wall_y( 7.25, 0, 2 );
                    wall_x( 0, 7.25, 0 );
                    
                    wall_x( 0, 6, 4 );
                    wall_x( -0.25, 6.75, 2 );
                }
                union(){
                    for( i = [-0.5:0.5:6] ) through_mini( i, 1.5 );
                    for( i = [0.2:1:6] ) through( i, 3.5 );
                    through_usb( 2.5, 5.5 );
                }
            }
        }
        
        rotate( a=-angle, v=[1, 0, 0] )
        translate( [-key_pitch_x*3, -5, -front_height-42] )
        cube( [key_pitch_x*13, key_pitch_y*8, 50] );
    }
}


translate( [key_pitch_x*7.25, 0, 0] ){
    difference(){
        union(){
            for( i = [0:8] ) key( r_row5_x + i, row5_y, 1 );
            for( i = [0:8] ) key( r_row4_x + i, row4_y, 1 );
            for( i = [0:6] ) key( r_row3_x + i, row3_y, 1 );
            for( i = [0:6] ) key( r_row2_x + i, row2_y, 1 );
            for( i = [0:5] ) key( r_row1_x + i, row1_y, 1 );
            key( r_func3_x, row3_y, 1.5 );
            key( r_func2_x, row2_y, 1.25 );
            fill( r_func1_x, row1_y, 0.25 );
            key( r_func1_x + 0.25, row1_y, 1 );
            fill( r_func1_x + 1.25, row1_y, 0.5 );
            key( r_row0_x, row0_y, 1.25 );
            for( i = [0:6] ) key( r_row0_x + 1.25 + i, row0_y, 1 );
            
            difference(){
                union(){
                    wall_x( 0, 9, 6 );
                    wall_y( 0, 4, 6 );
                    wall_x( 0, 0.5, 4 );
                    wall_y( 0.5, 3, 4 );
                    wall_x( 0.5, 0.75, 3 );
                    wall_y( 0.75, 2, 3 );
                    wall_x( 0.75, 1.25, 2 );
                    wall_y( 1.25, 0, 2 );
                    wall_y( 9, 1, 6 );
                    wall_x( 9, 9.5, 1);
                    wall_y( 9.5, 0, 1 );
                    wall_x( 1.25, 9.5, 0);
                    
                    wall_x( 0, 9, 4 );
                    wall_x( 1.25, 9, 2 );
                }
                union(){
                    for( i = [1:0.5:8] ) through_mini( i, 1.5 );
                    for( i = [0.6:1:8] ) through( i, 3.5 );
                    through_usb( 4, 5.5 );
                }
            }
        }
        
        rotate( a=-angle, v=[1, 0, 0] )
        translate( [-key_pitch_x*3, -5, -front_height-42] )
        cube( [key_pitch_x*15, key_pitch_y*8, 50] );
    }
}





module key( x, y, w=1 ){
    translate( [key_pitch_x*x + key_pitch_x/2 + key_pitch_x*(w - 1)/2, key_pitch_y*y + key_pitch_y/2, -(panel_thick/2)] ){
        difference(){
            cube( [key_pitch_x*w, key_pitch_y, panel_thick], center=true ) ;
            cube( [hole_x, hole_y, panel_thick + gap2], center=true );
            translate( [0, -hole_y/2, panel_thick/2 - 1.5] )
            recess();
            translate( [0, hole_y/2, panel_thick/2 - 1.5] )
            rotate( [0, 0, 180] )
            recess();
            translate( [0, 0, panel_thick + 2] )
            rotate( [180, 0, 45] )
            cylinder( hole_y*1.1, hole_y*1.1, 00, $fn=4 );
        }
    }
}
module recess(){
    translate( [-2, -1, -1] ){
        difference(){
            union(){
                cube( [4, 2, 1] );
                rotate( [-45, 0, 0] )
                cube( [4, 2, 1] );
            }
            translate( [-gap1, 1+gap1, -2-gap1] )
            cube( [4+gap2, 2, 3+gap2] );
        }
    }
}

module fill( x, y, w ){
    translate( [key_pitch_x*x + key_pitch_x/2 +key_pitch_x*(w - 1)/2, key_pitch_y*y + key_pitch_y/2, -(panel_thick/2)] ){
        cube( [key_pitch_x*w, key_pitch_y, panel_thick], center=true ) ;
    }
}



module wall_x( x1, x2, y ){
    translate( [key_pitch_x*x1 - ((key_pitch_x - hole_x)/2)/2, key_pitch_y*y - ((key_pitch_y - hole_y)/2)/2, -50] )
    cube( [key_pitch_x*(x2 - x1) + ((key_pitch_x - hole_x)/2), (key_pitch_y - hole_y)/2, 50] );
}

module wall_y( x, y1, y2 ){
    translate( [key_pitch_x*x - ((key_pitch_x - hole_x)/2)/2, key_pitch_y*y1, -50] )
    cube( [(key_pitch_x - hole_x)/2, key_pitch_y*(y2 - y1), 50] );
}



module through( x, y ){
    translate( [key_pitch_x*x + key_pitch_x/2, key_pitch_y*y + key_pitch_y/2, -(panel_thick/2)] ){
        translate( [0, 0, -panel_thick - 2.5] ){
            cube( [2/cos(45), 10, 4], center=true );
            translate( [0, 0, 2] )
            rotate( [0, 45, 0] )
            cube( [2, 10, 2], center=true );
            translate( [0, 0, -2] )
            rotate( [0, 45, 0] )
            cube( [2, 10, 2], center=true );
        }
    }
}
module through_mini( x, y ){
    translate( [key_pitch_x*x + key_pitch_x/2, key_pitch_y*y + key_pitch_y/2, -panel_thick] ){
        translate( [0, 0, -panel_thick/2 ] ){
            rotate( [0, 45, 0] )
            cube( [2, 10, 2], center=true );
        }
    }
}
module through_usb( x, y ){
    translate( [key_pitch_x*x + key_pitch_x/2, key_pitch_y*y + key_pitch_y/2, -panel_thick - 10] ){
        translate( [0, 0, -panel_thick - 2.5] ){
            cube( [2.5/cos(45), 10, 10], center=true );
            translate( [0, 0, 5] )
            rotate( [0, 45, 0] )
            cube( [2.5, 10, 2.5], center=true );
        }
    }
}