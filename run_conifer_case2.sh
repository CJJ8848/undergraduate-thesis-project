source activate conifer
#cd 
cd /home/jiajun/conifer_v0.2.2/thesis_v2_all 
#RPKM
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version2/3sortedbam/father.sorted.bam --output ./RPKM/father.rpkm.txt
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version2/3sortedbam/mother.sorted.bam --output ./RPKM/mother.rpkm.txt
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version2/3sortedbam/mole_v.sorted.bam --output ./RPKM/mole_v.rpkm.txt
python ../conifer.py rpkm --probes ../Exome-Agilent_V6.bed.txt --input /home/jiajun/putaotai/aligned/version2/3sortedbam/normal_v.sorted.bam --output ./RPKM/normal_v.rpkm.txt

#svd-RPKM matrix
python ../conifer.py analyze \
--probes ../Exome-Agilent_V6.bed.txt \
--rpkm_dir ./RPKM/ \
--output thesis_v2_analysis.hdf5 \
--svd 1 \
--write_svals thesis_v2_singular_values.txt \
--plot_scree thesis_v2_screeplot.png \
--write_sd thesis_v2_sd_values.txt


#cnv calling
python ../conifer.py call --input thesis_v2_analysis.hdf5 --threshold 1.5 --output thesis_v2_calls.txt

