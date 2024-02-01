function EXTRACT
{
awk '
{
 if(/Standard orientation:/&& NF==2)
  {
   split(FILENAME,U,".");
   getline; getline; getline; getline; getline; 
   while(!/-----/) 
         {
          NATOM=$1
          ATOM[$1]=$2;
          X[$1]=$4;
          Y[$1]=$5;
          Z[$1]=$6;
          #printf("%4s%14.4f%12.4f%12.4f\n",ATOM[$1],X[$1],Y[$1],Z[$1]);
          getline
         }
  };
  if((/Mulliken atomic charges:/&& NF==3) || (/Mulliken charges:/&& NF==2) || (/Mulliken charges and spin densities:/&& NF==5))
   {
    getline; getline;
    for(i=1;i<=NATOM;i++) { CHA[i]=$3; getline }
   }
}
END {
     print(" QDAT for System :  "U[1]" PM7 optimized\n Atomic coordinates");
     for(i=1;i<=NATOM;i++)
         printf("%4s%14.4f%12.4f%12.4f\n",ATOM[i],X[i],Y[i],Z[i]);
     printf("\n Ground state charges\n");
     for(i=1;i<=NATOM;i++) { printf("%8.4f",CHA[i]); if(i%10==0) printf("\n")}
     printf("\n\n")
}' $1
}

EXT=out
for file in $@ ; do
NOM=`basename $file .$EXT`
EXTRACT $file > $NOM.PM7OPT-CHARGES
done
