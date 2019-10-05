#! /usr/bin/env fish
for i in (seq 0 255)
  printf "\x1b[38;5;"$i"mcolor%03d\x1b[0m " $i
  if test (math \($i+1\)%8) -eq 0
    echo
  end
end
echo "Use color numbers without leading zeros!"
