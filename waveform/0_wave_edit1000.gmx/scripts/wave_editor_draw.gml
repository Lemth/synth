var c_bgcolor = make_color_rgb(70, 70 ,70);
var c_bgblue  = make_color_rgb(60, 60 ,100);
var xx = 0;
var yy = 0;
var hh = view_hport[0]/2;
var ww = view_wport[0];
var play_pos = 0;
var data_on_screen = (ww-88)/4;

draw_set_color(c_bgcolor);
draw_rectangle(xx, yy, xx+view_wport[0], yy+view_hport[0], false);

draw_set_color(c_bgblue);
draw_rectangle(xx+80, yy+120, xx+ww-8, yy+120+hh, false);

draw_set_color(c_ltgray);
draw_rectangle(xx+80, yy+120, xx+ww-8, yy+120+hh, true);
draw_line(xx+80, yy+120+(hh/2), xx+ww-8, yy+120+(hh/2));
if buffer_get_size(buffer) > 1{
   var i = 0;
   var offset = 44;
   buffer_seek(buffer, buffer_seek_start, offset);
   var y1 = 0;
   var y2 = 0;
   draw_text(xx+80, yy+100, string(play_pos)+'/'+string(data_on_screen));
   repeat(data_on_screen){
      y1 = (buffer_read(buffer, buffer_s16)/1000);
      y2 = (buffer_read(buffer, buffer_s16)/1000);
      buffer_seek(buffer, buffer_seek_relative, -2);
      draw_triangle(xx+80+(i*4), yy+120+(hh/2.5)-y1,      xx+80+((i+1)*4), yy+120+(hh/2.5)-y2,      xx+80+((i)*4),   yy+120+(hh/2), false);
      draw_triangle(xx+80+(i*4), yy+120+(hh-(hh/2.5))+y1, xx+80+((i+1)*4), yy+120+(hh-(hh/2.5))+y2, xx+80+((i+1)*4), yy+120+(hh/2), false);
      //draw_triangle(xx+80+(i*4), yy+120+(hh/2)-y1, xx+80+((i+1)*4), yy+120+(hh/2)-y2, xx+80+(i*4), yy+120+hh, false);
      //draw_triangle(xx+80+(i*4), yy+120+(hh/2), xx+80+((i+1)*4), yy+120+(hh/2)-y2, xx+80+((i+1)*4), yy+120+hh, false);
      //draw_triangle(xx+80+(i*4), yy+120+(hh/2)+y1, xx+80+((i+1)*4), yy+120+(hh/2)+y2, xx+80+(i*4), yy+120+hh, false);
      //draw_triangle(xx+80+(i*4), yy+120+(hh/2), xx+80+((i+1)*4), yy+120+(hh/2)+y2, xx+80+((i+1)*4), yy+120+hh, false);
      i++
      }
   }

draw_set_color(c_ltgray);
draw_text(8,40,
'Buffer size: '+string(buffer_get_size(buffer)));

