multiplier =    105946.36;

pitch               = 0;
frequency           = 1;
playable            = 2;
play_pos            = 3;

key[49, frequency]  = 440
key[49, pitch]      = 1;
key[49, playable]   = true;
key[49, play_pos]   = 0;


var i = 0;
repeat(39){
   key[50+i, frequency] = key[49+i,frequency]*(multiplier/100000);
   key[50+i, pitch]     = key[50+i,frequency]/440;
   key[50+i, playable]  = true;
   key[50+i, play_pos]  = 0;
   i+=1
   }
i = 0;
repeat(48){
   key[48-i, frequency] = key[49-i,frequency]/(multiplier/100000);
   key[48-i, pitch]     = key[48-i,frequency]/440;
   key[48-i, playable]  = true;
   key[48-i, play_pos]   = 0;
   i+=1
   }

play_key = 49;   
state = 0;
stream_id = 0;
sample_length = 0;
sample_speed  = 0;
sample_playback_position = 0;
tracking = 0;

wkey[1] = 1;
wkey[2] = 3;
wkey[3] = 4;
wkey[4] = 6;
wkey[5] = 8;
wkey[6] = 9;
wkey[7] = 11;

nkey[1] = 'A';
nkey[2] = 'B';
nkey[3] = 'C';
nkey[4] = 'D';
nkey[5] = 'E';
nkey[6] = 'F';
nkey[7] = 'G';

bkey[1] = 2;
bkey[2] = 5;
bkey[3] = 7;
bkey[4] = 10;
bkey[5] = 12;
