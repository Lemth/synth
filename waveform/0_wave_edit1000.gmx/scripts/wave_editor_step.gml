if keyboard_check_released(ord('L')){
   var file = get_open_filename_ext('*.wav', '', 'D:\dev\audio_samples\', 'Load Sample');
   buffer_load_ext(buffer, file, 0);
   }
