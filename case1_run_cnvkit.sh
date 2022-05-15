source activate cnvkit
#cd
cd /home/jiajun/putaotai/cnvkit_data/bed_v1/thesis_mole_normal
#batch
/home/jiajun/cnvkit/cnvkit.py batch /home/jiajun/putaotai/aligned/version1/1sam/mole_v_v1.sorted.bam -n /home/jiajun/putaotai/aligned/version1/1sam/normal_b_v1.sorted.bam /home/jiajun/putaotai/aligned/version1/1sam/normal_v_v1.sorted.bam -t /home/jiajun/Exome-Agilent_V6_2022.bed -f /home/jiajun/genome/hg19.fa \
    --annotate ../../refFlat.txt \
    --access /home/jiajun/cnvkit/data/access-5k-mappable.hg19.bed \
    --output-reference v1newbed_2_control.cnn -d v1reference_2control_newbed/ \
    --diagram --scatter > v1no_normal_v_asref_newbed.log    
#cd
cd v1reference_2control_newbed
#export tables

#mole
/home/jiajun/cnvkit/cnvkit.py genemetrics mole_v_v1.sorted.cnr -s mole_v_v1.sorted.cns -t 0.4 -m 5 > mole_v_v1_2control_singlesegment-genes.txt
echo 'done'
