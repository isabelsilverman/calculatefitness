FROM nfcore/base:latest
LABEL author="isabelsilverman" description="Docker image containing all requirements for the fitness effect pipeline"

COPY calcFreq.py /
COPY freq_barplots.R /

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a

RUN mkdir -p /export /data
ENV PATH /opt/conda/envs/isabelsilverman-fitnesseffect-1.0/bin:$PATH