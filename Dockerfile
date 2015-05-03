FROM vimagick/scrapyd

RUN apt-get update -y \
&& apt-get install -y libjpeg62-dev zlib1g-dev libfreetype6-dev liblcms1-dev python-dev wget git tesseract-ocr

RUN wget http://effbot.org/downloads/Imaging-1.1.7.tar.gz \
&& tar xzf Imaging-1.1.7.tar.gz \
&& cd Imaging-1.1.7; python setup.py install

RUN cd / \
&& git clone https://github.com/hajaalin/pytesser \
&& ln -s /pytesser /usr/lib/python2.7/dist-packages/pytesser


