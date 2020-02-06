FROM jupyter/minimal-notebook:414b5d749704

RUN conda install --quite --yes \
    nb_conda_kernels \
    && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
