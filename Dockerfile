FROM python:3.8
 
RUN apt-get update && apt-get install -y python3-tk
RUN apt-get update && apt-get install -y dbus-x11
WORKDIR /multilayer
 
COPY . /multilayer
 
ENV DISPLAY=:0
 
RUN pip install --upgrade pip && \
    pip install numpy==1.19.3 \
        matplotlib==3.3.2 \
        pandas==1.1.4 \
        scipy==1.5.4 \
        scikit-learn==0.23.2 \
        seaborn==0.11.0 \
        networkx==2.5 \
        python-louvain==0.14 \
        pillow==8.0.1
 
CMD ["python", "/multilayer/MULTILAYER-master/Multilayer.py"]
