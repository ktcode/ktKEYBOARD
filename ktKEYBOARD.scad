

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

l_func5_x = 1;
l_func4a_x = 0;
l_func4b_x = 1;
l_func3a_x = 0;
l_func3b_x = 1;
l_func2_x = 1;
l_func1_x = 1;
l_func0_x = 1.5;
l_row5_x = 2;
l_row4_x = 2;
l_row3_x = 2.5;
l_row2_x = 2.75;
l_row1_x = 3.25;
l_row0_x = 2.75;

r_row5_x = 0;
r_row4_x = 0;
r_row3_x = 0.5;
r_row2_x = 0.75;
r_row1_x = 1.25;
r_row0_x = 1.25;
r_enter_x = r_row2_x + 7;
r_func1_x = r_row1_x + 6;



translate( [0, 50, 0] ){
    board_base( 0.5, 5.5 );
}
translate( [key_pitch_x*8, 50, 0] ){
    board_base( -0.5, 5.5 );
}

translate( [0, 0, 0] ){
    difference(){
        union(){
            key( l_func5_x, row5_y );
            key( l_func4a_x, row4_y );
            key( l_func4b_x, row4_y );
            key( l_func3a_x, row3_y );
            key( l_func3b_x, row3_y, 1.5 );
            key( l_func2_x, row2_y, 1.75 );
            key( l_func1_x, row1_y, 2.25 );
            key( l_func0_x, row0_y, 1.25 );
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
                    wall_x( 1, 7, 6 );
                    wall_y( 1, 5, 6 );
                    wall_x( 0, 1, 5 );
                    wall_y( 0, 3, 5 );
                    wall_x( 0, 1, 3 );
                    wall_y( 1, 1, 3 );
                    wall_x( 1, 1.5, 1 );
                    wall_y( 1.5, 0, 1 );
                    wall_y( 7, 4, 6 );
                    wall_x( 7, 7.5, 4 );
                    wall_y( 7.5, 3, 4 );
                    wall_x( 7.5, 7.75, 3 );
                    wall_y( 7.75, 2, 3 );
                    wall_x( 7.75, 8.25, 2 );
                    wall_y( 8.25, 0, 2 );
                    wall_x( 1.5, 8.25, 0 );
                    
                    wall_x( 0, 7, 4 );
                    wall_x( 1, 7.75, 2 );
                }
                through_board_base( 0.5, 5.5 );
                through_usb( 6, 5.5 );
                for( i = [0.2:1:7] ) through( i, 3.5 );
                for( i = [1:0.5:7] ) through_mini( i, 1.5 );
            }
        }
        
        support_x2( l_func1_x, row1_y, 2.25 );
        
        rotate( a=-angle, v=[1, 0, 0] )
        translate( [-key_pitch_x*3, -5, -front_height-42] )
        cube( [key_pitch_x*13, key_pitch_y*8, 50] );
    }
}


translate( [key_pitch_x*8, 0, 0] ){
    difference(){
        union(){
            for( i = [0:8] ) key( r_row5_x + i, row5_y, 1 );
            for( i = [0:8] ) key( r_row4_x + i, row4_y, 1 );
            for( i = [0:6] ) key( r_row3_x + i, row3_y, 1 );
            for( i = [0:6] ) key( r_row2_x + i, row2_y, 1 );
            for( i = [0:5] ) key( r_row1_x + i, row1_y, 1 );
            key_enter( r_enter_x, row2_y );
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
                through_board_base( -0.5, 5.5 );
                through_usb( 5, 5.5 );
                for( i = [0.6:1:8] ) through( i, 3.5 );
                for( i = [1:0.5:8] ) through_mini( i, 1.5 );
            }
        }
        
        support_x2( r_enter_x, row2_y + 0.5, 1.25, -90 );
        
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
            claw();
            translate( [0, hole_y/2, panel_thick/2 - 1.5] )
            rotate( [0, 0, 180] )
            claw();
            translate( [0, 0, panel_thick + 2] )
            rotate( [180, 0, 45] )
            cylinder( hole_y*1.1, hole_y*1.1, 0, $fn=4 );
        }
    }
}
module claw(){
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



module key_enter( x, y ){
    translate( [key_pitch_x*x + key_pitch_x/2 + key_pitch_x*(1.25 - 1)/2, key_pitch_y*y + key_pitch_y/2, -(panel_thick/2)] ){
        difference(){
            union(){
                cube( [key_pitch_x*1.25, key_pitch_y, panel_thick], center=true ) ;
                translate( [-key_pitch_x*(1.25 - 1)/2, key_pitch_y, 0] )
                cube( [key_pitch_x*1.5, key_pitch_y, panel_thick], center=true ) ;
            }
            translate( [0, key_pitch_x/2, 0] ){
                rotate( [0, 0, 90] ){
                    cube( [hole_x, hole_y, panel_thick + gap2], center=true );
                    translate( [0, -hole_y/2, panel_thick/2 - 1.5] )
                    claw();
                    translate( [0, hole_y/2, panel_thick/2 - 1.5] )
                    rotate( [0, 0, 180] )
                    claw();
                    translate( [0, 0, panel_thick + 2] )
                    rotate( [180, 0, 45] )
                    cylinder( hole_y*1.1, hole_y*1.1, 0, $fn=4 );
                }
            }
        }
    }
}



module support_x2( x, y, w=1, r=0 ){
    translate( [key_pitch_x*x + key_pitch_x/2 + key_pitch_x*(w - 1)/2, key_pitch_y*y + key_pitch_y/2, -(panel_thick/2)] ){
        rotate( [0, 0, r] ){
            translate( [12, 0, 0] )
            support();
            translate( [-12, 0, 0] )
            support();
            translate( [0, -0, 0] )
            cube( [23.8, 8, panel_thick + gap2], center=true );
            translate( [0, -5.5, -1/2] )
            cube( [23.8, 9.5, 5 + gap2 -1], center=true );
        }
    }
}
module support(){
    translate( [0, -0.5, 0] ){
        cube( [6.6, 12.5, 5 + gap2], center=true );
        translate( [0, -3.5/2, -1/2] )
        cube( [6.6, 12.5 + 3.5, 5 + gap2 -1], center=true );
        translate( [0, hole_y/2 - 0.75, panel_thick/2 - 1.5] )
        rotate( [0, 0, 180] )
        claw();
        translate( [0, -3.5/2, -5/2] )
        scale( [6.6, 12.5 + 3.5, 1] )
        rotate( [180, 0, 45] )
        cylinder( 10, 0.71, 0, $fn=4 );
    }
    translate( [6.6/2, 1, 0] )
    cube( [1*2, 2, 5 + gap2], center=true );
    translate( [-6.6/2, 1, 0] )
    cube( [1*2, 2, 5 + gap2], center=true );
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



module board_base( x, y ){
    translate( [key_pitch_x*x + key_pitch_x/2, key_pitch_y*y + key_pitch_y/2, 0] ){
        translate( [5, -32, -12] ){
            difference(){
                union(){
                    rotate( a=-angle, v=[1, 0, 0] ){
                        difference(){
                            union(){
                                cube( [74, 30, 2] );
                                translate( [0, 28.8, -4] )
                                cube( [74, 4, 6] );
                                translate( [6, 5, -2] )
                                cylinder( 2, 5, 5, $fn=50 );
                                translate( [69, 5, -2] )
                                cylinder( 2, 5, 5, $fn=50 );
                                translate( [14, 12.5, -2] )
                                cylinder( 2, 5, 5, $fn=50 );
                                translate( [47.5, 15, -2] )
                                cylinder( 2, 5, 5, $fn=50 );
                            }
                            translate( [6, 5, -2-gap1] )
                            cylinder( 4+gap2, 1.8, 1, $fn=50  );
                            translate( [69, 5, -2-gap1] )
                            cylinder( 4+gap2, 1.8, 1, $fn=50  );
                            translate( [14, 12.5, -2-gap1] )
                            cylinder( 4+gap2, 1.8, 1, $fn=50  );
                            translate( [47.5, 15, -2-gap1] )
                            cylinder( 4+gap2, 1.8, 1, $fn=50  );
                        }
                    }
                }
                translate( [0-gap1, 30.75+gap1, -9] )
                cube( [74+gap2, 4, 9] );
            }
            difference(){
                union(){
                    rotate( a=-angle, v=[1, 0, 0] ){
                        rotate( [-90, 90, 0] )
                        translate( [-0.5, -10, 30] )
                        cylinder( 5, 3, 3, $fn=3 );
                        rotate( [-90, 90, 0] )
                        translate( [-0.5, -37.5, 30] )
                        cylinder( 5, 3, 3, $fn=3 );
                        rotate( [-90, 90, 0] )
                        translate( [-0.5, -65, 30] )
                        cylinder( 5, 3, 3, $fn=3 );
                    }
                }
                translate( [0-gap1, 33.25+gap1, -9] )
                cube( [82+gap2, 4, 9] );
            }
        }
    }
}
module through_board_base( x, y ){
    translate( [key_pitch_x*x + key_pitch_x/2, key_pitch_y*y + key_pitch_y/2, 0] ){
        translate( [5, -32, -12] ){
            rotate( a=-angle, v=[1, 0, 0] ){
                rotate( [-90, 90, 0] )
                translate( [-0.5, -10, 30] )
                cylinder( 5, 3.5, 3, $fn=3 );
                rotate( [-90, 90, 0] )
                translate( [-0.5, -37.5, 30] )
                cylinder( 5, 3.5, 3, $fn=3 );
                rotate( [-90, 90, 0] )
                translate( [-0.5, -65, 30] )
                cylinder( 5, 3.5, 3, $fn=3 );
            }
        }
    }
}