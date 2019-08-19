From johnnychen94/texlive
LABEL maintainer="Johnny Chen <Johnnychen94@hotmail.com>"

# install julia
ARG julia_version
ENV JULIA_VERSION $julia_version
RUN echo Y | bash -c "$(curl -fsSL https://raw.githubusercontent.com/abelsiqueira/jill/master/jill.sh)" && \
    rm -f /opt/julias/*.tar.gz /opt/julias/page.html

# juliabook requires pythontex to 0.17-dev
RUN git clone https://github.com/gpoore/pythontex.git && \
    cd pythontex/pythontex && \
    echo 1 | python3 pythontex_install.py
