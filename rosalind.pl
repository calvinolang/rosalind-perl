#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
use Data::Dump qw(dump);

sub countingDNANucleotides {
    my $countA = () = $_[0]->{"dnaString"} =~ m/A/g;
    my $countC = () = $_[0]->{"dnaString"} =~ m/C/g;
    my $countG = () = $_[0]->{"dnaString"} =~ m/G/g;
    my $countT = () = $_[0]->{"dnaString"} =~ m/T/g;
    return ({"A"=>$countA ,"C"=>$countC ,"G"=>$countG,"T"=>$countT});
}

sub transcribingDNAintoRNA {
    my $rna = $_[0]->{"dnaString"};
    $rna =~ s/T/U/g;
    return ({"rnaString"=>$rna});
}

sub complementingDNA {
    my $dna = $_[0]->{"dnaString"};
    $dna =~ y/AT/TA/;
    $dna =~ y/CG/GC/;
    $dna = reverse($dna);
    return ({"reverseDna"=>$dna});
}

#dump(countingDNANucleotides({"dnaString"=>"ATCCTTATTCTTCCCCTATGATAGAATGGCACTACACGTTTGTGGAGATTTCCGGATGCGAGTGAACCCCTCGGGTAGATTAATTCTCGTGAACATAGGTCGATGAAGGTTGCCTTCTCAAACCAGCTTATATGGGAGAAACCTTGTCTGGCCTGCCGTGCCCCAATGGGAATGCCCAACCCGTCAGTCGTTTGCGTAGCGCTCGACCTATCACTTGACCCTCGGGCAAGTAAAACACTTTGTTCTCCAGGGGGGAGAAATTCTGTAGGAGCCATTGGGGCCCCCCCGTGTACTGTACGCAACACTGAATAGTCCTAAATGGATAGCTCTTAGGTAGTCCACCATATTGAACGAAGAGTAGATGGACAACAAGACTACGGAGTATGGACTTCACTGGATGGCCTCTAAATGCAACCATGTCTCAGCGCACAGAGCTGAGGAGAATACACACCACCATCGCCCCCAGACCTGCGTGCTACCCGCCAATATGGACCTATCTGAGGTTACCGGCTCGGCCCCGGCCGCCCAACATTGAATCGACCTTACAAGGTTCTAGATTGTACACCAGCAAACATAAATAGAATGGTTCTACGTCTCCAAAGGGAATGCGATGTAACTGAGTACCATCTGCTGACTGTTAAGAATAGTCCCCATGTTGGCTCTGGCGAGAACATAAATGAGGTTCGTTGTTTATTAGCACGCTTAGTCAGGCTTCTCCCGACTACTGTGTAAGTCCCATGTTTACAGACATCCCCAAACGATTCATCAGTTGCTTACCTTGTGTAAGATACCTGGATGTGGCAGCACACGCGAAGGTCTGGGAATGCTCTATTATCCACGGAGCTTACTCATGCCGCTAGCTAGCTTCAAGCGACATGTAGCCAATCGACACTAATATAATACCCGCCGGACCTTGTTACCCAAGCAGCAAGCTACGTTAGCAT"}));
#dump(transcribingDNAintoRNA({"dnaString"=>"TAACACACGACAGAGGGGTCCTCGTGAATGAGCATTTTCAGTAGGAGATCAATAGCAATGGTAAGGTTGCAGGTTCTGATTTAAGTAAATCTAGACATCAACTTTTGTTGTGGATAAGGAACGGCTGCCTATCAGATACGGGGTCGGAGTTCCTTGCCCGCGGGAACGGGCATGGTGTTAGTTGAGGGAGTCATCTCGACTCGTGAATCTCTCGGTAGGTGGTACGTCTTGGGTCGACGTTCCGACACGAATCATTGCACGTTCTGTGGTAAGCTAGTTTATCGATGAGTATAGGTCCCAAGACCCGAACAGTTCATGTAAGGATGCCGCAAGGAACCTCGTCCGAGTGGTTTCGGCTTGCCGGATCTACCGGGAACGATATACATCGCCTGTTTCCATCATCCATGTGAATATTCAGGAGCTATATCATAAAAATTCATCTCGAACCGCGAGCATGAGTCCCATATAATCATGCACCTTGTTCAGCTACGCTGTGCCACTATGTAGCTGTTGGTGCCACAAGAGTATCTACTACAGCTTTTGCTAAAATCGGTGGTAACCCTCGTGACATCTGGATAGACAACGTTGATTGGACCTCCTGTTTCCTACCTTTTTTGAAGCTACCCAAACAATTGATCGGGTCGTTGCACCCACCCTAGAACACTCCTCCGGGGATCTGAATCAGAAAGCGAACCGTAAACAACTTAGTAGACACCGCACGTATTCTTCGTGGCTGACAATATTTTGCAAAGTTGTGCACGCATCGGCTCGCAAGACGCGGGTAACTGGAAACGGCCATGGGTTCTTCTCGGTTAGGCGATACATGACCATTTCGTTGTTGCCGCCCGGTTGACCAAGACCCGATCACAAGATGCGTCGCCGGCGTAATGGTTTCACCATTCAGTTCCATAAGCCTATAGGTCAGGGAGTATGAGTCAACCCAACGCAATGGATGTCTTAACATCATGGGTGCCCAATGTTCCACAGCGACCAGCAGAC"}));
dump(complementingDNA({"dnaString"=>"GATAGTACCGAATGTGCCGGGGTTCACACGATGAAACCCCTGAGTTTCGGTATTGTGTCTAAAAGGCCCAAAACTTACCGACCTAATCCCGCTGGGTATCCGCGCCCTATGTAGACCCAGGCCGAAGTTTTGCTCATTACCCCTCAGGCTGAATTAATAAGATATGGGAAGTCTAATGGGCGTGATCGAGCAGCATGATTTTCTCTTCATCCTGGCTCCTAGAAGTGGCGCGTTAAGGTACGTAGCAACCCGCGTATTAAGAGTGTCTCTCTCATCCAGCGTTTAATTCCGCGTGCCCCGACGATGGGCCGCCACATTACCTGTGGTCAACTCGCGCACACATTAGATCCTCAAGGCGTATCCTTCCGTATGTTTAGGCGTGGATCCGTAATTGGGCAGAGAAAATTCAATGTCGAACACGCCCTGGCCGCGCGTCTCTCCCGCTCGTACGGCTAGGTAGCGTGGGAATCTGTTGAGTGGAGAGACTTGATACGAAAAATATTTATGGCACACGAGGACTTAGCCCGGAAAGCCCCGTTGGCGTTTCCTGAGTACGGCCGCACCATTACGCGATTTATCTTTCTCCATGCCCTTGCGTCGTTGGGATTCATGAACCCGGGCACCGGGCATTCGATTTCCGATCTCCCACTGCAAGGAGTGTCCGCGACATAACATTAACCCCCGCTCATAGAGGGTAGCCCTGTTGGGAGGGTTAGACGACTGTTTCGCGTCCAAGTGCCGTGGTACGATTTGTATAATGGGAGTTAGCACGTTTCTCATTCTTAGCACTCTTCCGTTGGACATAACC"}));