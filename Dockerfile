From johnnychen94/texlive
LABEL maintainer="Johnny Chen <Johnnychen94@hotmail.com>"

# install julia
ARG julia_version
ENV JULIA_VERSION $julia_version
RUN pip install jill && \
    jill install $julia_version --confirm && \
    pip uninstall jill -y

