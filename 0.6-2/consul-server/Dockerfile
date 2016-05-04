FROM containersol/consul-agent:0.6-2
EXPOSE 53/udp
ADD ./config /config/
ENTRYPOINT ["/bin/consul", "agent", "-server", "-bootstrap-expect", "1", "-config-dir=/config"]
