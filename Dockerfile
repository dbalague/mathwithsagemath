FROM dbalague/sagemath:9.0
LABEL maintainer="Daniel Balague Guardia <danielbalague@gmail.com>"

COPY --chown=sage:sage . /home/sage/
