source activate cnvkit
#cd
cd /home/jiajun/putaotai/cnvkit_data/bed_v2/thesis_mole_normal
#batch
/home/jiajun/cnvkit/cnvkit.py batch /home/jiajun/putaotai/aligned/version2/3sortedbam/mole_v.sorted.bam -n /home/jiajun/putaotai/aligned/version2/3sortedbam/normal_v.sorted.bam -t /home/jiajun/Exome-Agilent_V6_2022.bed -f /home/jiajun/genome/hg19.fa \
    --annotate ../refFlat.txt \
    --access /home/jiajun/cnvkit/data/access-5k-mappable.hg19.bed \
    --output-reference v2newbed_1_control.cnn -d v2reference_1control_newbed/ \
    --diagram --scatter > v2_normal_v_asref_newbed.log    
#cd
cd v2reference_1control_newbed
#export tables

#mole
/home/jiajun/cnvkit/cnvkit.py genemetrics mole_v.sorted.cnr -s mole_v.sorted.cns -t 0.4 -m 5 > mole_v_v2_1control_singlesegment-genes.txt
echo 'done'
