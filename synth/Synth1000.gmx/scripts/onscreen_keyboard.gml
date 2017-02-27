var xx = 8;
var yy = 500;
var ww = 32;
var hh = 128;

var i  = 0;
var ii = 1;
var skey = 24;
var octave = 0;

repeat(21){
   draw_set_color(c_black);
   draw_rectangle(xx+(i*ww),yy,xx+(i*ww)+ww,yy+hh,true);
   draw_text(xx+(i*ww)+8,yy+hh-20, string(nkey[ii])+string(octave+2));
   if mouse_x > xx+(i*ww) && mouse_x < xx+(i*ww)+ww && mouse_y > yy && mouse_y < yy+hh{
      draw_set_color(c_red);
      draw_rectangle(xx+(i*ww),yy,xx+(i*ww)+ww,yy+hh,false);
      if mouse_check_button(mb_left){
         play_key = skey+wkey[ii]+(octave*12);
         }
      }
   i+=1;
   if ii < 7{
      ii+=1;
      }
   else{
      ii=1;
      octave+=1;
      }
   }

