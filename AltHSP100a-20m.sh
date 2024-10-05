/usr/bin/bash
IFS=$'\t'
while read query_acc_ver subject_acc_ver identity alignment_length mismatches gap_opens q_start q_end s_start s_end evalue bit_score
do 
 if [[ "${mismatches}" -gt 20 ]] && [[ "${alignment_length}" -lt 100 ]]
 then      
   echo "Mismatches: ${mismatches}  protein length ${alignment_length}" 
fi
done < blastoutput2.out