From johnnychen94/texlive
LABEL maintainer="Johnny Chen <Johnnychen94@hotmail.com>"

# install julia
ARG julia_version
ENV JULIA_VERSION $julia_version
RUN echo Y | bash -c "$(curl -fsSL https://raw.githubusercontent.com/johnnychen94/jill/jc/ustc-mirror/jill.sh)" && \
    rm -f /opt/julias/*.tar.gz /opt/julias/page.html

