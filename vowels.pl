while(<STDIN>){
   if(/a/i && /e/i && /i/i && /o/i && /u/i){
      print "This line has vowels\n" ;
      last;
   }
   else{
      print "No Vowels\n";
   }
}
