#!/bin/ksh

# This one wishes for a B'day
# Usage: wish <name> <countdown>
# Sample: wish Jack 10
dispBanner() {
    clear
    banner "   $1"
    sleep 1
}
countDown() {
   i=$1
   while (( $i >= 0 ))
   do
      dispBanner $i
      let i=$i-1
   done
}
wishName() {
   dispBanner "Happy"
   dispBanner "B'day"
   dispBanner $1
}
# Optional func. Call if you need
endCard() {
   for i in "That's" "all" "folks!"
      do
         dispBanner $i
      done
}

## START
countDown ${2-10} # if second arg wasn't passed,use 10 by default
wishName $1
clear
