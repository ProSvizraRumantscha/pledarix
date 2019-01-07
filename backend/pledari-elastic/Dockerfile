FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.3

COPY --chown=elasticsearch:elasticsearch init/* init/
RUN chmod +x init/*.sh init/*.py
RUN init/installPythonWithEs.sh

USER elasticsearch
ENTRYPOINT ["/usr/share/elasticsearch/init/docker-entrypoint.sh"]
CMD ["/usr/share/elasticsearch/bin/elasticsearch"]
