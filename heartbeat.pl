#!/usr/bin/env perl
# ruby -e'a,b=0x1F493,0x1F497;loop{a,b=b,a;print(("\b"*6)+[a].pack("U")+(" "*5));sleep(0.004)}'

binmode STDOUT, ":utf8";


$a=0x1F493;
$b=0x1F497;

while (1) {
  ($a, $b) = ($b, $a);
  print pack("U", $a);
  sleep 1;
}
