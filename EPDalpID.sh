IFS=$'\t'
while read  query_acc_ver subject_acc_ver identity alignment_length mismatches gap_opens q_start q_end s_start s_end evalue bit_score
  do 
    echo -e "${alignment_length}\t${identity}"
  done < blastoutput2.out 