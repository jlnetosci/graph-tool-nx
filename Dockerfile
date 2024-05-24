FROM tiagopeixoto/graph-tool:release-2.59

USER root

# install networkx
RUN pacman -Syu --noconfirm python-networkx

# use /tmp directory for matplotlib and access permissions
RUN mkdir -p /home/user/data/tmp \		
    && chmod 777 /home/user/data/tmp

# change .bashrc to define MPLCONFIGDIR as /home/user/data/tmp
COPY bashrc /home/user/.bashrc