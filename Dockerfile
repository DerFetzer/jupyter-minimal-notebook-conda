FROM jupyter/minimal-notebook:b90cce83f37b

RUN conda install --quiet --yes \
    nb_conda \
    nb_conda_kernels \
    && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
