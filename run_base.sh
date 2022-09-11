python -m thumt.bin.trainer \
  --input ./data/zh_en/corpus.tc.32k.zh.shuf ./data/zh_en/corpus.tc.32k.en.shuf \
  --vocabulary ./data/zh_en/vocab.32k.zh.txt ./data/zh_en/vocab.32k.en.txt \
  --model transformer \
  --validation ./data/zh_en/newsdev2017.tc.32k.zh \
  --references ./data/zh_en/newsdev2017.tc.en \
  --parameters=batch_size=8192,device_list=[0,1],update_cycle=2 \
  --hparam_set base \
  --half