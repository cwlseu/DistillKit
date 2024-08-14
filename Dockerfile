FROM nvcr.io/nvidia/pytorch:24.06-py3

workdir /workspace
COPY requirements.txt .
RUN pip install wheel packaging ninja
RUN pip install flash-attn deepspeed
RUN pip install -r requirements.txt