FROM python:3

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install --no-dependencies airsimdroneracingvae

COPY . .

CMD [ "python", "/cmvae/eval_cmvae.py" ]