FROM containersol/consul-agent:0.6
ADD ./config /config/
ADD consul_0.6.0_web_ui.tar /ui/
ENTRYPOINT ["/bin/consul", "agent", "-server", "-bootstrap-expect", "1", "-config-dir=/config"]
