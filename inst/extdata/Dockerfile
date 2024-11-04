# Base image
FROM rocker/tidyverse:4.3.2
LABEL maintainer="cansav09@gmail.com"

# Install apt-getable packages to start
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils dialog
RUN apt-get install -y --no-install-recommends \
    libxt6 \
    libpoppler-cpp-dev \
    vim \
    libglpk40 \
    curl \
    gpg \
    bzip2 

################### Install FASTQC ###################
# set location
ENV FASTQC_LOC http://www.bioinformatics.babraham.ac.uk/projects/fastqc

# Download and install FastQC; replace low java memory requirement in fastq perl code
WORKDIR /usr/local
ADD ${FASTQC_LOC}/fastqc_v0.11.5.zip /tmp/
RUN unzip /tmp/fastqc_v0.11.5.zip && sed -i 's/Xmx250m/Xmx2048m/' FastQC/fastqc && chmod 755 FastQC/fastqc
ENV PATH /usr/local/FastQC/:$PATH

################## Install Bowtie2 ##################

ENV ZIP=bowtie2-2.4.1-linux-x86_64.zip
ENV URL=https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.4.1
ENV FOLDER=bowtie2-2.4.1-linux-x86_64
ENV DST=/home/biodocker/bin
ENV ULOCAL=/usr/local/bin

RUN mkdir -p $DST && \
    wget $URL/$ZIP/download -O $DST/$ZIP && \
    unzip $DST/$ZIP -d $DST && \
    rm $DST/$ZIP && \
    mv $DST/$FOLDER/* $DST && \
    rmdir $DST/$FOLDER

################## Install Samtools ##################

RUN apt-get update && apt-get -y upgrade && \
	apt-get install -y build-essential wget \
		libncurses5-dev zlib1g-dev libbz2-dev liblzma-dev libcurl3-dev && \
	apt-get clean && apt-get purge && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /usr/src

# Samtools
RUN wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2 && \
	tar jxf samtools-1.9.tar.bz2 && \
	rm samtools-1.9.tar.bz2 && \
	cd samtools-1.9 && \
	./configure --prefix $(pwd) && \
	make

RUN installGithub.r \
  FredHutch/pgmap

################# COPY over config files 
COPY config config/

WORKDIR /home

