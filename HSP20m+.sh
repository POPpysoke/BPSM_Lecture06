/usr/bin/bash
unset IFS
IFS=$'\t'
while read query_acc_ver subject_acc_ver identity alignment_length mismatches gap_opens q_start q_end s_start s_end evalue bit_score
do
# Evaluation step
if test ${mismatches} -ge 20
  then
   echo -e " HSP mismatch rate of ${mismatches}\t${query_acc_ver}\t${subject_acc_ver} was found"
   else
    echo "HSP mismatch rate ${mismatches} rate low, ignored"
fi
done < blastoutput2.out | sort -nr | tail -n +7