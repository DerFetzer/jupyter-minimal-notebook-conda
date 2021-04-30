FROM jupyter/minimal-notebook:584f43f06586

RUN conda install --quiet --yes \
    nb_conda \
    nb_conda_kernels \
    && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
