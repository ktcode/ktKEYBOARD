 

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
rowm1_y = -1;

l_row5m_x = -2;
l_row4m_x = -2;
l_row3m_x = -2;
l_row2m_x = -2;
l_row1m_x = -2;
l_row0m_x = -1;
l_func5_x = 1;
l_func4_x = 1;
l_func3_x = 1;
l_func2_x = 1;
l_func1_x = 1;
l_func0_x = 1;
l_row5_x = 2;
l_row4_x = 2;
l_row3_x = 2.5;
l_row2_x = 2.75;
l_row1_x = 3.25;
l_row0_x = 1;

r_row5_x = 0;
r_row4_x = 0;
r_row3_x = 0.5;
r_row2_x = 0.75;
r_row1_x = 1.25;
r_row0_x = 0.75;
r_enter_x = r_row2_x + 7;
r_func1_x = r_row1_x + 6;
r_rowm1_x = 0.5;


translate( [0, 0, 0] ){
    board_base( 0.5, 5.5 );
}
translate( [key_pitch_x*8, 0, 0] ){
    board_base( -0.5, 5.5 );
}

translate( [0, 0, 0] ){
    difference(){
        union(){
            key( l_func5_x, row5_y );
            key( l_func4_x, row4_y );
            key( l_func3_x, row3_y, 1.5 );
            key( l_func2_x, row2_y, 1.75 );
            key( l_func1_x, row1_y, 2.25 );
            for( i = [0:4] ) key( l_row5_x + i, row5_y );
            for( i = [0:4] ) key( l_row4_x + i, row4_y );
            for( i = [0:4] ) key( l_row3_x + i, row3_y );
            for( i = [0:4] ) key( l_row2_x + i, row2_y );
            for( i = [0:4] ) key( l_row1_x + i, row1_y );
            key( l_func0_x, row0_y, 1.75 );
            key( l_row0_x + 1.75, row0_y );
            key( l_row0_x + 2.75, row0_y, 1.25 );
            key( l_row0_x + 4, row0_y );
            key( l_row0_x + 5, row0_y, 1.75);
            
            difference(){
                union(){
                    wall_x_right( 1, 7, 6 );
                    wall_y( 1, 0, 6 );
                    wall_y_right( 7, 4, 6 );
                    wall_x_bottom( 7, 7.5, 4 );
                    wall_y_right( 7.5, 3, 4 );
                    wall_x_bottom( 7.5, 7.75, 3 );
                    wall_y_right( 7.75, 2, 3 );
                    wall_x_bottom( 7.75, 8.25, 2 );
                    wall_y_right( 8.25, 1, 2 );
                    wall_x_upper_l( 7.75, 8.25, 1 );
                    wall_y_right( 7.75, 0, 1 );
                    wall_x_right( 1, 7.75, 0 );
                    
                    wall_y( 4.5, 3, 4 );
                    wall_y( 2.5, 2, 3 );
                }
                through_board_base( 0.5, 5.5 );
                through_usb( 6, 5.5 );
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
            for( i = [0:7] ) key( r_row5_x + i, row5_y, 1 );
            for( i = [0:6] ) key( r_row4_x + i, row4_y, 1 );
            fill( r_row4_x + 7, row4_y, 0.5 );
            key( r_row4_x + 7.5, row4_y, 1 );
            fill( r_row4_x + 8.5, row4_y, 0.5 );
            for( i = [0:6] ) key( r_row3_x + i, row3_y, 1 );
            fill( r_row3_x + 7, row3_y, 0.25 );
            key( r_row3_x + 7.25, row3_y, 1 );
            fill( r_row3_x + 8.25, row3_y, 0.25 );
            for( i = [0:5] ) key( r_row2_x + i, row2_y, 1 );
            fill( r_row2_x + 6, row2_y, 0.625 );
            key( r_row2_x + 6.625, row2_y, 1 );
            fill( r_row2_x + 7.625, row2_y, 0.625 );
            for( i = [0:4] ) key( r_row1_x + i, row1_y, 1 );
            fill( r_row1_x + 5, row1_y, 0.5 );
            key( r_row1_x + 5.5, row1_y, 1 );
            key( r_row0_x, row0_y, 1.75 );
            for( i = [0:2] ) key( r_row0_x + 1.75 + i, row0_y, 1 );
            fill( r_row0_x + 1.75 + 3, row0_y, 0.25 );
            for( i = [0:2] ) key( r_row0_x + 1.5 + 3 + 0.5 + i, row0_y, 1 );
            
            difference(){
                union(){
                    wall_x_left( 0, 8, 6 );
                    wall_y_left( 0, 4, 6 );
                    wall_x_upper( 0, 0.5, 4 );
                    wall_y_left( 0.5, 3, 4 );
                    wall_x_upper( 0.5, 0.75, 3 );
                    wall_y_left( 0.75, 2, 3 );
                    wall_x_upper( 0.75, 1.25, 2 );
                    wall_y_left( 1.25, 1, 2 );
                    wall_x_bottom_r( 0.75, 1.25, 1 );
                    wall_y_left( 0.75, 0, 1 );
                    wall_y( 8, 5, 6 );
                    wall_x( 8, 9, 5);
                    wall_y( 9, 2, 5 );
                    wall_x( 7.75, 9, 2);
                    wall_y( 7.75, 1, 2 );
                    wall_x( 7.75, 8.75, 1);
                    wall_y( 8.75, 0, 1 );
                    wall_x_left( 0.75, 8.75, 0);
                    
                    wall_x( 4, 5, 4 );
                    wall_x( 4, 5, 2 );
                }
                through_board_base( -0.5, 5.5 );
                through_usb( 5, 5.5 );
            }
        }
        
        support_x2( r_row4_x + 7, row4_y, 2 );
        support_x2( r_row2_x + 6, row2_y, 2.25 );
        
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

module wall_x_upper( x1, x2, y ){
    translate( [key_pitch_x*x1, key_pitch_y*y, -50] )
    cube( [key_pitch_x*(x2 - x1) + ((key_pitch_x - hole_x)/2), (key_pitch_y - hole_y)/2, 50-panel_thick] );
}

module wall_x_upper_l( x1, x2, y ){
    translate( [key_pitch_x*x1 - ((key_pitch_x - hole_x)/2), key_pitch_y*y, -50] )
    cube( [key_pitch_x*(x2 - x1) + ((key_pitch_x - hole_x)/2), (key_pitch_y - hole_y)/2, 50-panel_thick] );
}

module wall_x_bottom( x1, x2, y ){
    translate( [key_pitch_x*x1 - ((key_pitch_x - hole_x)/2), key_pitch_y*y - ((key_pitch_y - hole_y)/2), -50] )
    cube( [key_pitch_x*(x2 - x1) + ((key_pitch_x - hole_x)/2), (key_pitch_y - hole_y)/2, 50-panel_thick] );
}

module wall_x_bottom_r( x1, x2, y ){
    translate( [key_pitch_x*x1, key_pitch_y*y - ((key_pitch_y - hole_y)/2), -50] )
    cube( [key_pitch_x*(x2 - x1) + ((key_pitch_x - hole_x)/2), (key_pitch_y - hole_y)/2, 50-panel_thick] );
}

module wall_y_left( x, y1, y2 ){
    translate( [key_pitch_x*x , key_pitch_y*y1, -50] )
    cube( [(key_pitch_x - hole_x)/2, key_pitch_y*(y2 - y1), 50-panel_thick] );
}

module wall_y_right( x, y1, y2 ){
    translate( [key_pitch_x*x - ((key_pitch_x - hole_x)/2), key_pitch_y*y1, -50] )
    cube( [(key_pitch_x - hole_x)/2, key_pitch_y*(y2 - y1), 50-panel_thick] );
}

module wall_x_left( x1, x2, y ){
    translate( [key_pitch_x*x1, key_pitch_y*y - ((key_pitch_y - hole_y)/2)/2, -50] )
    cube( [key_pitch_x*(x2 - x1) + ((key_pitch_x - hole_x)/2)/2, (key_pitch_y - hole_y)/2, 50] );
}

module wall_x_right( x1, x2, y ){
    translate( [key_pitch_x*x1 - ((key_pitch_x - hole_x)/2)/2, key_pitch_y*y - ((key_pitch_y - hole_y)/2)/2, -50] )
    cube( [key_pitch_x*(x2 - x1) + ((key_pitch_x - hole_x)/2)/2, (key_pitch_y - hole_y)/2, 50] );
}


module through_usb( x, y ){
    translate( [key_pitch_x*x + key_pitch_x/2, key_pitch_y*y + key_pitch_y/2, -panel_thick - 10] ){
        translate( [0, 0, -panel_thick - 2.5] ){
            cube( [3.5, 10, 10], center=true );
            translate( [0, 5, 5] )
            rotate( [90, 0, 0] )
            cylinder( 10, 1.75, 1.75, $fn=50 );
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