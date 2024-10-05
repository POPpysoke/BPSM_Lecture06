/usr/bin/bash
IFS=$'\t'
echo "HSP's with >20 mismatches and <100 alignment length"
while read query_acc_ver subject_acc_ver identity alignment_length mismatches gap_opens q_start q_end s_start s_end evalue bit_score
do
 if [[ "${alignment_length}" -lt 100 ]]
 then
    
    if [[ "${mismatches}" -gt 20 ]]
    then
       echo  "protein length of ${alignment_length} with ${mismatches} mismatches"
    fi
 fi
done < blastoutput2.out 