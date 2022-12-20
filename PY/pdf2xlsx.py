import os
from tabula import read_pdf
import pandas as pd
from tqdm import tqdm

# disable warnings
import warnings
warnings.filterwarnings('ignore')


def pdf2df(file):
    c = 1
    df = pd.DataFrame()
    while True:
        try:
            pdf_data = read_pdf(file, pages=c)
            pdf = pd.DataFrame(pdf_data[-1])
            df = pd.concat([df, pdf], ignore_index=True)
            c += 1
        except:
            print('No more pages')
            break
    return df


path = './'
output_path = './output'

if not os.path.exists(output_path):
    os.makedirs(output_path)

pdf_files = [file for file in os.listdir(path) if file.endswith('.pdf')]
for file in tqdm(pdf_files, desc='Converting pdf to xlsx'):
    df = pdf2df(file)
    for i in range(len(df)):
        if df.iloc[i, 3] == 'PROVEMEN':
            df.iloc[i, 3] = 'IMPROVEMENT'
            df.iloc[i, 2] = df.iloc[i, 2][:-1]
    df.to_excel(output_path + '/' + file[:-4] + '.xlsx', index=False)
