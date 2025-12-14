import open_clip
import os

os.environ['HF_HOME'] = '/home/jinzhenxiong/Imagine-and-Seek/weights'
os.environ['HF_ENDPOINT'] = 'https://hf-mirror.com'


model, preprocess_train, preprocess_val = open_clip.create_model_and_transforms('hf-hub:laion/CLIP-ViT-g-14-laion2B-s12B-b42K')
tokenizer = open_clip.get_tokenizer('hf-hub:laion/CLIP-ViT-g-14-laion2B-s12B-b42K')