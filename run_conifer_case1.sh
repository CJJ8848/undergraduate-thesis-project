#conda
source activate conifer
#cd
cd /home/jiajun/conifer_v0.2.2/thesis_v1_all/
mkdir RPKM
#rpkm
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version1/1sam/mole_v_v1.sorted.bam --output ./RPKM/molev.rpkm.txt
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version1/1sam/normal_v_v1.sorted.bam --output ./RPKM/normal_v.rpkm.txt
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version1/1sam/normal_b_v1.sorted.bam --output ./RPKM/normal_b.rpkm.txt
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version1/1sam/father_v1.sorted.bam --output ./RPKM/father.rpkm.txt
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version1/1sam/mother_v1.sorted.bam --output ./RPKM/mother.rpkm.txt

#svd rpkm (after the svd identification)
python ../conifer.py analyze \
--probes ../Exome-Agilent_V6.bed.txt \
--rpkm_dir ./RPKM/ \
--output thesisv1_analysis.hdf5 \
--svd 1 \
--write_svals thesisv1_singular_values.txt \
--plot_scree thesisv1_screeplot.png \
--write_sd thesisv1_sd_values.txt

#cnv calling
python ../conifer.py call --input thesisv1_analysis.hdf5 --threshold 1.5 --output v1thesis_calls.txt
