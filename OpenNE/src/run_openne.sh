#!/bin/sh
# gcn lap gf tadw need feature graph
conda activate openne
for model in deepwalk line node2vec grarep hope sdne;do 
    echo "====== running ${model} ======"
    python -m openne --model ${model} --local-dataset --root-dir  OpenNE/GeneDis --adjfile adj.adjlist --labelfile labels.txt --dim 64
done
conda activate Graph